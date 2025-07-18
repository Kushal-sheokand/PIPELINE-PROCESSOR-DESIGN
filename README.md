# PIPELINE-PROCESSOR-DESIGN
COMPANY: CODTECH IT SOLUTIONS

NAME: Kushal

INTERN ID: CITS0D190

DOMAIN: VLSI

DURATION: 6 WEEEKS

MENTOR: NEELA SANTOSH

# 4-Stage Pipelined Processor in Verilog

## Project Overview

This project presents a simple *4-stage pipelined processor* implemented in *Verilog HDL. The processor supports a small custom instruction set with basic operations such as **ADD, **SUB, and **LOAD. The pipeline architecture is designed to reflect core concepts used in modern RISC processors, including **instruction fetch, decode, execution, and write-back* stages.

The primary objective of this project is to demonstrate instruction-level parallelism using pipelining and provide a basic functional processor design that simulates how multiple instructions flow through stages simultaneously.

## 🚀 Pipeline Stages

The processor is divided into the following *4 pipeline stages*:

1. *Instruction Fetch (IF)*: Fetches the instruction from the instruction memory based on the current program counter.
2. *Instruction Decode (ID)*: Decodes the opcode and register addresses, preparing operands for execution.
3. *Execute (EX)*: Performs arithmetic or memory operations based on the opcode.
4. *Write Back (WB)*: Stores the result back into the register file.

Each stage uses pipeline registers to hold intermediate data and pass it to the next stage during the rising edge of the clock.
Output-
# 4-Stage Pipelined Processor in Verilog

## 📘 Project Overview

This project presents a simple *4-stage pipelined processor* implemented in *Verilog HDL. The processor supports a small custom instruction set with basic operations such as **ADD, **SUB, and **LOAD. The pipeline architecture is designed to reflect core concepts used in modern RISC processors, including **instruction fetch, decode, execution, and write-back* stages.

The primary objective of this project is to demonstrate instruction-level parallelism using pipelining and provide a basic functional processor design that simulates how multiple instructions flow through stages simultaneously.

---

## 🚀 Pipeline Stages

The processor is divided into the following *4 pipeline stages*:

1. *Instruction Fetch (IF)*: Fetches the instruction from the instruction memory based on the current program counter.
2. *Instruction Decode (ID)*: Decodes the opcode and register addresses, preparing operands for execution.
3. *Execute (EX)*: Performs arithmetic or memory operations based on the opcode.
4. *Write Back (WB)*: Stores the result back into the register file.

Each stage uses pipeline registers to hold intermediate data and pass it to the next stage during the rising edge of the clock.
Output-
<img width="1387" height="403" alt="Screenshot 2025-07-18 231525" src="https://github.com/user-attachments/assets/1a2351e3-b993-4081-9751-0c6f488c1069" />
