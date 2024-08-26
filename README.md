# 42 C Evaluation Tool

## Overview

This script is designed to automate the process of checking, cleaning, compiling, and executing C language projects, particularly for the 42 school. It first displays the directory structure, runs norminette checks on all C files in a specified order, removes specific comment symbols (/* and */), compiles the C files with strict flags, and finally executes the resulting programs.

## Features

- *Directory Structure Display*: Uses the tree command to show the current directory and subdirectories' structure.
- *Norminette Check*: Runs norminette on all C files in order, ensuring they follow the 42 school's coding standards.
- *Comment Cleaning*: Removes the last /* and */ symbols from all C files, preserving the content in between.
- *Compilation*: Compiles all C files using cc with -Wall, -Wextra, and -Werror flags.
- *Execution*: Automatically executes the compiled programs in the order of the directories.

## Requirements

- *bash*: The script is written in bash, so ensure you have a bash shell available.
- *norminette*: The norminette tool must be installed and accessible from your command line.
- *tree*: The tree command should be installed to display the directory structure.

## Usage

1. *Clone the repository*:
    bash
    git clone <repository-url>
    cd <repository-directory>
    

2. *Make the script executable*:
    bash
    chmod +x c_eval.sh
    

3. *Run the script*:
    bash
    ./c_eval.sh
    

    The script will:
    - Display the directory structure.
    - Run norminette checks on all C files, ordered by directory.
    - Remove the last /* and */ symbols from each C file.
    - Compile each C file in its directory and generate an a.out executable.
    - Execute each a.out file in order, displaying the results.

## Important Notes Before Use

- *Comment Removal*: The script removes the last /* and */ comment symbols from all C files. If your program relies on these comments at the end of the files, using this script may cause unintended behavior or errors.
  
- *Directory Placement*: Ensure that the script is placed and executed from the root directory of your repository. Below is a sample directory structure to illustrate where the script should reside:

    plaintext
    your-project-root/
    ├── c_eval.sh
    ├── ex00/
    │   └── your_file.c
    ├── ex01/
    │   └── your_file.c
    └── ex02/
        └── your_file.c
    

    In this example, c_eval.sh should be placed in the your-project-root/ directory.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

If you want to contribute to this project, feel free to fork the repository and submit a pull request. Issues and feature requests are welcome!
