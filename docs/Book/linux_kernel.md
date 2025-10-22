---
title: Linux Kernel Development (3rd edition)
parent: Book
---
# 부팅시 일어나는 일 (번외)
1. Power 버튼 누름.
2. Motherboard 가 power supply 에 신호 보냄.
3. (power supply unit 이 power good 판정을 내리면) CPU 가 registers 리셋 함.
4. Firmware (BIOS or UEFI) 가 저장된 주소로 jump.
5. Firmware 가 하드웨어 체크 (memory tests, chipset setup, and peripheral detection)
6. Firmware 가 boot device (disk, USB, network) 를 찾아내고, boot sector (boot device 의 첫 sector) 를 메모리에 로드함.
7. Boot sector 는 나머지 Bootloader 를 로드함.
8. Bootloader (e.g., GRUB) 가 다음을 실행함.
   - boot menu 표시.
   - Linux kernel image (vmlinuz) 메모리에 로드.
   - initramfs 메모리에 로드.
   - kernel parameter 를 전달하고 kernel entry point 로 jump.
9. CPU 가 architecture-specific assembly (e.g., arch/x86/kernel/head_64.S) 를 실행함.
   - CPU mode (Protected / Long mode for 64-bit)
   - Memory mappings
   - Page tables
   - Stack
   - Segment registers
   - 최종적으로 init/main.c 의 start_kernel() 로 jump
10. start_kernel() 에서 다음을 초기화 함.
   - Memory management (page allocator, zones)
   - Interrupt handling
   - Scheduler
   - Device drivers
   - Filesystems
   - 마지막으로 user-space process 실행함 (/sbin/init 혹은 systemd)
11. init, systemd
   - background services 및 login sessions 기동

# Chapter 1 Introduction to the Linux Kernel
- Interaction: user -> clib -> system call -> kernel -> hardware
   - printf() clib == many features + write() system call
   - open() clib ~= open() system call
   - strcpy() clib: no system call

- processor 는 시점에 상관없이 다음 3 가지 중 하나의 코드를 실행
   - user space
   - kernel space (process context)
   - kernel space (interrupt context)

- process: independent execution context
   - own virtual memory space, open files, stack, heap, CPU state
   - 각 process 는 task_struct 로 표현됨.
- thread: lightweight unit of execution within a process
   - 같은 process 내의 thread 와 메모리, 자원 공유.
   - 각자 execution context 를 갖음 (stack 과 CPU registers 는 따로 갖음).
- 프로세스는 1개 이상의 thread 를 가짐.
- linux 에서 thread 는 사실 process 로 구현되며, 다른 process 와 자원을 소유하는 process 임.

- linux: monolithic kernel <-> windows: microkernel

# Chapter 2 Getting Started with the Kernel
- Kernel Source Tree (dirname:role)
   - arch: Architecture-specific source
   - block: Block I/O layer
   - crypto: Crypto API
   - Documentation: Kernel source documentation
   - drivers: Device drivers
   - firmware: Device firmware needed to use certain drivers
   - fs: The VFS and the individual filesystems
   - include: Kernel headers
   - init: Kernel boot and initialization
   - ipc: Interprocess communication code
   - kernel: Core subsystems, such as the scheduler
   - lib: Helper routines
   - mm: Memory management subsystem and the VM
   - net: Networking subsystem
   - samples: Sample, demonstrative code
   - scripts: Scripts used to build the kernel
   - security: Linux Security Module
   - sound: Sound subsystem
   - usr: Early user-space code (called initramfs)
   - tools: Tools helpful for developing Linux

- Kernel code 의 특징
   - C library 나 standard C headers 사용 불가.
   - GNU C 코드로 작성됨.
   - memory protection 없음.
   - floating-point operations 사용 권장되지 않음.
   - small per-process fixed-size stack 을 지님.
   - synchronization, concurrency 에 유의해야함.
   - Portability 를 유지해야함.

