# 📘 Week 1 Progress Report

**Project:** Sparse Systolic Array for AI Acceleration and Matrix Computation
**Team:** Circuit Crafters
**Program:** IIIT-B Chip Design Studio

---

## 🔹 Objective

* Set up the RTL design and simulation environment using **AMD Vivado**
* Design the **fundamental Processing Element (PE)** for the proposed systolic array
* Introduce basic sparsity awareness using control-based zero skipping

---

## 🔹 Work Done

### 1. Tool Setup

* Installed and configured **AMD Vivado**
* Familiarized with RTL design flow, elaboration, and behavioral simulation
* Learned waveform analysis and RTL schematic interpretation

### 2. Processing Element (PE) Design

* Designed a **MAC-based Processing Element** using Verilog HDL
* Inputs:

  * `a[7:0]`, `b[7:0]` – multiplier operands
  * `valid` – control signal for accumulation
* Output:

  * `acc[15:0]` – accumulated MAC result
* The `valid` signal enables or disables accumulation, modeling **zero-skipping behavior**

### 3. Verification

* Created a behavioral **testbench** to verify PE functionality
* Verified:

  * Correct multiply–accumulate operation when `valid = 1`
  * Accumulator hold behavior when `valid = 0`
* Simulation waveforms matched expected results

---

## 🔹 Code Implemented

| File Name     | Description                                                     |
| ------------- | --------------------------------------------------------------- |
| `pe_mac.v`    | MAC-based Processing Element with valid-controlled accumulation |
| `pe_mac_tb.v` | Testbench verifying accumulation and zero-skipping behavior     |

📂 All RTL and testbench files are available inside the `code/` directory.

---

## 🔹 Simulation Summary

* Tool: **Vivado XSIM**
* Example case:

  * `a = 2`, `b = 3`, `valid = 1` → accumulator updates to `0x0006`
  * `valid = 0` → accumulator holds previous value
* Confirms correct MAC functionality and control-based sparsity modeling

---

## 🔹 Challenges Faced

* Initial learning curve in Vivado RTL flow and schematic views
* Understanding hexadecimal accumulator values in waveforms
* Abstracting sparsity behavior without implementing full sparse formats

---

## 🔹 Key Learnings

* The **Processing Element (PE)** is the fundamental building block of systolic arrays
* Sparsity can be modeled effectively using **control logic** without modifying datapath
* RTL schematics and simulation waveforms provide valuable insight into hardware behavior

---

## 🔹 Outcome

* Successfully implemented and verified a **sparsity-aware MAC-based PE**
* Established a strong foundation for building multi-PE systolic array architectures in subsequent weeks

---

## 🔹 Next Steps

* Add automatic **zero-detection logic**
* Replicate the PE to form a **2×2 systolic array**
* Begin sparse dataflow control design
* Perform synthesis and resource analysis

---

