# CSE 316 - Microprocessor and Microcontroller Assembly Language

This repository contains assembly language programs and learning resources for the CSE 316 course on Microprocessor and Microcontroller programming.

## 📁 Repository Structure

```
CSE_316_MICRO_PROCESSOR_AND MICRO CONTROLLER/
├── OFFLINE1/
│   ├── 2005110/                    # Student submissions (ID: 2005110)
│   │   ├── 2005110_Problem1.asm   # Character classification program
│   │   └── 2005110_Problem2.asm   # Second highest character finder
│   └── Resources/                  # Learning materials and examples
│       ├── 01-Basic-IO/           # Basic input/output operations
│       ├── 02-Branching/          # Conditional statements and jumps
│       ├── 03-Loop/               # Loop structures
│       ├── 04-Array/              # Array operations
│       ├── 05-Stack/              # Stack operations
│       ├── 06-Procedures/         # Procedure and function calls
│       └── July_2023_CSE_316_Assembly_Offline_1.pdf
├── OFFLINE2/
│   ├── 2005110/                    # Student submissions (ID: 2005110)
│   │   ├── 2005110_1.asm          # Factorial calculation program
│   │   └── 2005110_2.asm          # Sum of digits program
│   └── Resources/
│       └── July_2023_CSE_316_Assembly_Offline_2.pdf
```

## 🎯 Course Overview

This course covers assembly language programming for microprocessors and microcontrollers, focusing on:

- **Assembly Language Fundamentals**: Understanding the basic syntax and structure
- **Memory Management**: Working with registers, memory addressing, and data storage
- **Control Flow**: Implementing conditional statements, loops, and branching
- **Input/Output Operations**: Handling user input and displaying output
- **Procedures and Functions**: Creating reusable code blocks
- **Stack Operations**: Understanding stack-based programming
- **Array Manipulation**: Working with data structures

## 📚 Learning Resources

### OFFLINE1 Resources

The first offline contains comprehensive learning materials organized by topics:

#### 1. Basic I/O Operations (`01-Basic-IO/`)
- **01-move.asm**: Basic register operations and data movement
- **01-move-with-vars.asm**: Working with variables in memory
- **02-input-output.asm**: Input and output operations
- **03-add-sub.asm**: Arithmetic operations (addition and subtraction)
- **04-hello-world.asm**: Basic string output program

#### 2. Branching and Control Flow (`02-Branching/`)
- **01-flags.asm**: Understanding CPU flags and their effects
- **02-jnz.asm**: Jump if not zero operations
- **03-cmp.asm**: Comparison operations
- **04-if-else.asm**: Basic if-else conditional structures
- **05-jmp.asm**: Unconditional jumps
- **06-long-jump.asm**: Long jump operations
- **07-signed-unsigned-jump.asm**: Signed vs unsigned comparisons
- **08-if-elif-else.asm**: Multiple conditional structures
- **09-and.asm**: Logical AND operations
- **10-if-and.asm**: Conditional logic with AND
- **10-if-or.asm**: Conditional logic with OR

#### 3. Loop Structures (`03-Loop/`)
- **01-number-input.asm**: Input handling for numbers
- **02-for-loop.asm**: For loop implementation
- **03-loop-cx.asm**: Using CX register for loop control
- **04-loop-while.asm**: While loop structures
- **05-loop-repeat.asm**: Repeat-until loop patterns

#### 4. Array Operations (`04-Array/`)
- **01-indirect.asm**: Indirect addressing modes
- **02-based.asm**: Based addressing
- **03-indexed.asm**: Indexed addressing
- **04-array-populate.asm**: Populating arrays with data
- **05-PTR.asm**: Pointer operations

#### 5. Stack Operations (`05-Stack/`)
- **01-push-pop.asm**: Basic push and pop operations

#### 6. Procedures (`06-Procedures/`)
- **01-newline.asm**: Newline procedure implementation
- **02-print.asm**: Print procedure
- **factorial.asm**: Recursive factorial calculation

## 💻 Student Submissions