# Chapter 3 Process Management
- 각 process 는 다음을 가지고 있음.
   - a unique program counter
   - process stack
   - set of processor registers
- 새로운 process 는 fork() 로 생겨남.
   - 모든 process 는 하나의 parent 를 가짐.
   - 모든 process 는 init (pid=1) 의 자손.
   - init 의 process descriptor 는 statically allocated 된 init_task 주소에 저장됨.
   - return 값으로 parent 는 child 의 pid, child 는 0 을 받음.
- process 는 exit() system call 로 종료됨.
   - 먼저 process 의 resources 가 free 됨
   - process 는 EXIT_ZOMBIE 상태가 됨.
   - process 의 parent 에게 SIGCHLD 시그널 전송
   - process children 들의 parent 가 process 의 parent 혹은 init 혹은 systemd 로 갱신됨.
- list of processor descriptor
   - doubly linked list
   - 각 entity: task_struct 로 state, priority, pid 등의 정보 가지고 있음.

<img src="/data/linux/process.png" width="600" />

- fork() 시 Copy-on-Write (COW)
   - Parent 와 child 가 같은 physical pages 를 공유함.
   - 두 page tables 는 read-only 로 세팅됨.
   - 어느 쪽에서든 write 가 발생하면 page fault 발생.
   - 새로운 페이지를 만들고 데이터를 복사함.

- kernel thread
    - kernel space 에만 존재.
    - address space 가 NULL
    - schedulable and preemptable
    - e.g. flush, ksoftirqd

# Chapter 4 Process Scheduling
- real-time processes vs. normal processes

| Scheduler class    | Typical policies                           | Priority range (낮을수록 우선순위 높음)       | Notes                                    |
| ------------------ | ------------------------------------------ | ---------------------------------------- | ---------------------------------------- |
| **Real-time (RT)** | `SCHED_FIFO`, `SCHED_RR`                   | 1–99                                     | rt_priority 가 높은 것이 항상 먼저 실행됨 |
| **CFS (fair)**     | `SCHED_OTHER`, `SCHED_BATCH`, `SCHED_IDLE` | 100–139 (user-space `nice` = –20 to +19) | weight = $1024 / 1.25^{nice}$ 에 비례하여 time-slice 배정|

- equal-weight 시 time-slice 계산

| Runnable tasks | Time slice per task | Effective latency (config) |
| -------------- | ------------------- | ----------------- |
| 2              | 24 ms               | 48 ms             |
| 4              | 12 ms               | 48 ms             |
| 8              | 6 ms                | 48 ms             |
| 16             | 6 ms (min reached)  | 96 ms (16×6ms)    |
| 32             | 6 ms (min reached)  | 192 ms (32×6ms)   |

- normal processes
   - 가장 vruntime = “how much CPU the task has already used relative to its weight” 이 적은 process 를 실행함.
   - red-black tree 로 가장 왼쪽 (least vruntime) node 접근 가능
   - blocking function (e.g., read() on an empty pipe or futex_wait()) 호출시, rb tree 에서 제거되고 해당 wait-queue (e.g. I/O queue, futex queue) 에 추가됨.
   - Event (I/O done, lock released, timer expired) 발생시, 해당 wait-queue 에서 제거되고, rb tree 에 추가됨.

- schedule() 함수 안에서 context_switch() 가 일어남
   - 현 process 의 CPU registers, kernel stack 저장.
   - 다음 process 의 상태 로드.

# Chapter 5 System Calls
- user-space <-> c library (glibc, musl) <-> system call interface <-> system call handler <-> kernel implementation
- getpid() 의 kernel-side implementation: **asmlinkage long sys_getpid(void)**
   - asmlinkage: kernel-specific macro (compiler 시 'All function arguments are passed on the stack, not in CPU registers.')
   - kernel 의 return type 은 long
   - naming convention: sys_* 
- sys_call_table: sys_call 함수의 numbering 이 저장되어있음.
- user-space memory 와 kernel-space memory 는 분리되어있고, kernel-space 에서 다음 함수를 사용하여 메모리를 복사함.
   - copy_from_user()
   - copy_to_user()

