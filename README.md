# RISC CPU Project

## Overview

This project implements a RISC (Reduced Instruction Set Computer) CPU in Verilog using Xilinx Vivaldo. The CPU is designed with modularity in mind, with each stage of the pipeline implemented in separate Verilog modules. This project is a great starting point for understanding CPU design and the RISC architecture.

## Project Structure

The project consists of the following Verilog files:

- `ALU.v`: Implements the Arithmetic Logic Unit, responsible for performing arithmetic and logical operations.
- `Execution stage.v`: Handles the execution stage of the pipeline, where instructions are executed.
- `Instruction Decode.v`: Responsible for decoding instructions fetched from memory.
- `Instruction Fetch.v`: Fetches instructions from memory.
- `Memory Access.v`: Manages memory read and write operations.
- `Programcounter selector.v`: Selects the next value of the program counter.
- `Register file.v`: Implements the register file, which stores CPU registers.
- `RISC CPU Top Module.v`: The top-level module that integrates all components of the CPU.
- `Writeback stage.v`: Handles the write-back stage, where results are written back to the register file.
