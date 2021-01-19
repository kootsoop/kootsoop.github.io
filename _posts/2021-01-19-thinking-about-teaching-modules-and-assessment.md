---
title: 'Thinking about teaching: Modules & Assessment'
description: >-
 The CAE at Fairfield is putting on an asynchronous course about teaching. This is the second (of three) pieces about how to organize the course.
date: '2021-01-15T08:23:49Z'
categories: []
keywords: [daily]
slug: /@kootsoop/thinking-about-teaching-goals-and-objectives-2021
---

<meta property="og:image" content="https://kootsoop.github.io/images/ComeOnDown-AppIcon.png" />

This is the second in a series of three posts going through the bullet points below.

 * ~~How to structure my course priorities and assessment using *goals and objectives*~~ , [covered here](https://kootsoop.github.io/@kootsoop-thinking-about-teaching-goals-and-objectives-2021/)
 * How to structure the delivery of my course by using modules, and
 * Using online tools such as [Quip](https://quip.com/) to allow collaborative discussions about the subject matter of the course.

## Course goals

The goals [I identified previously](https://kootsoop.github.io/@kootsoop-thinking-about-teaching-goals-and-objectives-2021/) are:

 1. Students will be able to analyse programming problems and choose the most appropriate data structure for storing the information required.
 1. Students will be able to explain, graphically, how the data structures work and achieve their functionality and performance.
 1. Students will be able to write Java and, optionally, C++ implementations of the data structures examined.

So the pieces that need to be modularized are:

 * What is a data structure?
 * How do you draw data structures?
 * How does one analyse a problem with respect to data structures?
 * What data structures are to be learnt?
 * How do data structures get implemented in Java and C++?

Let's see what specific modules that makes up.

## What is a data structure?

I'd title this module *Introduction to data structures*. The aim is to get the students thinking about organization of information.  The introduction should build a simple data structure from the ground up: an array.

## How do you draw data structures?

The easiest way to draw data structures will not be to use a specific notation, but to just use boxes, circles, lines, and arrows. I intend to try doing this using [GraphViz](https://graphviz.org/), but students should be able to use whatever drawing tool they like.  I will recommend [Lucid.App](https://lucid.app/documents#/dashboard).

For example, the diagram

<img src="https://kootsoop.github.io/images/array.png" alt="Array shown graphically" >

can be generated using

	digraph {
		node [shape=plaintext, fontcolor=red, fontsize=18];
		"Indices:" -> "Arrays:" -> "Pointers:" -> "Values:" [color=white];

		node [shape=record, fontcolor=black, fontsize=14, width=4.75, fixedsize=true];
		indices [label="0 | 1 | 2 | 3| 4 | 5", color=white];
		arrays [label="<f0> A[0] | <f1> A[1] | <f2> A[2] | <f3> A[3] | <f4> A[4] | <f5> A[5]", color=white];
		pointers [label="<f0> A | <f1> A+1 | <f2> A+2 | <f3> A+3 | <f4> A+4 | <f5> A+5", color=white];
		values [label="<f0> 23 | <f1> 54 | <f2> 6 | <f3> 42 | <f4> 123 | <f5> -1", color=blue, fillcolor=lightblue, style=filled];

		{ rank=same; "Indices:"; indices }
		{ rank=same; "Arrays:"; arrays }
		{ rank=same; "Pointers:"; pointers }
		{ rank=same; "Values:"; values }

		edge [color=blue];
		pointers:f0 -> values:f0;
		pointers:f1 -> values:f1;
		pointers:f2 -> values:f2;
		pointers:f3 -> values:f3;
		pointers:f4 -> values:f4;
		pointers:f5 -> values:f5;
	}

## How does one analyse a problem with respect to data structures?

Using the introductory array data structure, we can examine the costs of doing various operations on the array: insertion, deletion, etc.  This will talk about the *runtime* complexity of the algorithm.  We also want to analyze the *memory use* of the algorithm.

The key will be to [introduce big-O notation](https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/) and get the students to apply it to various problems throughout the course.

## What data structures are to be learnt?

The course description is:

 > This course covers abstract data structures such as queues, stacks, heaps, linked lists, trees, graphs, hash tables, and sorting. Students apply data structure concept in advanced programming.

so that pretty much sums up the technical content. However, I'd add memory and arrays to the list, but that will be done in the introductory section mentioned above.

## How do data structures get implemented in Java and C++?

Finally, there needs to be a module about how to get [Eclipse](https://www.eclipse.org/downloads/) installed and running for both Java and C++.

# Module list

Below is my first attempt at defining modules for the class.  Many of the specific data structure ones can probably be merge together. For example, heaps and stacks should be discussed together, as should trees and graphs.

| Module name | Possible assessment |
| ------------| ---------- | 
| Introduction to data structures | Quip document definition of a data structure | 
| Drawing data structures | Drawing an array and some operations | 
| Big-O analysis | Analyze array operations |
| Queues| Draw, analyze, implement |
| Stacks| Draw, analyze, implement |
| Heaps| Draw, analyze, implement |
| Linked lists| Draw, analyze, implement |
| Trees| Draw, analyze, implement |
| Graphs| Draw, analyze, implement |
| Hash tables| Draw, analyze, implement |
| Sorting| Draw, analyze, implement |
| Eclipse IDE | Install| 

# What next?

Next on my to-do list is to address the final course goal: *Students will be able to write Java and, optionally, C++ implementations of the data structures examined.*

After that, I might write in more detail about how I intend to assess student work for the data structures course.

 