---
title: 'Take A Number: Analysis to Design'
description: >-
  Now that I understand the problem and have selected the technology I’m going
  to use to implement the take a number system, I need to move…
date: '2019-03-11T02:05:42.445Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-analysis-to-design-b005ffef47ac
---

Now that I [understand the problem](https://medium.com/@kootsoop/take-a-number-requirements-ooa-bb2eb6f16e3c) and have selected the [technology I’m going to use](https://medium.com/@kootsoop/take-a-number-technology-selection-918c7eccc4b4) to implement the take a number system, I need to move from my analysis classes:

![Analysis classes from simplistic conversion of use case diagram.](https://kootsoop.github.io/images/1_9mnd2zU1pXqcbkgtdx-jYQ.png)


to my design classes:

![Analysis Class to Design Class mapping.](https://kootsoop.github.io/images/1_se98f_guITy6PU3JmVBngQ.png)


Recall that the green items are my **<<interface>>** classes, the red items are my **<<controller>>** classes and the purple items are my **<<entity>>** classes.

As is usual with analysis classes, they don’t necessarily represent the way the real software will be organized.

In this case, the **<<interface>>** classes are too numerous, an so I’ve merged the five analysis classes Registration, ServiceCustomer, SeeQueueLength, TakeANumberNotification, and TakeANumber into three Python modules registration.py, service.py, and customer.py.

All the **<<controller>>** analysis classes, I’ve merged into a single module. The RegistrationStatus **<<entity>>** is a little too small for a class on its own, and the Queue has its own module.

### Missing: Database

As you may recall, the architecture I chose included a web server and a database.

![](https://kootsoop.github.io/images/1_26gntiLwM5lcaFUG5TkwHA.png)

But the database doesn’t show in the design classes. This is because, [as I posted before](https://kootsoop.github.io/@kootsoop-take-a-number-technology-selection-918c7eccc4b4/), I’ve decided to use [SQLite](https://www.sqlite.org/index.html) as my database, and this is accessible directly as a Python library.

### Missing: Web Server

Also missing is what sort of a web server I’m going to be using. [Previously](https://kootsoop.github.io/@kootsoop-take-a-number-high-level-architecture-1c7db43a4d37/), I mentioned IIS or Apache. However, again Python has a simple [implementation of a web server](https://docs.python.org/2/library/wsgiref.html) that means I won’t have to bother with either of those.

### What Next?

[The next step is to write the code!](https://kootsoop.github.io/@kootsoop-take-a-number-project-organization-5120240c4468/) To do this, I’m going to be using the [PyCharm CE IDE](https://www.jetbrains.com/pycharm/) from Jetbrains, because I liked the IntelliJ-like interface and I’m going to use the [test-driven development](https://medium.freecodecamp.org/test-driven-development-what-it-is-and-what-it-is-not-41fa6bca02a2) approach because I like having test coverage of my code.