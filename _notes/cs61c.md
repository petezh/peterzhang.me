---
title: 'Notes: CS 61C / Machine Structures'
date: 2021-12-08
permalink: /notes/cs61c
tags:
  - class notes
  - computer science
---

I took these notes for [CS 61C: Machine Structures](https://cs61c.org/fa21/) taught by John Wawrzynek and Nicholas Weaver.s

Midterm
===

# C


## Syntax

`0`, `NULL`, and boolean types in `stdbool.h` are false. Everything else evaluates to `true`.

Types can't change. Longs include `int`,  `unsigned int`, `float`, `double`, `char`, `long`, and `long long`. The `int` is the processor's integer type. The gaurantee is `sizeof(long long) >= sizeof(long) >= sizeof(int) >= sizeof(short)`. Normally, `sizeof(int) = 4`.

A `const` locks in a value. `enum` lets you group related constants. Function return types can be any C variable.

## Bitwise

The C bitwise operators for and, or, xor, and negation are `&`, `|`, `^`, and `~`, respectively. The `<<` and `>>` operators shift bits left and right, respectively.

## Memory

The components of C memory in order from lowest to highest:
1. **Text segment/code**: Read-only executable instructions. Functions are stored in code.
2. **Static data**:
   - Initialized data segment: contains global nand static variables, read-write or read-only depending on initialization.
   - Uninitialized data segment: Contains all variables that are uninitialized.
3. **Stack**: Stores automatic variables, such as information when a function is called. LIFO. After some area is freed, the values remain, even if they are inaccessible. Not allocated in order.
4. **Heap**: Managed by `malloc`, `realloc`, and `free`. Free blocks of memory have headers that store the size of the block and a pointer to the next block. Headers are kept in a circular linked list.

C can dynamically allocate memory.
- `malloc` allocates a block of memory and return a pointer.
  `ptr = (cast-type*) malloc(byte-size);`
  e.g. `ptr = (int*) malloc(100 * sizeof(int));`

  Internally, it searches the free list of a large enough block. It can choose blocks via first fit, next fit, or best fit.

- `calloc` also initializes each block with a default value of 0 and accepts 2 parameters.
  `ptr = (cast-type*)calloc(n, element-size);`
  `ptr = (float*) calloc(25, sizeof(float));`

- `free` de-allocates memory.
  `free(ptr);`

  It checks if adjacent blocks are also free and merges them if possible.

- `realloc` allocates more blocks of memory for a pointer.
  `ptr = realloc(ptr, newSize);`

If `malloc` fails, the pointer is set to `NULL`. Calling `realloc` on a `NULL` pointer functions as `malloc` . Calling `realloc(ptr, 0)` functions as `free(ptr)`.

When first initialized, pointers point to garbage. Array pointers are located in the same address the array starts. 

Anything that takes up memory needs to be freed: strings, lists, structures, etc. Common memory mistakes:

- Returning a pointer a value in a closed function frame.
- Reallocating memory shared by multiple pointers.
- `free`ing the wrong address.
- Double `free`ing.

## Pointers

A pointer contains the address of another variable.

- The general format is `type *var-name;`
- Usually, pointers are initialized to null. `int  *ptr = NULL;`
- The arithmetic operators are `-`, `--`, `+`, `++`
- Pointers will increment in the size of their type.
- Pointers can point to each other.
- Arrays can hold pointers.
- Pointers can be assed into and returned from functions.

## Printing

`printf` accepts a format and arguments. Some formats:
- `c`: character
- `d` or `i`: signed integer
- `f`: floating point decimal
- `s`: string
- `u`: unsigned integer
- `p`: pointer
- `n`: nothing

## Struct

> Always use `malloc` to make space for a new structure.

Use `typedef` to define new types. For example, `typedef uint8_t BYTE;`.

To group variables, use `struct`. The format is:
  `typedef struct { type name; } NAME;`

To modify struct members with functions, pass in the address of the object.

## Arrays

Create arrays with `type[length]`. Index to a particular element with `array[index]`. Keep track of the size:

```
arr[size] = value;
size += 1;
```

Array addresses are self-referential.
```c
&arr = arr
```

Since arrays have fixed length, you may need to reallocate when you reach capacity:

```
capacity *= 2;
arr = realloc(arr, sizeof(char*) * capacity);
```

If a string literal is missized with the char array, then the extra space is filled with `null`.

## Strings

String literals (e.g. `"Hello World"`) are static. If a string literal is declared with a char array, it is mutable and sotred in the stack.

To create a new copy of the string, use `strcpy(copy_to, copy_from)`. `strlen` calculates the length. `sizeof` will include an extra byte for the terminating null character.

## Functions

C is "pass-by-value", so arguments are copied. First case is almost always `NULL` case. Use pointers to pass references to objects. As always, multi-part coding problems probably build off of each other, so keep earlier functions handy.

# Representations

## Two's Complement

To negate in Two's complemenet, flip all bits and add 1.

## Floating Point

Tricks we use for arithmetic:

- To check for $x == y$, evaluate $x - y == 0$
- To multiply by $2^n$, do left shit by $n$ with `<< n`
- To divide by $2^n$, right shift by $n$ with `>>n`

To represent floating point numbers, use an exponential field to record the whereabouts of the binary point. There is exactly one digit of the mantissa before the binary point. Here are the rules:
- The **sign** is 1 bit, **exponent** is 8 bits, and **significand** is 23 bits.
- The signficand is assumed to start **after** the floating point.
- The largest and smallest value of the exponent (0, 255) are reserved for special values.
- Exponent 0 and significand 0 is the value 0, which can be positive or negative.
- Exponent 0 otherwise is a **denormalized** number, which omits the initial 1.
- Exponent 255 with significant 0 is **infinity**, which can be positive or negative. You recieve infinity by dividing by 0, which can be used for comparisons.
- Exponent 255 otherwise is **NaN** (not a number). It results from arithmetic with infnities or dividing 0 by 0. Comparisons with NaN are false except for $$NaN \neq x$$.
- Due to rounding errors, floating point addition is *not associative*.

## IEC Prefixes

$$
2^{10} = \text{Ki}\\

2^{20} = \text{Mi} \\

2^{30} = \text{Gi} \\

2^{40} = \text{Ti} \\

2^{50} = \text{Pi} \\ 

2^{60} = \text{Ei}
$$

# RISC-V

RISC-V is a license-free, royalty-free RISC ISA specification that works with all levels of the computing system. Simply to implement, easy for concurrency, and not many choices. Assembly language operands are **registers**, which are a **limited number** of places to hold values. Arithmaetic can only happen on registers, which are very fast.

The processor's control enables read/write. The datapath lets you read and write data by passing addresses to memory. Access is much faster to register because latency is lower. a program counter is a special register that holds the byte address of the next instructions.

RISC-V has 32 registers with 32 bits each (for RV32; RV16 and RV64 have 16 and 64 bits respectively) referred to as x0 - x31. The x0 register always holds the value 0. Reigsters don't have a type and the operation decides how values are interpreted. Integers should start on even 4-byte boundaries ("word-aligned").

There are 6 instruction formats that the hardware understands; they have opcode and operands.

- Basic operands

  - `add x1, x2, x3`

  - `sub x1, x2, x3`

    To move values, do `add x1, x2, x0`, since `x0` is zero.

  - `add x0 x0 x0` is the no-op instruction

  - `mul` and `mulh` returns either the lower and upper 32b result, can be fused

  - `div` and `rem` , can be fused

- Immediates are numeric constants

  - `addi x1, x2, 5`
  - There's no `subi` because you can add a negative number.
  - An I-type instruction can only have 12 beats of immediate, so immediates are sign-extended.

- Load and write

  - Word addresses are 4 bytes across, so words use the address of their least-significant byte

  - `lw x10, 12(x13)` loads the 12th element of the base register at `x13` to `x10`

  - `s3 x10,40(x13)` stores the word at `x10` to the 12th element of the base register `x13`

  - `lb` and `sb` copy a single bit; the extra bits are sign-extended

    `lb x10, 3(x11)`

- Logic

  - `and`, `or`, and `xor` for boolean operations
  - `sll` and `srl` for shift left logical and shift right logical
  - `sra` is shift right arithmetic, which preserves the sign bit, fails for negative odd numbers
  - Use `slli` to multiply by 4 (useful for byte offsets).

- Control flows

  - `beq register1, register2, L1` switches to the instructions at `L1` if the two registers are equal
  - `bne` branch not equal, `blt` brand less than, and `bge` branch greater than or equal are similar
  - `bltu` and `bgeu` are unsigned versions
  - Add label to the code `L1: instruction op1 op2 op3`
  - Use instruction jump `j` to skip to a label, abbreviation for `jal`.
  -  `jal` adds offset to the curren taddress to the program counter, storing into `rd` the value of the next instruction.
  - `jalr` takes some register value and adds some immediate 

Assemblers convert humna-readable assembly code to machine code object files that are linked into an executable.

Some best practices:

- `a0`-`a7` are for argument registers `x10` - `x17`
- use `zero` for `x0`
- `mv rd, rs` = `addi rd, rs, 0`
- `li rd, 13` = `addi rd, x0, 13`

The steps for calling a function are preparing parameters, transferring control, acquiring local resources, performing the function's task, storing the result value, and returning to the origin.  Registers are either **caller saved** (the callee can do anything) or **callee saved** (the funciton must restore them).

- `a0-a7` are used for arguments, `a0-a1` are for return values (caller saved)
- The `ra` is the address register (caller saved).
- The `sp` is the pointer to the bottom of the stack (callee saved).
- `s0-s11 saved registers ar epreserved (callee saved).
- The frame pointer `fp` points to the top of the call frame.
- `t0-t6` temporaries are caller saved.
- Old values are preserved on a stack in memory which we access with `sp`.
- The `gp` global pointer points to static memory.

The `R` format is register-register arithmetic/logic, `I` format is register-immediate ALU operations and loads, `S` format is for stores, `B` format is for branches, `U` format is for 20-bit upper immediate instrucitons, and `J` format is for jumps.

# CALL

An interpreter executes other programs. Language **translation** let's translate a high-level language to a lower-level language to increase performance. Generally, interpreters are easier to write, but they are slower. Trasnalated code is almost always more efficient.

A **compiler** takes high-level language code as input (e.g. foo.c) and outputs assembly level language code (e.g. foo.s), which  may contain psuedo-instructions. The **lexer** turns the input into tokens, while the **parser** compiles an abstract syntax tree that recognizes problems in program structure. Semantic analysis and optimization checks for errors and reorganizes code. Code generation outputs the assembly code.

An **assembler** takes assembly language code as input (e.g. foo.s) and outputs object code (e.g. foo.o). It reads and uses directives, replacing psuedo instructions and producing machine language. Directives include `.text` (put into machine code), `.data` (put into data segment), `globl sym` (declares `sym` global) , `string str` (stores `str` in memory with null terminator), `.word` (stores 32-bit quantities in memory words). Other psuedo instructions include `not rd, rs`, `beqz rs, offset` (branch if zero), `bgt`, `j offset`, `ret`, `call offset`, and `tail`. Assume function arguments/data structures in C preserve order when transfering to RISC-V.

Branches are PC-relative, so they can be replaced by real ones. Forward references are solved with a first pass to remember label positions. To deal with jumps to other files, a **symbol table** lists items that the file may need later, whether external labels or pieces of data, and a **relocation table** lists their locations. An object file is comprised of the object file header, text segment, data segment, relocation information, symbol table, and debugging information.

A **linker** takes an object code file with information table and outputs executable code (e.g. a.out). It combines several object files into a single executable, enabling separate compilation of files. It combines the text and data segments and fills in absolute addresses by calculating the absolute address from lengths and orderings. PC-relative addressing (beq, bne, jal) never relocates, but external function reference (jal) and static data reference (auipc and addi) always relocate; it checks user symbol tables and library files for an absolute address.

A **loader** loads the program into memory and runs it. In order, the loader:

- Reads the file header to determine size of segments.
- Creates address aspace for a program and a stack segment.
- Copies instructions and data to the new address space.
- Copies arguments passed into the program on the stack.
- Initializes registers, `sp` points to first free stack location.
- Jumps to start-up routine that copies arguments from stack to registeres, sets the PC.

In **dynamically linked libraries**, libraries are seprate fromt he program, reducing disk pace and send time; but it adds time overhead and complexity.

# SDS

Almost every processor is a synchronous digital system. All operations and communication is coordinated by a central clock. All values are represented by a finite set of values (unlock analog circuits, which represent continuous ranges of values). Wires can take on 0 or 1 values via voltage. Binary representation is reliable and scalable; simply AND, OR, and NOT can represent all discrete functions. Adder logic can be implemented with xor gates

**State elements** or memory elements gives circuits the ability to remember. They are modeled as finite stat emachines (FSM). cMOS register circuits are edge-triggered, in this case by rising edge of the clock.A bit-register is called a flip-flop. The **multiplexor** or mux chooses between multiple inputs.

nFET assigns 0 when 1 (bottom up). pFET assigns 1 when 0 (top down). There are physical delays from input to output change. CMOS consume power proportional to the clock frequency.

## Datapath and Single-Cycle Control

RISC-V machines execute on instruciton per tick. The program counter  points to a place in instruction memory, which fetches instruction components, decodes/reads register, executes the instruction, and writes to memory.

# Datapath

Each instruction reads and updates the state. The register files (regfiles) holds 32 registers * 32 bits. The program counter (PC) holds the address of the current instruction. The memory holds instructions (IMEM) and data (DMEM) in a 32-bit byte-addressed space. 

At every clock tick, the processor executes an instruction. Current state outputs drive inputs to logic, outputs settle at the values before the next edge. Memory is asynchronouc read but synchronous write.

The phases are instruction fetch, decode/register read, execute in ALU, store in memory, write to registers. Separate inputs select write enable and function choice.


