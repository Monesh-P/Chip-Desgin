# 📘 Week 2 Progress Report

**Project:** Sparse Systolic Array for AI Acceleration and Matrix Computation
**Team:** Circuit Crafters
**Program:** IIIT-B Chip Design Studio

---

## 🔹 Objective

* Extend the single Processing Element (PE) into a **2×2 dense systolic array**
* Validate correct **systolic dataflow** for matrix multiplication
* Verify multi-cycle accumulation behavior through simulation

---

## 🔹 Work Done

### 1. Dense 2×2 Systolic Array Design

* Instantiated **four identical MAC-based Processing Elements**
* Implemented a **2×2 dense systolic array architecture**
* Matrix A values are streamed horizontally and Matrix B values vertically
* Each PE computes one output element ( C_{i,j} )

### 2. Control Logic

* Introduced a **cycle-controlled enable mechanism**
* Ensured accumulation occurs only for the required number of computation cycles
* Prevented repeated or unintended accumulation beyond valid cycles

### 3. Verification

* Developed a behavioral testbench for 2×2 matrix multiplication
* Applied known matrix inputs over multiple clock cycles
* Observed:

  * Partial sums after the first cycle
  * Final correct accumulated outputs after the second cycle

---

## 🔹 Code Implemented

| File Name           | Description                                     |
| ------------------- | ----------------------------------------------- |
| `pe_mac.v`          | Reused MAC-based Processing Element from Week-1 |
| `systolic_2x2.v`    | RTL implementation of 2×2 dense systolic array  |
| `systolic_2x2_tb.v` | Testbench verifying dense systolic dataflow     |

📂 All files are available in the `code/` directory.

---

## 🔹 Simulation Summary

* Tool: **Vivado XSIM**
* Matrix inputs streamed over **two clock cycles**
* Intermediate waveform values correspond to valid partial sums
* Final outputs matched expected matrix multiplication results

  * Example: `c00 = 1×5 + 2×7 = 19 (0x0013)`

---

## 🔹 Challenges Faced

* Understanding temporal sequencing in systolic dataflow
* Managing accumulation timing across clock cycles
* Interpreting partial sums during intermediate simulation cycles

---

## 🔹 Key Learnings

* Systolic arrays rely on **time-based data movement**, not static matrices
* Each PE accumulates results over multiple cycles
* Separating **datapath (MAC)** and **control (enable)** simplifies future optimizations

---

## 🔹 Outcome

* Successfully implemented and verified a **2×2 dense systolic array**
* Established a functional baseline design for sparsity comparison

---

## 🔹 Next Steps

* Introduce **sparsity-aware control logic**
* Compare dense and sparse execution behavior
* Analyze computational efficiency improvements

---
