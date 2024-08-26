# 42 C Evaluation Tool

## Overview

This script is designed to automate the process of checking, cleaning, compiling, and executing C language projects, particularly for the 42 school. It first displays the directory structure, runs norminette checks on all C files in a specified order, removes specific comment symbols (/* and */), compiles the C files with strict flags, and finally executes the resulting programs.

## ⚠️ Warning ⚠️ 

**Irreversible Operation**: The operations performed by this script are irreversible and there is no backup created automatically. **Do not run this script on your original files**. Instead, clone your repository to a local test directory and run the script there to avoid potential data loss or damage to your original project files.


## Features

- *Directory Structure Display*: Uses the tree command to show the current directory and subdirectories' structure.
- *Norminette Check*: Runs norminette on all C files in order, ensuring they follow the 42 school's coding standards.
- *Comment Cleaning*: Removes the last /* and */ symbols from all C files, preserving the content in between.
- *Compilation*: Compiles all C files using cc with -Wall, -Wextra, and -Werror flags.
- *Execution*: Automatically executes the compiled programs in the order of the directories.

## Important Notes Before Use
- *Entry Point Comment Removal*: This script is specifically designed to remove the comment delimiters from the end of the files, which often include the entry point of your program (e.g., main function). For example, if your program looks like this:
```c
#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}
/*
int	main(void)
{
	ft_putchar('a');
}
*/
``` 

After running the script, the comment delimiters /* and */ will be removed, leaving the text within intact.

```c
#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	main(void)
{
	ft_putchar('a');
}

```

- *Comment Removal*: The script removes the last /* and */ comment symbols from all C files. If your program relies on these comments at the end of the files, using this script may cause unintended behavior or errors.

## Requirements

- *bash*: The script is written in bash, so ensure you have a bash shell available.
- *norminette*: The norminette tool must be installed and accessible from your command line.
- *tree*: The tree command should be installed to display the directory structure.

## Usage

1. *Clone the repository*:
```bash
git clone https://github.com/Davina2001/42_C_eval_tool.git
```

2. *Directory Placement*: Ensure that the script is placed and executed from the root directory of your evaluation repository. Below is a sample directory structure to illustrate where the script should reside:

```plaintext
    your-project-root/
    ├── 42_c_eval_tool.sh
    ├── ex00/
    │   └── your_file.c
    ├── ex01/
    │   └── your_file.c
    └── ex02/
        └── your_file.c
```
In this example, c_eval.sh should be placed in the your-project-root/ directory.

3. *Make the script executable*:
```bash
chmod +x c_eval.sh
```    

4. *Run the script*:
```bash
./c_eval.sh
```

The script will:
- Display the directory structure.
- Run norminette checks on all C files, ordered by directory.
- Remove the last /* and */ symbols from each C file.
- Compile each C file in its directory and generate an a.out executable.
- Execute each a.out file in order, displaying the results.

## License

This project is licensed under the MIT License.
