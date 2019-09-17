---
title: 'Take A Number: User Experience'
description: >-
  Now that we’ve decided on the high level architecture for Take A Number, we
  need to think about how the users will use it.
date: '2019-03-06T16:17:21.897Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-user-experience-30195b0e78f8
---

Now that we’ve decided on the [high level architecture](https://medium.com/@kootsoop/take-a-number-high-level-architecture-1c7db43a4d37) for Take A Number, we need to think about how the users will use it.

Let me start by saying I am not a User Experience expert. However, that doesn’t mean I shouldn’t at least try to think about how the user will perceive the Take A Number application / website.

### User: Customer

The Customer is the person who wants to be served, given that the Servicer is currently busy serving someone else.

Their view of the website should be something like this.

![How the Customer view of the website changes.](https://cdn-images-1.medium.com/max/800/1*Rxr3jtBgDRMAYQvVmuyb4g.png)
How the Customer view of the website changes.

I generated this mockup in [Balasmiq Mockups](https://balsamiq.com/wireframes/desktop). This is a very simple, but very quick way of generating user interface wireframes to try out flows of applications. It is especially good because it’s all in black and white: this and the “unprofessional” sans font indicates that it’s **not fit for production** and is only a draft.

The idea is that the Customer simply navigates to the URL that the Servicer tells them to go to. Eventually, for this exercise, it will probably end up being something like https://tan.kootsoop.com but this is still in development (as at March 6th, 2019).

The information displayed is this Customer’s number and the number of the Customer currently being served. When it’s this Customer’s turn, the page simply says “It’s your turn.”

Apart from entering the correct URL, the Customer doesn’t need to do anything more. The browser will refresh by itself.

### User: Servicer

The Servicer is the person who will be helping the queue of Customers.

Their workflow is a little more complex than that of the Customer, but not overly so.

![How the Servicer view of the website changes.](https://cdn-images-1.medium.com/max/800/1*nTEJtMCbU8Wa2poRUL-HUw.png)
How the Servicer view of the website changes.

This view of the page shows Customer number currently being served, the next number to be served, and has a button that allows the Servicer to go to the next Customer.

This page does not need to be refreshed automatically, the updates happen when the **Done** button is pressed.

The URL for this site will need to be different from that of the Customer. However, once the Servicer has registered with the website, navigating to the Customer URL should bring the Servicer to this interface. Note that this means the Servicer cannot also be a Customer.

For the use case I envision (my own) I do not see this as a problem.

### What’s Next?

As [mentioned previously](https://medium.com/@kootsoop/take-a-number-high-level-architecture-1c7db43a4d37), there are many security concerns. The next piece will attempt to address the most egregious of them.

However, [Vicki Lane](https://www.linkedin.com/in/vickilane/) of [Square V Design](http://www.squarevdesign.com/) has given me some criticisms of this post, so I’ll try to address these first.