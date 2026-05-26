# SAYEH Processor – Verilog HDL Implementation

## Overview

SAYEH is a simple 16-bit educational processor architecture implemented using Verilog HDL.  
This project demonstrates the design and implementation of a processor datapath, controller FSM, ALU operations, memory interfacing, and simulation environment.

The architecture is designed for learning:

- Computer Architecture
- RTL Design
- Processor Design
- FSM-Based Control Units
- FPGA/ASIC Design Flow

---

## Processor Features

- 16-bit Datapath
- 16-bit Address Bus
- Register File Architecture
- Arithmetic Logic Unit (ALU)
- Program Counter (PC)
- Instruction Register (IR)
- Status Register
- Window Pointer
- FSM-Based Controller
- Memory Read/Write Support
- Shadow Instruction Support

---

## Supported Operations

### Arithmetic Instructions
- ADD
- SUB
- MUL
- CMP

### Logical Instructions
- AND
- OR
- NOT
- SHL
- SHR

### Data Transfer Instructions
- MVR
- LDA
- STA
- MIL
- MIH

### Branch Instructions
- BRZ
- BRC
- JPR
- JPA

---

## Project Structure

```text
SAYEH-Processor/
│
├── rtl/
│   ├── datapath.v
│   ├── controller.v
│   └── sayeh_top.v
│
├── tb/
│   ├── sayeh_tb.v
│   └── instructions.mem
│
├── README.md
│
└── docs/
```

---

## Simulation

### Using Icarus Verilog

```bash
iverilog -o sim rtl/sayeh_top.v tb/sayeh_tb.v
vvp sim
```

### Using ModelSim

```bash
vlog rtl/*.v
vlog tb/sayeh_tb.v
vsim sayeh_tb
run -all
```

---

## Example Instruction Memory

```text
f003
f100
f404
f500
b10f
```

---

## Applications

- Educational CPU Design
- RTL Design Practice
- FPGA Learning
- Processor Architecture Study
- FSM Controller Design
- Digital System Design

---

## Future Improvements

- Pipeline Architecture
- Interrupt Handling
- UART/SPI Peripheral Interface
- Cache Memory Support
- FPGA Deployment
- Assembly Program Support

---

## License

This project is intended for educational and academic purposes.