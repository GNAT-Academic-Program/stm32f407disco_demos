# STM32F407 Discovery Demos (Ada)

Collection of Ada demos for the STM32F407 Discovery board.

## Dependencies
- **Alire** (required): https://alire.ada.dev/docs/#installation
- **OpenOCD** (optional, for programming): https://openocd.org/pages/getting-openocd.html

## Important (required before build)

You **must** register the GAP Alire index before building.
Without it, Alire cannot resolve the external crates required by these projects.

```sh
alr index --del gap
alr index --add git+https://github.com/GNAT-Academic-Program/gap-alire-index --name gap
```

## Build all

```sh
alr build
```

Program the board (OpenOCD), eg. blinky:

```sh
cd blinky
openocd -f interface/stlink.cfg -f target/stm32f4x.cfg -c "program bin/blinky verify reset exit"
```
