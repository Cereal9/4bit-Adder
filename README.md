# 4bit-Adder
In this project a 4-bit adder is going to be implemented in the FPGA. This 4-bit adder is constructed using 4 1-bit full adders on a
Field Programmable Gate Arrays (FPGA). The board used to implement this 4-bit adder is the Altera Cyclone® V SE 5CSXFC6D6F31C6N 
device. Two VHDL concepts are required for this project. 
- Instantiation
- Singals

Instantiation refers to the action of calling a previously designed block in VHDL from the
architecture of a higher hierarchy. For example, the full adder is going to be designed in VHDL
and instantiated from the 4-bit Parallel Adder, which is a higher hierarchy VHDL design.
Instantiation of the FullAdder entity requires the following steps:
1. Both VHDL files the FullAdder and the FourBitAdder to be included in the project files.
2. In the higher hierarchy VHDL file, the FourBitAdder, the entity of the full adder is copied as a COMPONENT after the architecture declaration and before begin of the architecture
3. Create an instantiation of the FullAdder component after the architecture begin and do a port mapping. The port mapping is carried out by declaring what inputs, outputs, or signals are going to connect to the port of the component.
    1. At the beginning of the line, you must provide a name for the instantiation.
    2. After that it is required to define what component is being instantiated.
    3. Then the PORT MAP specifies the inputs, outputs, and signals connected to the current instantiation.

In the 4 bit adder file, you can see there are 4 instatiation of full adders that are then connected together to create a 4 bit 
adder. Visually we can see in Figure 1. how they connect when the connection are made correctly. 
![4bitadder](https://github.com/Cereal9/4bit-Adder/assets/115047595/dd31e573-be66-41ba-b773-1a9f243a6d6b)


Signal declaration is often required when the input/output of an instantiation is not connected to the final input/output of the 
higher hierarchy Entity. That is, that the connections that the instantiation required are only internal. The signals are declared 
in the same section as the components before BEGIN of the architecture. When defining a signal, it has to be specified what
type is it (STD_LOGIC, STD_LOGIC_VECTOR (range), or any other type).

This 4 bit adder uses the first 7 switches (0-7) as the inputs and uses switch 9 as the carry in value. Swithches 0, 1, 2, and 3 are 
used for the first 4 bit number with 0 being the least signicant bit (LSB) and 3 being the most significant bit. The same goes for 
switches 4-7. Switch 9 is our carry in bit, which means that if we have this switch high (lets assume both A and B are 0) the result
will be a 1. When there is a overflow meaning that the result cannot be represented using 4 bits, then LED 9 will be set high which will indicate overflow (8+8=0 but overflow LED is on). 


 
