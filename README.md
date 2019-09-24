# PiBrot (UKY Edition)

PiBrot is a parallel Mandelbrot set race. The screen is divided in half
vertically with one MPI task drawing the left side image and an identical image
being drawn on the right side with N-2 MPI tasks, where N is the total number
of MPI tasks.

This repository is a fork of the original PiBrot code developed by Adam Simpson
(simpsonab@ornl.gov). Most of the code remains intact following his original
version, with slight modifications and updates as needed for the University of
Kentucky's Tiny Titan build.

## Screenshots

Initially a single button appears along with an oak leaf cursor. When ready to
start the race place the cursor over the start button and press `a`.

![alt text](https://raw.githubusercontent.com/AdamSimpson/PiBrot/master/images/start_screenshot.png "Start Screenshot")

It is easy to see that the right side image will be generated considerably
faster than the left. The speedup should approximately be N-2 times.

![alt text](https://raw.githubusercontent.com/AdamSimpson/PiBrot/master/images/mid_screenshot.png "Mid Screenshot")

The completed image on the right as the left attempts to catch up

![alt text](https://raw.githubusercontent.com/AdamSimpson/PiBrot/master/images/final_screenshot.png "Final Screenshot")

## Building and Running

On the University of Kentucky's Titan Titan cluster, just type `make` to build
and `make run` to run. This probably won't work out of the box on anyone else's
system.

## Controls

The PiBrot demo can be controlled via keyboard, mouse, and Xbox 360 controller.
To start the race, simply hover your cursor over the start button and press `A`
on either a keyboard or Xbox 360 controller. To quit, press `TAB` on a keyboard
or `BACK` on an Xbox 360 controller, hover the cursor over the terminal icon,
and press `A`.
