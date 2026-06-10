# Gate_Hardware_Logic

# XOR Logic Hardware Implementation using Arduino UNO

## Overview

This project implements the XOR (Exclusive-OR) logic function obtained from the analysis of GATE EC 2014 Question 37.

The original logic circuit simplifies to:

\[
Y = A\bar{B} + \bar{A}B
\]

which represents the XOR function.

The hardware realization uses:

- Arduino UNO
- Two Push Buttons
- LED Indicator
- Breadboard
- Pull-down Resistors
- Jumper Wires

The Arduino reads two digital inputs and generates the XOR output on an LED.

---

## Boolean Expression

\[
Y = A\bar{B} + \bar{A}B
\]

Truth Table:

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

## Components Required

| Component | Quantity |
|------------|-----------|
| Arduino UNO | 1 |
| Breadboard | 1 |
| Push Buttons | 2 |
| LED | 1 |
| 220Ω Resistor | 1 |
| 10kΩ Resistors | 2 |
| Jumper Wires | As Required |

---

## Hardware Connections

### Input A

- Push Button A → Arduino Pin 2
- Other terminal of Push Button A → +5V
- 10kΩ resistor between Pin 2 and GND

### Input B

- Push Button B → Arduino Pin 3
- Other terminal of Push Button B → +5V
- 10kΩ resistor between Pin 3 and GND

### LED Output

- Arduino Pin 4 → 220Ω Resistor
- 220Ω Resistor → LED Anode (+)
- LED Cathode (-) → GND

### Power Connections

- Arduino 5V → Breadboard Positive Rail
- Arduino GND → Breadboard Ground Rail

---

## Working Principle

The Arduino continuously reads the states of Push Button A and Push Button B.

The XOR expression

\[
Y = A\bar{B} + \bar{A}B
\]

is evaluated in software.

The result is sent to Arduino Pin 4.

- LED OFF → Logic 0
- LED ON → Logic 1

Thus the LED visually verifies the XOR operation.

---

## Arduino Program

File:

```text
XOR_logic.ino
```

Compile and upload using:

- Arduino IDE
- Arduino CLI
- ArduinoDroid

---

## AVR Assembly Program

File:

```text
XOR_logic.asm
```

The assembly implementation performs the same XOR logic using AVR instructions.

---

## Repository Structure

```text
.
├── XOR_logic.ino
├── XOR_logic.asm
├── Gate_Problem.pdf
├── circuit_diagram.png
├── hardware_block_diagram.png
└── README.md
```

---

## Expected Output

| Input A | Input B | LED |
|----------|----------|------|
| 0 | 0 | OFF |
| 0 | 1 | ON |
| 1 | 0 | ON |
| 1 | 1 | OFF |

---

## Reference

GATE EC 2014 – Question 37

Digital Logic Hardware Implementation using Arduino UNO.

---

## Author

**H B S Bharath Kumar**

M.Sc Artificial Intelligence
