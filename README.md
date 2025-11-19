# FPGA_Gaming_Console

A hardware implementation of a gaming console written in Verilog/Vivado.
The project includes VGA output, keyboard input, 7-segment display output
Because of the complexity of the project the testbenches are not provided.

## Features
- VGA 640x480 driver
- Keyboard communication
- Score display with a 7-segment display 
- Clock dividers, FSMs, and FIFO
- Random number generator based on a LFSR
- Flappy Bird game implementation
- Snake game implementation
- Space Invaders game implementation
- Doodle Jump game implementation
- Static displays for game-over screens and menu selection
- Bitmaps for multiple graphic figures


## Tools Used
- Vivado 2024.2
- Verilog
- Nexys4 DDR board

## Project Structure
src/hdl       – Verilog modules  
constraints   – XDC file  
docs          – Images and diagrams