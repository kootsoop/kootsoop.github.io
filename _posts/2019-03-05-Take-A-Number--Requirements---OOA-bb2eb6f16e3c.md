---
title: 'Take A Number: Requirements / OOA'
description: >-
  During the lab classes I teach, I find it hard to give my attention equally to
  all student groups.
date: '2019-03-05T20:03:15.303Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-requirements-ooa-bb2eb6f16e3c
---

During the lab classes I teach, I find it hard to give my attention equally to all student groups.

I’ve been using part of the [WayApp.Cards](https://wayapp.cards/) app that issues deli-counter style numbers and tickets that can be saved in the iOS or Android wallets.

However, that app can do much more than I need, so I thought I’d make my own, simpler, app that does just what I need: the deli-counter part.

### Shall Statements

#### Functional Requirements

The Take A Number system shall allow the Customer to take a number.

The Take A Number system shall allow the Servicer to see the next number to be serviced.

The Take A Number system shall notify the Customer associated with the next number to be serviced.

The Take A Number system shall allow the Servicer to register with the system.

The Take A Number system shall allow the Servicer to see how many people are yet to be served.

#### Non-Functional Requirements

The Take A Number system shall issue notifications to the Customer in less than a second.

### Use Cases

This is what it needs to do.

![](https://kootsoop.github.io/images/1_fcpzFmX0L9QYdAh_c9GV2w.png)

It needs to:

*   Register the Lecturer or Store (Servicer) with the system.
*   Allow a Customer to Take A Number.
*   Allow the Servicer to get the next number to service and notify the Customer with that number that it’s their turn.
*   Allow the Servicer to see the length of the queue.

To speed things up a little, I’ve added the simple use case reports to each of the sequence diagrams blow.

### Analysis

After a bit of playing around, this yields the following analysis classes. Note that I’ve taken the braindead approach of generating an analysis class for:

*   Every line in the use case diagram connecting an actor with a use case.
*   Every use case (except that I merged two of them).
*   Some of the nouns in the use case reports.

![](https://kootsoop.github.io/images/1_9mnd2zU1pXqcbkgtdx-jYQ.png)

### Sequence Diagrams

#### Use Case: Register

![](https://kootsoop.github.io/images/1_xMNY8Ykh9vIicTITd5Vb9w.png)

#### Use Case: Take A Number

![](https://kootsoop.github.io/images/1_IUlVlzz4aUVAZvl5JTsP7A.png)

#### Use Case: Service Next Number

![](https://kootsoop.github.io/images/1_UqFgI1zb72SrkHkDwq9F8g.png)

#### Use Case: See Queue Length

![](https://kootsoop.github.io/images/1_Q69jg4FX8G9bswfrzJYIEw.png)

### What’s Next?

Now that we’ve fleshed out the shall statements a little with use cases and analysis classes, we need to switch to high level design to answer the question: [what technology are we going to use to implement this?](https://kootsoop.github.io/@kootsoop-take-a-number-high-level-architecture-1c7db43a4d37/)
