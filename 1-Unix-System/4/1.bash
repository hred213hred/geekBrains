cat file1.txt | tr -d "[\n]" | tr [:lower:] [:upper:] > file2.txt