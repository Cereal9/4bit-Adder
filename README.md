# 4-bit Adder Implementation on FPGA
This project aims to implement a 4-bit adder on an Altera Cyclone® V SE 5CSXFC6D6F31C6N Field Programmable Gate Array (FPGA). The 
4-bit adder is constructed by integrating four 1-bit full adders. Two fundamental VHDL concepts utilized in this project are 
instantiation and signal declaration.

**Instantiation** refers to incorporating a previously designed block in VHDL within the architecture of a higher-level entity. For 
instance, the full adder is initially designed in VHDL and then instantiated within the 4-bit Parallel Adder, which acts as a higher 
hierarchy VHDL design. The process of instantiating the FullAdder entity involves the following steps:
1. Both VHDL files, FullAdder and FourBitAdder, must be included in the project files.
2. In the higher-level VHDL file (FourBitAdder), the entity of the full adder is replicated as a COMPONENT after the architecture declaration and before the beginning of the architecture.
3. An instantiation of the FullAdder component is created after the architecture's begin statement, and port mapping is performed to connect inputs, outputs, or signals to the component's ports.
    1. A unique name is assigned to the instantiation.
    2. The component being instantiated is identified.
    3. PORT MAP specifies the connections between inputs, outputs, and signals of the current instantiation.

In the 4-bit adder file, four instances of full adders are instantiated and connected together to form the 4-bit adder. The 
schematic representation illustrates how these connections are made to achieve the desired functionality.

![4bitadder](https://github.com/Cereal9/4bit-Adder/assets/115047595/dd31e573-be66-41ba-b773-1a9f243a6d6b)

The outputs of each full adder, representing the sum, are assigned to individual LEDs to represent the result in binary. For 
example, if we add 0111 (7) and 0011 (3), the result 1010 (10) will be displayed on the LEDs, where each LED corresponds to a binary 
digit.

**Signal** declaration becomes necessary when the inputs/outputs of an instantiation are not directly connected to the final inputs/
outputs of the higher hierarchy entity. In such cases, signals are declared before the BEGIN keyword in the architecture section. 
When defining a signal, its type (such as STD_LOGIC, STD_LOGIC_VECTOR (range), or any other type) must be specified.

This 4-bit adder utilizes the first seven switches (0-7) as inputs, with switch 9 serving as the carry-in value. Switches 0 through 
3 represent the first 4-bit number, where 0 is the least significant bit (LSB) and 3 is the most significant bit (MSB). Similarly, 
switches 4 through 7 represent the second 4-bit number. In case of overflow, indicating a result that cannot be represented using 4 
bits, LED 9 will be illuminated to signal overflow (e.g., 8 + 8 = 0, but overflow LED is on).
