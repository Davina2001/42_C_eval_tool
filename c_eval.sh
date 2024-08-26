#!/bin/bash

# 定义颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 无颜色

# Step 0: Display directory structure using tree command
echo -e "${BLUE}Displaying directory structure...${NC}"
tree

# Step 1: Use norminette to check all files in current directory and subdirectories in order
echo -e "${BLUE}Running norminette on all files in order...${NC}"
for dir in $(find . -type d -name "ex*" | sort); do
    echo -e "${YELLOW}Running norminette in directory: $dir${NC}"
    norminette "$dir"/*.c
done

# Step 2: Remove the last /* and */ from all .c files in current directory and subdirectories
echo -e "${BLUE}Removing the last /* and */ from all .c files...${NC}"
find . -type f -name "*.c" -exec sed -i ':a;N;$!ba;s|\(.*\)/\*\([^/]*\)\*/|\1\2|' {} \;

# Step 3: Compile and execute .c files in each directory in order
echo -e "${BLUE}Compiling and executing all .c files in order...${NC}"
for dir in $(find . -type d -name "ex*" | sort); do
    echo -e "${YELLOW}Processing directory: $dir${NC}"
    find "$dir" -type f -name "*.c" -exec cc -Wall -Wextra -Werror -o "$dir/a.out" {} \;
    if [ -f "$dir/a.out" ]; then
        echo -e "${GREEN}Executing $dir/a.out${NC}"
        (cd "$dir" && ./a.out)
        echo # 添加一个空行来换行显示
    fi
done

# Cleanup: Optional, if you want to remove the compiled a.out files after execution
# find . -type f -name "a.out" -delete

echo -e "${RED}All tasks completed.${NC}"

