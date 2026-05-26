# SAYEH Processor

## Overview

SAYEH is a 16-bit educational processor implemented in Verilog HDL.

## Features

- 16-bit datapath
- FSM based controller
- Register file
- ALU
- Program Counter
- Instruction Register
- Status Register
- Window Pointer

## Folder Structure

```text
rtl/ -> RTL design files
tb/  -> Testbench files
```

## Simulation

### Icarus Verilog

```bash
iverilog -o sim rtl/*.v tb/sayeh_tb.v
vvp sim
```

## Authors

- John David
- L. Uma
