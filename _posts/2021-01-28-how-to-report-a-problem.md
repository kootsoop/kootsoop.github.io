---
title: 'How to report a problem'
description: >-
 Sometimes people say to me "it doesn't work".  And I have to dig to find out what "it" is and what about "it" isn't working. So I thought I'd write up my thoughts on how to report a problem.
date: '2021-01-28T08:22:49Z'
categories: [life skills]
keywords: [daily]
slug: /@kootsoop/how-to-report-a-problem-2021
---
	Them: "It doesn't work!"

	Me: "What doesn't work?"

	Them: "What you said!"

	Me: "I say many things, which particular one this time?"

This is a conversation I have many times, and it always exasperates me.  So I thought I'd write up how people *should* report a problem.

## Should I report it?

The first thing I try before complaining that something doesn't work is I try doing the thing again. Many times this works, as [the IT Crowd knows.](https://www.imdb.com/title/tt0487831/)

<p align="center">
<img src="https://kootsoop.github.io/images/ITCrowd.jpg" width="300" heigh="200">
</p>

The second thing I do is I google the error message or the operation that I'm trying.  Often times there's an answer for that on Stack Overflow or elsewhere.  

### Learn google-fu

As an aside from the main point of this post, please learn some of the advanced features of Google's search engine.  The three pieces that I use most often are:

1. Put the search term that **must** be there in double quotes: ["Kootsookos".](https://www.google.com/search?q=%22Kootsookos%22)
1. If there is a term that's getting in the way of the search you really want to do, put a minus sign in front of that term. If I want to search about myself, and not my sister Alex, then use: ["Kootsookos" -Alex](https://www.google.com/search?&q=%22kootsookos%22+-alex)
1. If I want to search a particular site, not the whole internet, use the **site:** prefix. If I want to search about myself, not my sister Alex, and only on StackOverflow then I use: ["Kootsookos" -Alex site:stackoverflow.com](https://www.google.com/search?&q=%22kootsookos%22+-alex+peter+site:stackoverflow.com)

As you can see, that last search only returns a single page of search results. [There are other operators available](https://support.google.com/websearch/answer/2466433?hl=en) but those are the ones I use on a daily basis.

### How long should I do this?

Depending on the criticality of the problem and its resolution, I try to spend about 15 to 30 minutes trying to resolve the problem myself. Any more than that and I tend to get frustrated and find myself going around in circles or down rabbit holes. 

## Can I reproduce it?

I've decided I need to report the problem. What next?

Well, to be as helpful as possible to the person who will try to solve your problem, write down the steps you used to make it happen.  If you can't make it happen again, try to remember what you were doing when the problem happened.

This information is *invaluable*.

Otherwise you're likely to get the "It works on my machine" response.
 
<p align="center">
<img src="https://kootsoop.github.io/images/works_for_me.jpeg" width="100" heigh="100">
</p>

## What did I expect to happen?

The next part of reporting problems is to say what your expectations were.  What did you expect to happen?  And how does what really happened differ from that?

Sometimes, I have a misconception about what should have happened.  If the person dealing with your problem report can identify that misconception, it can save everyone much time.

## What did happen?

Capture as much information as you can about what actually did happen.  

At a minimum, this should be a screenshot of the error.  A **complete** screenshot, not just of the error message.  Sometimes there are other clues on the rest of the screen that help figure things out.

**Also** cut-and-paste the text of the error message.  The first thing that I usually do when someone reports an error is to google the error message. Being able to cut-and-paste it directly, instead of retyping it from the screenshot (which you've also sent) will mean I don't mistype something.

Other things that help:
* Log files.
* Source code files.
* Configuration files.
* Operating system type and version.
* Compiler (or JVM) type and version.

## How should I report it?

So, now we have as much information as can usefully be had. Let's report it.

Reporting problems is an exercise in communication. The more clearly you can communicate the problem and what you expect to happen about it, the better. So start with a good title.

### Title your problem clearly and succinctly.

If you're sending an email or entering the problem into a GitHub *issues* area, use a clear title.

Examples of good titles:

✅ Eclipse doesn't compile my C++ code.

✅ Repl.it says "error: no class declared in file"

Examples of poor titles:

❌ There's a problem with Eclipse.

❌ Repl.it is borked.

### Write down the steps you used to reproduce it.

Write down a step-by-step explanation of what you do to reproduce the error. If you can't reproduce it, write down what you think you did before it happened.

Make sure you give any data that you entered (**not** passwords or other credentials!).

### Report the error

Take a screenshot of the error. Also copy the text of the error.  Give any other information about the configuration you used to generate the error.  

If the issue is that the operation takes too long, say how long it took and how long you expected it to take.

### Expected output

What did you expect to happen and didn't?

If you have a screenshot of the correct operation, include that here.

### How important is resolving this?

Tell the person or system you're reporting the problem to how important it is to get this resolved. Give a suggested timeline. If your assignment is due at 11:59pm and you're having the problem at 11:52pm, there's not much that can happen.  But if you're having the problem at 8:00am, it's possible that you can get an answer in time.

### Respond to queries

When someone starts helping you, respond to their questions as quickly and as accurately as you can.  I've often found the best way to resolve things is to have a screen-shared Zoom call.

Be available.

# Life skills

While I'm targeting this specifically at the students I'm teaching, I believe the above is good advice for anyone in any field. It's specifically relevant to the software field, but any time you contact customer support keep some of this in mind.

