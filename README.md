# 4-bit-Ripple-Carry-Adder
Implementation of a 4-bit ripple carry adder in Verilog HDL,
built from hierarchical half adder and full adder modules.
Simulated using Icarus Verilog with waveform verification in GTKWave

Binary addition : works on the same carry principle as decimal addition.
When two 1-bit values are added, the result can exceed 1 bit —
the overflow becomes a carry into the next bit position.

Half Adder : takes two single-bit inputs (A, B) and produces
Sum and Carry outputs with no carry input

Full Adder : extends this by accepting a carry input (Cin),
allowing it to be chained with other adders

Ripple Carry Adder : chains four full adders. The carry output
of each stage feeds the carry input of the next

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

Sum = A XOR B  
Carry = A AND B

Modules : 
- half_adder.v — fundamental 1-bit adder, no carry input
- full_adder.v — instantiates two half adders + OR gate
- rca_4bit.v — instantiates four full adders, wires carries

## Block Diagram

![Block Diagram](assets/RippleCarryAdder.png)

## Waveform Output

![Waveform](assets/waveform.png)
