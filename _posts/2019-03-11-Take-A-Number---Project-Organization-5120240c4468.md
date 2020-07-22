---
title: "Take A Number\_: Project Organization"
description: >-
  After taking a stab at the design classes, the next step was to start up a
  project. As I said earlier, I’ve decided to develop this in…
date: '2019-03-11T15:43:07.279Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-project-organization-5120240c4468
---

After taking a stab at the [design classes](https://kootsoop.github.io/@kootsoop-take-a-number-analysis-to-design-b005ffef47ac), the next step was to start up a project. As I said earlier, I’ve decided to develop this in Python using the [PyCharm CE](https://www.jetbrains.com/pycharm/) development environment.

The Amazon Elastic Beanstalk system comes with an example Python server, so I decided to just start with that and expand it.

### Example Amazon Code

The example code is essentially as below.

If there is a POST method coming in, it does one thing, otherwise it’ll just print the welcome message.

![](https://cdn-images-1.medium.com/max/800/1*NmE1nANv7-jr7s0U9R1Lxg.png)

The part at the end is just setting up the server to listen on port 8000 for incoming HTTP requests.

The GET requests to this just return what is shown in the screen capture below.

![Screen capture of Amazon example code.](https://cdn-images-1.medium.com/max/800/1*oFn2ExVCFXjfXKkeYvt3cg.png)
Screen capture of Amazon example code.

#### Good Things

The main good thing about this code is how relatively simple it is. There is just one **application.py** file that contains the logging, the HTML, and the coed.

#### Problem: No Tests

However, there are a few problems with this example. The first is that, given that we are going to use the test-driven development approach, there are no tests to start with.

#### Problem: Code Structure

Another problem, from the **Take A Number** perspective, is that there is no real code structure to follow.

### Code Structure

After a bit of fiddling, I decided on the following structure for the project.

![Take A Number project structure in PyCharm CE.](https://cdn-images-1.medium.com/max/800/1*cPOvt7XAesD3HPjrkJeV6w.png)
Take A Number project structure in PyCharm CE.

#### tests

I decided that, rather than having the tests in the same directory as the code it’s testing, that they should live in a subdirectory called **tests**.

In the screenshot above, there are tests for the application, customer, queues, and service classes. At this stage, apart from a placeholder registration file, there is no code for the registration use case.

#### application.py

This file is what came with the original Amazon example. It contains the HTML of the project and starts the server. To make things a bit more object-oriented, I decided to make the code here a little simpler as indicated below.

![](https://cdn-images-1.medium.com/max/800/1*2PgfqSjQLY-pNkUaUkEGBg.png)

All the code for this application is in the **TakeANumber** class.

#### take\_a\_number.py

The main class is the TakeANumber class. It’s pretty simple so far, as can be seen from the method signatures in the screenshot below.

![Outline of the TakeANumber class.](https://cdn-images-1.medium.com/max/800/1*XH2JChQC9oU4PCZlJ2dD2g.png)
Outline of the TakeANumber class.

The main entry point is, as can be seen from the application.py file, the **run()** method. The **parse\_path()** method determines what sort of call has come into the system, and deals with it either using the **customer\_response()** or **servicer\_response()** methods. The **replace\_placeholders()** method is a utility method for updating the contents of the HTML that comes from application.py.

One somewhat frustrating thing about Python, for a C programmer, is that there is no switch statement available. However, because Python has associative arrays (AKA [dictionaries](https://docs.python.org/2/tutorial/datastructures.html#dictionaries)), we can do something like this instead:

![Responses for different incoming URL paths.](https://cdn-images-1.medium.com/max/800/1*KDde5mPTG5VsZiK2AWal1Q.png)
Responses for different incoming URL paths.

So the call to **customer\_response()** is done using **responses\[‘customer’\](),** and I can check to see if the key exists by checking **responses.keys()**.

#### customer.py

The Customer class generates the required response using **get\_response()** if this is an existing customer an **get\_new\_number()** if it’s a new customer. The only dependency for this class is the queue.

![Outline of the Customer class.](https://cdn-images-1.medium.com/max/800/1*4UarW_7oOpsY01rXl4yd2g.png)
Outline of the Customer class.

#### service.py

The Service class generates the required response using **get\_current\_status()** if the standard polling is happening or **next\_customer()** if the servicer wants to indicate that they’ve finished serving the current Customer number.

![Outline of the Service class.](https://cdn-images-1.medium.com/max/800/1*FDWMzPCTOhBtwUsQGsnjOQ.png)
Outline of the Service class.

#### queues.py

The queues class is the most complex class here. It’s responsible for handling all the possible queues managed by the system.

**create\_queue()** allows a new queue to be created.

**get\_queue\_length()** gets the length of the current queue: people with a number but not currently being served.

**serve\_next\_number()** closes the current ticket and opens the new one.

**add\_to\_queue()** allows a new ticket number to be issued.

**get\_current\_number()** returns the number currently being served by the identified queue.

**get\_number\_of\_queues\_named()** is a, probably mis-named method, that counts the number of queues with the given ID.

**is\_in\_queue()** checks whether the given **customer\_id** is in the given queue.

![Outline of the Queues class.](https://cdn-images-1.medium.com/max/800/1*CowyPGlhCdUhUOhXBX4Hog.png)
Outline of the Queues class.

#### log.py

This class was introduced because of the haphazard way the logging was set up in the original Amazon example.

#### registration.py

This is a placeholder class for the next set of functionality. Given the signatures of the Customer and Service classes, I expect this will change to take the **database\_name**… or I will change the other classes to take the **queue** as a constructor parameter.

![Placeholder Registration class.](https://cdn-images-1.medium.com/max/800/1*28Xdp6_h9NGuWpyR4FT6mQ.png)
Placeholder Registration class.

### Tests

The nice thing about PyCharm CE is that I can execute and debug tests within the IDE.

![Running unit tests.](https://cdn-images-1.medium.com/max/800/1*GZk6VSg72q3timK3hiJLSA.png)
Running unit tests.

I currently have 30 tests.

![Results of test run.](https://cdn-images-1.medium.com/max/800/1*GImIEzCo8ucUl1RCMMqtOA.png)
Results of test run.

And I can debug specific tests too.

![](https://cdn-images-1.medium.com/max/800/1*-DDfcIEfEsN132DwVtLD5g.png)

Even better, the IDE allows unit tests to be run automatically whenever a change is made to the code. This is one by toggling the indicated button in the screenshot below.

![Button that allows unit tests to be run on code changes.](https://cdn-images-1.medium.com/max/800/1*a9NwUkUKfKdMS8gBt8IPNA.png)
Button that allows unit tests to be run on code changes.

### What’s Next?

The next part of this series will dig a little deeper into [how I’ve implemented this so far…](https://kootsoop.github.io/@kootsoop-take-a-number-first-cut-8222ad39b729)
