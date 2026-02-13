# STM32F407 Discovery Demos (Ada)

Before building any demo, add the GAP Alire index (required):

```sh
alr index --del gap
alr index --add git+https://github.com/GNAT-Academic-Program/gap-alire-index --name gap
```

Then build/run from any demo folder (`blinky`, `blinky_tasks_0`, `blinky_protected_0`):

```sh
alr build
alr run
```