// =============================================================================
// CS 271 Computer Architecture - Lab 01: String Copy (STRCPY)
// Purdue University Fort Wayne
// =============================================================================
// STUDENT NAME: Danylo Starepravo
// DATE:         3/6/2026
// =============================================================================
// OBJECTIVE:
//   Implement a loop that copies a null-terminated string from a source
//   address to a destination address, simulating the classic C strcpy()
//   function.
//
// MEMORY LAYOUT:
//   - Source string starts at address 0x50 (80 decimal)
//   - Destination buffer starts at address 0x13C (316 decimal)
//   - The source string is: "Hello" (5 characters + null terminator)
//
// EXPECTED OUTCOME:
//   - Register X0 should hold 0x50 (source address)
//   - Register X1 should hold 0x13C (destination address)
//   - The string "Hello" should be copied to the destination
//   - Simulation output: "[EDUCORE LOG]: Apollo has landed"
//
// INSTRUCTIONS:
//   1. Complete the TODO sections below
//   2. Run: make sim_lab01
//   3. Open Surfer to verify X0=0x50 and X1=0x13C
//   4. Check that memory[0x13C] contains the copied string
// =============================================================================

    .text
    .global _start

_start:
    MOVZ    X0, #5
    MOVZ    X1, #1
    MOVZ    X4, #0
    MOVZ    X5, #0

sum_loop:
    ADD     X4, X4, X0
    ADD     X5, X5, X1
    SUBS    X0, X0, X1
    B.NE    sum_loop

done:
    YIELD