# Chapter 7 Interrupts and Interrupt Handlers
- terminology
   - irq: interrupt request
   - isr: interrupt service routine
   - idt: interrupt descriptor table
- hardware -> electrical signal → interrupt controller (e.g. APIC or PIC) → irq → cpu → idt → kernel interrupt handler → device driver → isr → return to normal execution
- interrupt context 는 process 와 관계 없음.
- Top half
    - Runs immediately when the interrupt occurs.
    - Handles urgent, time-critical work (e.g., reading device status, clearing the interrupt).
    - Runs in interrupt context (no sleeping allowed).
    - Must finish very quickly.
- Bottom half
    - Runs later, after the top half finishes.
    - Handles deferred, longer tasks (e.g., processing data, waking up processes).
    - Runs in softirq/tasklet/workqueue context.
- hardware driver loading/unloading 시 interrupt handler 및 interrupt line 관리
   - driver load 시: request_irq()
   - driver unload 시: free_irq()
- shared interrupt line: 여러 device 가 같은 irq 사용.
   - interrupt 발생 시, 모든 handler 호출.
   - 각 hanlder 는 담당하는 device 의 status register 를 보고 해당 device 가 interrupt 를 발생시켰는지 파악.
   - 다른 device 가 발생시킨 interrupt 인 경우, 처리하지 않고 IRQ_NONE return.
- interrupt 가 disable 되는 경우
   - interrupt top half 도중
   - critical kernel data 에 접근할때
   - context switch 혹은 scheduler operations 도중
   - local_irq_disable() 혹은 spin_lock_irqsave() 호출시
- kernel 은 특정 device 에서 interrupt 를 받은 경우, repeated interrupt 를 막기 위해 interrupt line 을 disable 함.

# Chapter 8 Bottom Halves and Deferring Work
- Top half
   - 최소한의 작업만 진행.
   - e.g. hardware 에 interrupt 신호 받았음을 알리는 동작.
- Bottom half
   - 당장이 아닌 미래로 작업을 미룸 (interrupt 가 켜져있을때 실행)

| Mechanism     | Runs in                              | Concurrency                                                       | Use for                                                      |
| ------------- | ------------------------------------ | ----------------------------------------------------------------- | ------------------------------------------------------------ |
| **Softirq**   | Interrupt context                    | Can run on multiple CPUs at once                                  | High-frequency, time-critical tasks (e.g. networking)        |
| **Tasklet**   | Interrupt context (built on softirq) | Serialized per tasklet type (never runs concurrently on another CPU) | Lightweight, driver-specific deferred work                   |
| **Workqueue** | Process context (kernel thread)      | Can sleep/block                                                   | Longer or blocking tasks (e.g. disk I/O, user notifications) |

- softirq
   - 같은 CPU 에서 돌고 있는 다른 softirq 를 preempt 하지 않음.
   - interrupt context 에서 실행되어, sleep, block 불가.
   - 대게 interrupt handler 에 의해 softirq 가 pending 으로 marking 됨.
   - 다음 상황에 __do_softirq() 가 호출됨.
       - On return from a hardware interrupt
       - By the ksoftirqd kernel thread
       - By code that explicitly runs pending softirqs (e.g., networking)
   - 2개의 subsystems 만 직접 softirq 사용 (나머지는 tasklet 사용).
       - **networking (e.g. NET_RX_SOFTIRQ, NET_TX_SOFTIRQ)**
       - **block I/O (e.g. BLOCK_SOFTIRQ)** 

- tasklet
   - normal-priority tasklets 과 high-priority tasklets 는 다른 linked list, function 사용.
   - interrupt context 에서 실행되어, sleep, block 불가.

- ksoftirqd
   - process context: sleep, schedule 가능.
   - softirqs 가 CPU 를 독점하지 않도록 조율.
   - 보통 CPU 당 한개의 ksoftirqd 기동.