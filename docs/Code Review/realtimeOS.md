---
title: (코드 탐색) RTOS (realtime OS)
parent: Code Review
---

**(코드 탐색) RTOS (realtime OS)**
- Linux + real-time kernel
- kernel build configured for real-time use
   - isolating cores
   - disabling certain power-management/idle features
   - tuning interrupt handling
- aim for 
   - lower latency
   - more deterministic scheduling/interrupt behavior

## jetson code example

```
# built-in network
net = inference.segNet("fcn-resnet18-voc-320x320", net_argv)

# create buffer manager
buffers = segmentationBuffers(net, buffer_args)

# set input source
input_URI = "rtsp://jetson_emulator:554/segNet/sofa_cam/4k"
input  = utils.videoSource(input_URI, None) 
img = input.Capture()

# allocate buffer
buffers.Alloc(img.shape, img.format)

# run network
net.Process(img, ignore_class="void")

# generate the overlay
if buffers.overlay:
    net.Overlay(buffers.overlay, filter_mode=args.filter_mode)

# generate the mask
if buffers.mask:
    net.Mask(buffers.mask, filter_mode=args.filter_mode)

# composite the images
if buffers.composite:
    cudaOverlay(buffers.overlay, buffers.composite, 0, 0)
    cudaOverlay(buffers.mask, buffers.composite, buffers.overlay.width, 0)

# render the output image
output.Render(buffers.output)

# update the title bar
output.SetStatus("{:s} | Network {:.0f} FPS".format(args.network, net.GetNetworkFPS()))

# print out performance info
cudaDeviceSynchronize()
net.PrintProfilerTimes()

# compute segmentation class stats
if args.stats:
    buffers.ComputeStats()

# exit on input/output EOS
if not input.IsStreaming() or not output.IsStreaming():
    break
```
