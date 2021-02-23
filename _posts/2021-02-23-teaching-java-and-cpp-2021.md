---
title: 'Teaching Java and C++'
description: >-
 How to teach in both Java and C++
date: '2021-02-22T08:21:49Z'
categories: [data structures]
keywords: [daily]
slug: /@kootsoop/teaching-java-and-cpp-2021
---
The *Data Structures* course I'm teaching this semester is using both Java and C++ as the language of instruction.  The students have more experience in Java than in C++.

# Text books

After looking at the notes that two previous Fairfield faculty have given, I decided that I wanted to use two different books for Java and C++.  Thankfully, Goodrich and their co-authors have two very similar books, the covers of which are shown below.

<a href="http://bcs.wiley.com/he-bcs/Books?action=index&bcsId=8634&itemId=1118771338">
<img src="https://kootsoop.github.io/images/java-book.jpg" width="250" height="300"></a>
<a href="http://bcs.wiley.com/he-bcs/Books?action=index&bcsId=6383&itemId=0470383275">
<img src="https://kootsoop.github.io/images/cpp-book.png" width="250" height="300"></a>

## Similarities

Both books have very similar approach to the topic, as may be expected.  The good thing about both of them is that they tend to introduce data structures using pseudo code first. This makes it easier to explain the algorithm in a language-agnostic way. They use the same pseudo code format, which makes it easier to switch between books.

Both books use similar examples, and have roughly the same order of topics.

## Differences

Funnily enough, where the two books differ is in the details of the languages.

Syntax is a big difference.  I've already noticed some confusion between the Java way of doing things and the C++ way.

One thing I'm not sure that the students quite get yet is the difference between Java running in a Virtual Machine, and the C++ program running natively on the computer.  Both languages require "compilation," but only in some cases does the Java code get compiled all the way to machine code.

The other big difference, is in the available libraries in both languages.  Mostly, for now, I'm avoiding using them as I want the students to think about the details of implementation of data structures, rather than just interface translation between the required data structure and the one that a Java or C++ library supplies. There will be time enough for using those when we get to more complex data structures.

# Other things

## Automatic testing

[As I wrote earlier](https://kootsoop.github.io/data%20structures/@kootsoop-using-github-classroom-1-2021/), I'm using GitHub Classroom for distributing assignments.  One thing that I've noticed is that, even though the available tests there are pretty good, the students don't get to see what tests are run. Because of this they sometimes get confused when they're one character off what the test is looking for, but the test still fails.

So what I've moved towards is to have more tests in the code that I release. That way, the students can see what tests are being run explicitly, and perhaps that'll avoid some of the confusion I've seen to date.

## Curation

[I also wrote earlier](https://kootsoop.github.io/data%20structures/@kootsoop-thinking-about-teaching-collaboration-2021/) about using the idea of *curation* of data in teaching data structures.  So far, this seems to have been going pretty well, with lots of different answers to the questions about **What is an X?** where **X** is array, linked list, stack, queue, etc.

