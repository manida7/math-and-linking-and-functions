[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/7HZ54Xyq)
# Task: Implementing x86_64 Assembly for Function Execution

You have completed your **scanner** homework, which is the first step of the whole compilation process.  
The next step is the **parser**, and then you need to work on the **Code Generator**, which will translate your source code to assembly.  
Following a structured approach:

1. **Writing a Scanner**
2. **Developing a Parser**
3. **Generating Code (Assembly Output)**

The final step in this process is generating assembly code, **which is the focus of this lab**.

---

## 📂 Examining the Provided Files

Start by comparing the provided `test.c` file with the version hosted in the repository:

```bash
cat test.c
```

Compare it to:

🔗 [Repository test.c](https://github.com/compilers2025/compilers2025-classroom-de530b-linking-of-c-and-asm-files-lab2/blob/main/test.c)

What are the differences between these files?

---

## 🛠 Understanding x86 Assembly (32-bit)

Take a look at the **`math32.s.png`** image (x86 assembly).  
You need to **manually type it out** in the `math32.s` file. Inspect the image carefully.

```bash
cat math32.s
```

This is an **x86 assembly** file. Additionally, there's an associated **Makefile** for compiling it:

```bash
cat makefile32
```

Now, compile the 32-bit version:

```bash
make -f makefile32
```

After successful compilation, run the generated binary:

```bash
./test32
```

✅ **You should get an output. What is it?**

---

## 🔄 Transitioning to x86_64 Assembly

Now, let's do the same for **x86_64 architecture**.

### 1️⃣ **Inspect the `math.s.png` image**  
You also need to **type out** the contents of `math.s.png` into the `math.s` file.

```bash
cat math.s
```

The image contains **question marks** (`?`), which need to be replaced to complete the function.

### 2️⃣ **Where are function arguments stored in x86_64?**  
Here is a link to a note explaining function arguments:

📄 [functions_x86_64.txt](https://github.com/compilers2025/BBS/blob/main/registers/functions_x86_64.txt)  

And below is the link for **x86 architecture**:

📄 [functions_x86.txt](https://github.com/compilers2025/BBS/blob/main/registers/functions_x86.txt)  

📌 **Read both very carefully!**

### 3️⃣ **Check the `Makefile` for x86_64:**

```bash
cat makefile
```

You can compile the **x86_64 version** using:

```bash
make
```

However, **compilation will only succeed if `math.s` is at least syntactically correct**.

---

## 🎯 Your Objective

1. **Type out `math32.s` from `math32.s.png`.**  
   ✅ **Run it.**

2. **Type out `math.s` from `math.s.png`.**  
   ✅ **Modify `math.s` so that when executed, the program prints `42`**—because that's the answer!

To achieve this:
- Read the **comments** in `math.s` carefully.
- Identify and correctly assign **function arguments in x86_64**.
- Ensure the program produces the **correct output**.

---

## 💡 Additional Notes

1. **Server Access:** You have access to a **cozy server** for this task. 🖥️
2. **Cross-Architecture Compatibility:**  
   Think about why the `test.c` file works across both **x86** and **x86_64** architectures **without modification**.  
   What differences allow it to be universal?

---

🚀 **Good luck, and get coding!**