### OFFLINE1 Problems

#### Problem 1: Character Classification (`2005110_Problem1.asm`)
**Objective**: Classify input characters into categories
- **Input**: A single character from user
- **Output**: Classification message (uppercase, lowercase, number, or other)
- **Features**:
  - Uses conditional branching with CMP and JMP instructions
  - Implements multiple if-else conditions
  - Demonstrates character comparison logic

#### Problem 2: Second Highest Character (`2005110_Problem2.asm`)
**Objective**: Find the second highest character among three inputs
- **Input**: Three characters from user
- **Output**: The second highest character or "All letters are equal" message
- **Features**:
  - Array manipulation with indexed addressing
  - Complex comparison logic
  - Multiple conditional branches

### OFFLINE2 Problems

#### Problem 1: Factorial Calculation (`2005110_1.asm`)
**Objective**: Calculate factorial with additional mathematical operations
- **Input**: Two numbers (n and k)
- **Output**: Result of factorial calculation
- **Features**:
  - Recursive procedure implementation
  - Multi-digit input handling
  - Number conversion and output formatting
  - Stack-based parameter passing

#### Problem 2: Sum of Digits (`2005110_2.asm`)
**Objective**: Calculate the sum of digits of a given number
- **Input**: A multi-digit number
- **Output**: Sum of all digits
- **Features**:
  - Recursive digit extraction
  - Modular arithmetic operations
  - Multi-digit input/output handling

## 🛠️ Technical Details

### Assembly Language Used
- **Syntax**: Intel x86 Assembly (MASM/TASM compatible)
- **Memory Model**: SMALL model
- **Stack Size**: 100H (256 bytes)
- **Interrupts**: DOS interrupt 21H for I/O operations

### Key Concepts Demonstrated
1. **Register Operations**: AX, BX, CX, DX register usage
2. **Memory Addressing**: Direct, indirect, and indexed addressing modes
3. **Control Flow**: Conditional and unconditional jumps
4. **Stack Management**: PUSH/POP operations and procedure calls
5. **I/O Operations**: Character and string input/output
6. **Arithmetic Operations**: Addition, subtraction, multiplication, division
7. **Logical Operations**: AND, OR, comparison operations

## 📖 How to Use This Repository

### For Students
1. **Start with Basic I/O**: Begin with the `01-Basic-IO` examples
2. **Progress through Topics**: Follow the numbered folders in order
3. **Study Examples**: Each `.asm` file contains working examples
4. **Practice Problems**: Review the student submissions for problem-solving approaches
5. **Reference PDFs**: Check the PDF files for detailed problem specifications

### For Educators
1. **Use as Teaching Material**: The Resources folder provides structured learning content
2. **Assignment Examples**: Student submissions can serve as reference solutions
3. **Progressive Difficulty**: The folder structure shows natural progression of concepts

## 🔧 Development Environment

To run these assembly programs, you'll need:
- **Assembler**: MASM (Microsoft Macro Assembler) or TASM (Turbo Assembler)
- **Linker**: LINK.EXE (comes with MASM)
- **DOS Environment**: DOSBox or similar for running 16-bit programs
- **Text Editor**: Any text editor for writing assembly code

### Basic Compilation Steps
```bash
# Assemble the program
MASM filename.asm

# Link the object file
LINK filename.obj

# Run the executable
filename.exe
```

## 📝 Notes

- All programs are written for 16-bit x86 architecture
- Programs use DOS interrupt 21H for system calls
- The code follows standard assembly language conventions
- Comments are included to explain program logic
- Programs are designed to be educational and demonstrate key concepts

## 🤝 Contributing

This repository serves as a learning resource for assembly language programming. Feel free to:
- Study the examples and improve your understanding
- Use the code as reference for your own projects
- Share additional examples or improvements

## 📄 License

This repository contains educational materials and student work. Please respect academic integrity and use these resources for learning purposes only.

---

**Course**: CSE 316 - Microprocessor and Microcontroller  
**Institution**: BUET  
**Academic Year**: 2023-2024 
