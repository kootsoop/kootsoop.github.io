---
title: 'Come On Down'
description: >-
 This is a brief writeup about an app that allows college professors to ensure that all students have a chance to contribute to class discussions.
date: '2019-11-27T10:05:49.398Z'
categories: []
keywords: []
slug: /@kootsoop/come-on-down
---

<img src="https://kootsoop.github.io/images/ComeOnDown-AppIcon.png" alt="Come On Down icon" width="100" height="100">

# Student Engagement : Come On Down

My colleague, [David Broderick](https://djbrod.github.io/) has a Lotto Barrel that he puts numbers into. Each number is identified with one individual student in his class.  
He spins the Barrel and chooses a number, and the student has to  answer the question / complete the exercise / make a comment about the discussion point.

The aim is to engage *all* the class, not just the "squeaky wheels" who will answer every question if you let them.

Rather than buy another Lotto Barrel, and to allow this technique to be used across multiple courses in a semester, I decided to develop an app to do the same thing.

## An App

As well as making keeping track of multiple classes easier, an app can add other things too.  One of the things I find difficult to do is to remember all my students' names.  I generally
get there by the end of semester, but it takes a while.

The app can make use of "Directory Information" that my college has about the student. One of these pieces of information is their student ID picture.  

Below is a first rough cut of my ideas of how the app will work.

![](https://kootsoop.github.io/images/ComeOnDown.png)

## First Cut

The first page of the app shows how to download a CSV file from Banner with the student names in it.  This can be loaded by the app to parse out the student names and IDs.

<img src="https://kootsoop.github.io/images/ComeOnDown-4.png" alt="Come On Down landing page." width="100" >

Once the CSV file is loaded, the app takes the user to a page with all the students' pictures on it.  CCSU classes are generally capped at 24 students, so I've used a 5 x 5 grid of students.

<img src="https://kootsoop.github.io/images/ComeOnDown-3.png" alt="Come On Down list of students in the class." width="100" >

To select a student, navigate to the *Choose Student* tab, and a ListView of students is shown.  Swiping down on the list causes it to be randomized and a student to be selected.

<img src="https://kootsoop.github.io/images/ComeOnDown-2.png" alt="Come On Down list view for selecting students." width="100" >

The selected student is shown by themselves, and the professor can then swipe left if the student is not present or swipe right to ackowledge that the student has answered the question / participated.

<img src="https://kootsoop.github.io/images/ComeOnDown-1.png" alt="Come On Down selected student view." width="100" >

## Other thoughts

Other things the app could do:

 * Allowing the courses to be named better. Banner outputs bizarre file names, and it's the same bizarre file name, so all the downloaded CSV files are just numbered versions based on when they were downloaded. 
 * Tapping on the student picture could bring up more information about them: their full name, their ID, how many times they've answered questions.
 * This is currently only working in Android. I need to get it running for iOS, too.



