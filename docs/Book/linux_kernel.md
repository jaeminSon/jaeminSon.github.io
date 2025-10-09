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

- linux: monolithic kernel <-> windows: microkernel
