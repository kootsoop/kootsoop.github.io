---
title: 'Building a data structure'
description: >-
 Today, I want to think about how to move from bits to abstractions.
date: '2021-01-22T08:24:49Z'
categories: [data structures]
keywords: [daily]
slug: /@kootsoop/building-a-data-structure-2021
---

<meta property="og:image" content="https://kootsoop.github.io/images/aletra_fpga_ep4ce6e22c8n.jpg" />

In today's writing, I want to think about building up a data structure.  The data structure I'm aiming for is an array.  The question is: where to start?

## Starting with a simple memory

One course I taught last semester was an introductory course in VHDL, [*CET466 Logic Design*](https://www2.ccsu.edu/course/CET466) at Central Connecticut State University.  One of the questions on the final exam gave the students the VHDL listing below and asked them what it does.

<p align="center">
<img src="https://kootsoop.github.io/images/vhdl_dual_port_memory.png" width="300" height="400">
</p>

This code is what I'd call a [dual-port memory](https://en.wikipedia.org/wiki/Dual-ported_RAM): it's a memory device that can be read from and written two at the same time via two separate address and data busses. This particular instance is very small: it has two bits for the address lines and four bits for the data. That there are only two bits for the address lines means it has a total of four different possible addresses (`00`,`01`,`10`, and `11`).

## Moving to a real computer

The VHDL code above was run on an Altera FPGA board like the one shown below. This is a small FPGA, but it is even smaller compared with general purpose computers.

<p align="center">
<img src="https://kootsoop.github.io/images/aletra_fpga_ep4ce6e22c8n.jpg" width="300" height="200">
</p>

A real computer's memory is significantly bigger.  A real desktop or laptop computer is probably a 64-bit machine.  That `64` means that the address space is 64 bits instead of the two bits in the above VHDL code.  That implies a total number of addresses of 2<sup>64</sup> or [18,446,744,073,709,551,616](http://www.thealmightyguru.com/Pointless/PowersOf2.html) pieces of memory.

The other difference between the VHDL code above and the real memory is that the data width is generally a byte or 8 bits.

There are some limitations.  [Most computers can't actually use all 64 bits.](https://en.wikipedia.org/wiki/64-bit_computing) They are limited to either 48 or 52 bits, however this is not a practical limitation as, currently, no computer can physically house that amount of memory.

## A simple example

Rather than deal with 64-bit addresses, I'm going to simplify things and look at where I started my computing journey with 16-bit addresses. This means that instead of writing an address as `0xdeadbeefdeadbeef` in hexadecimal we can write it as `0xc035`.

I'll keep the data size of 8 bits (1 byte).

So a part of the computer's memory could look like this:

| Address | Value |
| -- | -- | 
| 0x0000 | 0x00 |
| 0x0001 | 0x00 |
|  :  | : | 
| 0xffff | 0x00 |

Now suppose we want to do something like [this](https://www.geeksforgeeks.org/arrays-in-java/) in Java:

```java
byte example[];    		// declaring array
example = new byte[5];	// allocating memory to array
```
or [this](http://www.cplusplus.com/doc/tutorial/arrays/) in C++:

```c++
char example[5];
```
[or](http://www.cplusplus.com/reference/new/operator%20new[]/)

```c++
char *example;
example = new char [5];
```

### Differences between Java and C++

Note that the syntax in the Java and C++ is quite similar in many ways. However, there are differences:

 * Java has a `byte` type. To get something similar in C++ we need to use the `char` type.
 * C++ has two ways to make an array of a particular size. One uses the array syntax, the other uses pointer syntax.

 The other big difference between Java and C++ is that Java has a *virtual machine* that manages memory and C++ doesn't.  The upshot of that is whenever the `new` keyword is used in C++, there *must* be a `delete` keyword somewhere to clean up the allocated memory.  [We'll talk more about this much later.](https://stackoverflow.com/questions/2321511/what-is-meant-by-resource-acquisition-is-initialization-raii)

## What does this look like in our 16-bit memory world?

So, getting back to our example, we've allocated memory for a length five array.

<table>
    <thead>
        <tr>
            <th>Variable</th>
            <th>Address</th>
            <th>Value</th>
            <th>Java Access</th>
            <th>C++ Access 1</th>
            <th>C++ Access 2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>none</td>
            <td>0x0000</td>
            <td>0x00</td>
			<td> N/A </td>
			<td> N/A </td>
			<td> N/A </td>
        </tr>	
        <tr>
            <td>none</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
        </tr>
        <tr>
            <td rowspan=5>example</td>
            <td>0x1000</td>
            <td>0x00</td>
			<td> example[0] </td>
			<td> example[0] </td>
			<td> example </td>
        </tr>
        <tr>
            <td>0x1001</td>
            <td>0x00</td>
			<td> example[1] </td>
			<td> example[1] </td>
			<td> example + 1</td>
        </tr>
        <tr>
            <td>0x1002</td>
            <td>0x00</td>
			<td> example[2] </td>
			<td> example[2] </td>
			<td> example + 2</td>
        </tr>
        <tr>
            <td>0x1003</td>
            <td>0x00</td>
			<td> example[3] </td>
			<td> example[3] </td>
			<td> example + 3 </td>
        </tr>
        <tr>
            <td>0x1004</td>
            <td>0x00</td>
			<td> example[4] </td>
			<td> example[4] </td>
			<td> example + 4 </td>
        </tr>
        <tr>
            <td>none</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
            <td>:</td>
        </tr>
        <tr>
            <td>none</td>
            <td>0xffff</td>
            <td>0x00</td>
			<td> N/A </td>
			<td> N/A </td>
			<td> N/A </td>
        </tr>
    </tbody>
</table>

## Much more to talk about

There is much more to talk about. The above is a simplistic view of how memory gets allocated. For example, both [Java](https://www.geeksforgeeks.org/java-memory-management/)  and [C++](https://stackoverflow.com/questions/408670/stack-static-and-heap-in-c) use different parts of memory for different things: [the stack](https://www.scaler.com/topics/stack-operations-in-data-structures/), the heap, and static.

However, this was aimed as just a starting point.  I'll return to a more detailed discussion of this at a later stage.
