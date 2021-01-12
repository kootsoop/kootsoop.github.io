---
title: 'Teaching data structures'
description: >-
 An attempt to write a journal for 2021.
date: '2021-01-12T08:21:49Z'
categories: []
keywords: [daily]
slug: /@kootsoop/teaching-data-structures-2021
---
This semester I am teaching [*CPSC 2232 Data Stuctures*](http://catalog.fairfield.edu/courses/cs/) in the computer science and engineering department at Fairfield University. This is the first time I've ever taught a course on data structures, so I've been furiously digging at various resources to bring myself up to speed with it.

The course description says:

 > This course covers abstract data structures such as queues, stacks, heaps, linked lists, trees, graphs, hash tables, and sorting. Students apply data structure concept in advanced programming.

 which is pretty short and sweet.

## Which language?

The computer language that the students are most familiar with is Java, but I've been asked to also teach the course in C++.  There are very few text books that do both, but
I've found a pair by Goodrich, Tamasia, and Mount ([C++](http://bcs.wiley.com/he-bcs/Books?action=index&bcsId=6383&itemId=0470383275)) / Goldwasser ([Java](http://bcs.wiley.com/he-bcs/Books?action=index&bcsId=8634&itemId=1118771338)) that cover both languages.

## How to introduce it?

Another aspect of this course is that the students may not have much programming experience before they take it.  Thankfully, the prerequisite course started them on their programming journey.

However, I still want to get across to them how fundamental data structures are to programming without getting bogged down in syntax.  So my first foray into this will be to start off with a **graphical** view of how the particular data structure works.

One of the things that bugs me about software engineering education is that there seems to be a disconnect between the computing hardware and the computing software.  The hardware has been following [Moore's Law](https://www.intel.com/content/www/us/en/silicon-innovations/moores-law-technology.html) and, in my view, this has led many software engineers to completely ignore *any* optimizations.

So, for this course, I want to start at the basic level and draw the data structures graphically first, before we start programming them.

Thankfully, there are [some nice examples](https://stackoverflow.com/a/45143147/12570) of this already available to get me started.

<p align="center">
<img src="https://i.stack.imgur.com/ze5zp.png" alt="Array shown graphically" width="500" height="200">
</p>

The diagram above was generated using the [GraphViz](https://graphviz.org/) software, which I've used before in generating directed graphs for college program prerequisite visualization.

The hope is that showing how the different data structures relate to actual memory locations will mean the students have a better appreciation of things that can go wrong with them.

## Assessment 

Another thing that I want for each student is to give individual feedback.  I can do this pretty easily for midterm and final exams using my online oral exam approach (needs to be written up!).  However, giving students individual, detailed feedback for all aspects of all assignments is time-consuming.

I've found a nice site called [Online GDB](https://www.onlinegdb.com/blog/) that allows instructors to set up assignments in the browser. It also allows students to complete the assignments in the browser.  Even better, it allows the instructor to set up simple input / output test cases.  Provided I put enough detailed test cases, the students can get detailed feedback on what their programs should be doing and what it's not doing.

We'll see how well that works... or not. 