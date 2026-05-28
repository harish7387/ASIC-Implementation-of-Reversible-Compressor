# RTL-to-GDSII Reversible 4:2 Compressor with Ancilla Optimization

## 📌 Overview

This project presents the RTL-to-GDSII implementation of a high-performance reversible 4:2 compressor with ancilla optimization for low-power VLSI and quantum computing applications.

The design is implemented using Verilog HDL and follows the complete ASIC design flow including RTL design, functional verification, synthesis, Physical Design, Static Timing Analysis (STA), and GDSII generation using Cadence EDA tools.

The reversible compressor is constructed using cascaded reversible full adders and optimized using ancilla signal reuse techniques to reduce hardware overhead and garbage outputs.

---

## 🚀 Key Features

* Reversible 4:2 compressor architecture
* Ancilla optimization using intermediate signal reuse
* Verilog HDL based RTL implementation
* Functional verification for all 32 input combinations
* ASIC synthesis using Cadence Genus
* Physical Design using Cadence Innovus
* Static Timing Analysis (STA)
* Complete RTL-to-GDSII implementation flow
* Low-power and quantum computing oriented design

---

## 🛠️ Tools & Technologies

* Verilog HDL
* Xilinx Vivado
* Cadence Xcelium
* Cadence Genus
* Cadence Innovus
* Linux
* TCL Scripting

---

## 📂 Repository Structure

```text
RTL/
│── reversible_4_2_compressor.v
│── reversible_full_adder.v
│── feynman_gate.v
│── toffoli_gate.v

Testbench/
│── tb_reversible_4_2_compressor.v

Synthesis/
│── genus_scripts/
│── reports/

Physical_Design/
│── floorplan/
│── placement/
│── routing/
│── timing_reports/

Simulation/
│── waveforms/
│── screenshots/

Docs/
│── project_report.pdf

README.md
```

---

## ⚙️ Design Flow

```text
RTL Design
   ↓
Functional Simulation
   ↓
ASIC Synthesis
   ↓
Floorplanning
   ↓
Placement
   ↓
Clock Tree Synthesis (CTS)
   ↓
Routing
   ↓
Static Timing Analysis (STA)
   ↓
GDSII Generation
```

---

## 🔍 Functional Verification

The design was verified using exhaustive simulation for all 32 input combinations:

```text
A + B + C + D + Cin = Sum + 2×Carry + 4×Cout
```

Behavioral simulation was performed using Xilinx Vivado and Cadence Xcelium.

---

## 📊 ASIC Implementation

### Synthesis

* Tool: Cadence Genus
* Technology: Standard Cell Library
* Metrics analyzed:

  * Timing
  * Area
  * Power

### Physical Design

* Tool: Cadence Innovus
* Steps completed:

  * Floorplanning
  * Placement
  * CTS
  * Routing
  * Timing Closure

---

## 🧠 Reversible Logic Concepts Used

### Feynman Gate (CNOT)

```text
P = A
Q = A XOR B
```

### Toffoli Gate (CCNOT)

```text
P = A
Q = B
R = (A AND B) XOR C
```

---

## 📈 Applications

* Quantum Computing
* Low-Power VLSI Systems
* Quantum Arithmetic Units
* Reversible Multipliers
* Energy-Efficient Computing
* Adiabatic CMOS Design

---

## 👨‍💻 Author

**Yellu Harish Reddy**
Electronics & Communication Engineer | VLSI Engineer | Physical Design

* LinkedIn: linkedin.com/in/yellu-harish-reddy
* GitHub: github.com/harish7387

---

## 📜 License

This project is intended for academic and research purposes.

