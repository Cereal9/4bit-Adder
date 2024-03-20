# 4bit-Adder
In this project a 4-bit adder is going to be implemented in the FPGA. This 4-bit adder is constructed using 4 1-bit full adders 
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

Signal declaration is often required when the input/output of an instantiation is not connected to the final input/output of the 
higher hierarchy Entity. That is, that the connections that the instantiation required are only internal. The signals are declared 
in the same section as the components before BEGIN of the architecture. When defining a signal, it has to be specified what
type is it (STD_LOGIC, STD_LOGIC_VECTOR (range), or any other type).



 
