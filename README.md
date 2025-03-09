# 4-Bit Adder Implementation on FPGA

## Overview
This project demonstrates how to build a **4-bit adder** using an **Altera Cyclone® V FPGA**. The adder is made by connecting four **1-bit full adders** together. This project introduces important VHDL concepts like **instantiation** and **signal declaration**.

## Key VHDL Concepts

### Instantiation
Instantiation means using a smaller design (like a **FullAdder**) inside a bigger one (like a **FourBitAdder**). The steps to do this in VHDL are:

1. **Include the necessary VHDL files**  
   Both `FullAdder.vhd` and `FourBitAdder.vhd` must be in the project.

2. **Declare the FullAdder as a Component**  
   Inside `FourBitAdder.vhd`, the FullAdder component is **defined** before the `BEGIN` statement.

3. **Use the FullAdder in the design**  
   - Give each instance a unique name.
   - Identify the component as `FullAdder`.
   - Connect the inputs and outputs using **PORT MAP**.

### Signal Declaration
Signals help connect different parts of the design. In this project:
- **Internal signals** pass values between the full adders.
- **Signal types** like `STD_LOGIC` and `STD_LOGIC_VECTOR` are used.

## How It Works

- **Inputs:** The first seven switches (`SW[0-7]`) represent two 4-bit numbers. `SW[9]` is the carry-in.
- **Outputs:** The result appears on LEDs, showing the sum in binary.
- **Overflow Handling:** If the sum is too large for 4 bits, `LED9` turns on.

### Schematic
The diagram below shows how the **4-bit adder** is connected:

![4-bit Adder Schematic](https://github.com/Cereal9/4bit-Adder/assets/115047595/dd31e573-be66-41ba-b773-1a9f243a6d6b)

## Testing & Simulation
### 1. Simulating the Full Adder
- A testbench checks if the **FullAdder** works correctly for all input values.

### 2. Simulating the 4-Bit Adder
- The **FourBitAdder** is tested using different number combinations:
  - Positive + Positive
  - Negative + Positive
  - Negative + Negative
- The results are compared with manual calculations.

### 3. FPGA Testing
- **Pin Assignments:** Switches act as inputs, and LEDs display the sum.
- The FPGA is programmed and tested by flipping switches and checking the LED output.

## Possible Improvements
- **Seven-Segment Display:** Show the sum on a **seven-segment display** instead of LEDs.
- **Carry Look-Ahead Adder:** Speed up the adder by using a more advanced design.

## Requirements
- **Quartus Prime** (FPGA development software)
- **Altera Cyclone V FPGA**
- **Basic VHDL knowledge**

## Conclusion
This project shows how to build a **4-bit adder** using VHDL and an FPGA. It covers essential digital design concepts like **hierarchical design**, **instantiation**, and **signal management** in a simple way.
