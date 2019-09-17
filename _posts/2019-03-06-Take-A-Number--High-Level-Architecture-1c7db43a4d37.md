---
title: 'Take A Number: High Level Architecture'
description: >-
  So we’ve explored the requirements a little, now we have to decide how to do
  this.
date: '2019-03-06T15:03:54.074Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-high-level-architecture-1c7db43a4d37
---

So we’ve explored [the requirements a little](https://medium.com/@kootsoop/take-a-number-requirements-ooa-bb2eb6f16e3c), now we have to decide how to do this.

Let’s assume that everything we want to do will be done via a web browser and that no app will be involved. Obviously server-side code will be needed, but the aim is that neither the Customer and the Servicer require any app to be installed on their device.

### Why not an app?

#### Simplicity!

One slick trick on the [WapApp.Cards](https://wayapp.cards/) app is that it allows the Customer to download a ticket to their mobile device.

I spent a bit of time [working through the documentation on how to do that](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/PassKit_PG/YourFirst.html), and I decided it was too complicated for what I need. Even worse, if the Customer comes to all ten labs during a semester, they could end up with 20 new tickets in their Apple Wallet or Google Pay apps on their mobile phone, assuming that they need my help twice per lab on average.

The upside of using a ticket like this is that it makes it very easy to send the holder of the ticket a notification for when it’s their time to be seen.

#### What then?

All mobile smart phones have a web browser. It should be a simple matter to issue the Customer’s browser with a unique cookie to identify them, and to automatically refresh their browser to enable a “notification” to show them that they are next.

In this case, it won’t be a notification but it could be a browser alert dialog, or perhaps the color of the web page could just change.

Once the student is seen, the cookie can be deleted and the next time they browse to the Take A Number site, they’ll get a new number (and a new cookie).

### High Level Architecture

The UML deployment diagram below is a first cut at describing the actual components we’ll use to make the software.

![First cut at high level architecture for Take A Number.](https://cdn-images-1.medium.com/max/800/1*tL22doBYSUXD9AXVXEFHHw.png)
First cut at high level architecture for Take A Number.

#### Devices

The ServicerDevice and the CustomerDevice are both assumed to be mobile phones, though they could also be standard laptop or desktop computers.

The software components on the devices that are required are just a standard Web Browser. The web browsers have a URL and need to be able to store a cookie.

#### Connectivity

I initially drew the connections from the Web Browser components to the Web Server component on the Take A Number Server as HTTP / HTTPS, but HTTP is an inherently insecure protocol, so I removed that option.

Note that that potentially adds some cost to the project because an SSL certificate for the website will be required. If we use a hosting service like Amazon, though, it’s possible that the SSL certificate will be supplied for free (because of the other costs we will incur when using this service).

There are other security concerns, but I’ll leave that for a separate posting and write-up.

#### Server

The components on the server are just the Web Server and the Database. I haven’t specified what they will be, but I suspect I’ll be using MySQL as the database and Apache as the web server.

Other viable options for these would be Microsoft’s IIS for the web server and SQL Server for the database. I’m going with MySQL and Apache because of my more recent familiarity with them.

Note that we haven’t (quite yet) decided what language to write the web server’s functionality in.

### What’s Next?

Now that we’ve decided on the high level architecture, we need to make a decision about the language used to implement this and then we can convert our _analysis_ classes into _design_ classes.

What those design classes look like will depend on the language we use to implement the Take A Number website.

Another thing we need to think about is: what will it look like? What is the actual user flow we will use? User experience is key to make the system of value to both the Customer and the Servicer.