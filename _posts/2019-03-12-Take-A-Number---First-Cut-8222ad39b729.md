---
title: "Take A Number\_: First Cut"
description: "My first cut at Take A Number is now “complete”\_: as far as I can tell, it does what I wanted it to do. This post runs through some of the…"
date: '2019-03-12T14:37:20.891Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-first-cut-8222ad39b729
---

My first cut at Take A Number is now “complete” : as far as I can tell, it does [what I wanted it to do.](https://kootsoop.github.io/@kootsoop-take-a-number-requirements-ooa-bb2eb6f16e3c) This post runs through some of the implementation details, and checks to see what else might need to happen to make this workable.

### Functional Requirements

#### The Take A Number system shall allow the Customer to take a number.

This is done by the Customer navigating to the URL

**http://tan.kootsoop.com/<<queue\_id>>/customer/0**

If four people had already requested a number, then this is what it looks like:

![](https://kootsoop.github.io/images/1_Jy285My6_YsFFdDgfYMKNw.png)

And the URL gets rewritten to:

**http://tan.kootsoop.com/<<queue\_id>>/customer/5**

#### The Take A Number system shall allow the Servicer to see the next number to be serviced.

At the same time, the Servicer view looks like:

![](https://kootsoop.github.io/images/1_QFpXlGLQcuV-GcFOa-j8Ug.png)

This can be had from the URL:

**http://tan.kootsoop.com/<<queue\_id>>/servicer**

#### The Take A Number system shall notify the Customer associated with the next number to be serviced.

At the same time, customer #3 will see:

![](https://kootsoop.github.io/images/1_hGIGhwOHib-r1GVJyJgNLQ.png)

#### The Take A Number system shall allow the Servicer to register with the system.

To register a new queue, the Servicer just needs to call the URL:

**http://tan.kootsoop.com/<<queue\_id>>/register**

after which they will be redirected to the URL:

**http://tan.kootsoop.com/<<queue\_id>>/servicer**

Note that this is problematic in a couple of ways:

*   There is zero security on the creation of queues. Anyone can create a queue.
*   HTTP GET requests should not change the system state. For creating new queues, and even updating to the next serviced customer, HTTP POST requests should be used.

#### The Take A Number system shall allow the Servicer to see how many people are yet to be served.

This is shown in the Servicer view above, but two more can be seen in the screenshots below, which will be visible after the Servicer hits the Done! button.

![](https://kootsoop.github.io/images/1_vXncGC9p1i8Jn5hB9wCyAg.png)
![Various views of the system from the Servicer viewpoint.](https://kootsoop.github.io/images/1_NI-mByqG4GknP40ve5YUYA.png)
Various views of the system from the Servicer viewpoint.

Once there are no more Customers to be served, the system shows the display below.

![“All done!” view of Take A Number.](https://kootsoop.github.io/images/1_nkL9JFr6U5gJZdRqRWgetQ.png)
“All done!” view of Take A Number.

### Non-Functional Requirements

#### The Take A Number system shall issue notifications to the Customer in less than a second.

Because of the way I implemented the system, I’ve backed off on this performance requirement. The system will let the Customer know it’s their turn within about 5 seconds of the Servicer hitting the Done! button for the previous customer.

This is because the way the “notifications” happen is by refreshing the page automatically every five seconds. Depending on the timing, this may mean it can take 5 seconds for the update to make it to the Customer after the Servicer is ready.

### Things Done

The system is currently set up to show everything through the same simple HTML page made up of two **<div>**s.

![Basic HTML.](https://kootsoop.github.io/images/1_YW3AixU_VCbu7PGAfkNDxg.png)
Basic HTML.

As you can see, there’s nothing there by default. Once the page is loaded, the **replaceContent()** method is called to update the **<div>**s.

![Javascript used to implement the update.](https://kootsoop.github.io/images/1_N_ozi27N3nIOZQgaCdIfKw.png)
Javascript used to implement the update.

Note that I’ve used the **history.replaceState()** Javascript method. This method replaces the current URL with a new URL, rather than creating a new URL in the browser history. I’ve taken this option to stop the user hitting the back button on the browser and creating a new Customer or queue.

There are four items that change for each page:

*   **NOW\_SERVING**: This is the top (green) part of the text in the page regardless of whether the Customer or Servicer is using it.
*   **QUEUE\_LENGTH**: This is the bottom (magenta) part of the text in the page.
*   **NEW\_URL**: For some options, creating a new number as a Customer or creating a new queue as the Servicer, the URL needs to be overwritten.
*   **DISPLAY\_BUTTON**: This updates the **display:** part of the CSS for the **Done!** button.

The refresh is done using the meta tag below.

![Refresh meta tag.](https://kootsoop.github.io/images/1_-lTvfmsVvNuu4XJxBUQp1A.png)
Refresh meta tag.

### Things Undone

There are many things left undone that should be done.

#### Security

As mentioned above, the first thing that needs improving is the security of the system. There is no [personally identifiable information (PII)](https://www.lifelock.com/learn-identity-theft-resources-what-is-personally-identifiable-information.html) in the system like names, addresses, or phone numbers. However, the system is vulnerable to malicious users creating new queues or creating many new users in a queue.

#### Scalability Testing

To see how big an issue the Security piece is, and to see if the deployed system will work with the use case I have in mind (12 student groups in a lab requiring my attention), I want to do some scalability testing using [JMeter](https://jmeter.apache.org/). This will also allow me to see how bad the security issue is if either many queues or many Customers are being created.

#### Use HTTP POST Requests For Changing System State

More of a technical issue is that the GET requests for servicing a Customer and creating a new Customer are done using GET requests, which is not compliant with HTTP. GET requests are supposed to be idempotent and safe, as pointed out by oded on the [Software Engineering Stack Exchange site](https://softwareengineering.stackexchange.com/a/188861/2722).

![Information about HTTP GET on Stack Exchange’s Software Engineering site.](https://kootsoop.github.io/images/1_fcUAcs3hGNzr76exuPVJsg.png)
Information about HTTP GET on Stack Exchange’s Software Engineering site.

#### Reliability

While developing this Python code and with other, more commercial, Python code, I’ve experienced the Python server locking up. I was never able to pinpoint the problem on the commercial system, so it would be good to figure out what’s happening here.

#### User Interface

Needless to say, the user interface is butt-ugly. I started with the Amazon example code, and just modified it slightly. It would be nice to get a prettier user interface that deals with mobile phone changes more sensibly. See the screenshot below or an example of what it currently doesn’t do well.

![The Take A Number site on a mobile device in landscape mode.](https://kootsoop.github.io/images/1_sWNCbsLGmyatsseHKbS_nw.jpeg)
The Take A Number site on a mobile device in landscape mode.

#### Multiple Servicers

When I first showed the system to my wife, she thought it should be possible for multiple Servicers to use the system. The system currently assumes a single Servicer per queue, or at least there is not distinction between many people connected to the system as Servicers.

#### Keep Information Between Code Updates

Because code updates completely wipe the file system where it’s deployed, this means the SQLite3 file that the system uses as a database is also completely wiped. It would be nice to be able to keep the information across code updates.

#### Analytics

As someone who has done lots of analytics on apps, it’s been bugging me that I’ve completely left out any analytics to keep things simple. Now that the system is working, it’d be nice to see how long each Customer takes to be served and how long the Servicer spends on each customer.

### What’s Next?

I’m going to start working through the Things Undone list above, probably starting with hitting the site with JMeter to see if I can bring it down.
