---
title: 'Take A Number: Technology Selection'
description: >-
  This is part of the continuing story of Take A Number. The previous episodes
  are:
date: '2019-03-07T17:47:17.624Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-technology-selection-918c7eccc4b4
---

This is part of the continuing story of _Take A Number_. The previous episodes are:

*   [Requirements / OOA](https://kootsoop.github.io/@kootsoop-take-a-number-requirements-ooa-bb2eb6f16e3c)
*   [High Level Architecture](https://kootsoop.github.io/@kootsoop-take-a-number-high-level-architecture-1c7db43a4d37)
*   [User Experience](https://kootsoop.github.io/@kootsoop-take-a-number-user-experience-30195b0e78f8)
*   [User Experience, Take 2](https://kootsoop.github.io/@kootsoop-take-a-number-user-experience-take-2-fe7bc70ca0b8)

This episode is going to take a slight different tack: I’m interested in using new technology, if it helps me do my job. Previously, I’ve used Amazon Web Services to:

*   Create an instance (EC2) and install all the services I require on it.
*   Create a load balancer, so I can use Amazon for HTTPS requests.
*   Create an SSL/TLS certificate for HTTPS requests.

and all of these are done using the various different interfaces.

To help me do this faster, I decided to try out [Amazon’s Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk) service. It claims to be an (almost) language agnostic way of deploying an application without needing to know the provisioning details.

### Architecture Revisited

[Recall that the architecture diagram](https://kootsoop.github.io/@kootsoop-take-a-number-high-level-architecture-1c7db43a4d37) looked like the deployment diagram below.

![Architecture deployment diagram.](https://kootsoop.github.io/images/1_*26gntiLwM5lcaFUG5TkwHA.png)
Architecture deployment diagram.

In the previous Architecture post, I mentioned the possibility of using the LAMP stack or the Microsoft stack. For simplicity, let’s take a different tack entirely: let’s use [Python](https://www.python.org/) as our “web server” and execution environment an [SQLite3](https://www.sqlite.org/index.html) as our database.

### Setting Up Elastic Beanstalk

After setting up an Amazon AWS account, I’ve clicked Create Application on the Elastic Beanstalk page.

![Create New Application dialog.](https://kootsoop.github.io/images/1_*hT2Z88my2YyO-sghCk0SGw.png)
Create New Application dialog.

I called the application **TakeANumber**, and I selected Python 3.6 as my environment of choice.

![Environment setup.](https://kootsoop.github.io/images/1_*iRJAhyV0c_wl_6kxAhs0xw.png)
Environment setup.

When I click on this green environment, I am taken to the Dashboard.

![Dashboard for Take A Number.](https://kootsoop.github.io/images/1_*m3XdLpes6r2pnSPUy6tk7Q.png)
Dashboard for Take A Number.

This Dashboard shows me the most recent logs, a top-level health indication, what version of my code I am running, and the configuration that is currently being used.

![Close up view of the **Upload and Deploy** button.](https://kootsoop.github.io/images/1_*bJfdS4VrayXHwzjnfXdS-w.png)
Close up view of the **Upload and Deploy** button.

To update my code, I just need to click the **Upload and Deploy** button in the middle, which allows me to upload a zip file of my code.

#### Initial Code

Amazon provides a very simple [example Python website (zip file!)](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/samples/python-v1.zip) that I’ve cut down a bit to check that I can access a local SQLite database.

def application(environ, start\_response):  
    init\_database()  
    response = welcome  
    path = environ\['PATH\_INFO'\]  
    logger.info("Path is called %s", path)  
    method = environ\['REQUEST\_METHOD'\]  
    logger.info("Method is called %s", method)  
    if method == 'GET':  
        try:  
            if path == '/register':  
                logger.info("Received register request!")  
                with sqlite3.connect('take\_a\_number.db') as conn:  
                    cursor = conn.cursor()  
                    rows = cursor.execute('SELECT \* FROM queues')  
                    for one\_row in rows:  
                        response = 'Register for ' + one\_row\[1\]  
        except (TypeError, ValueError):  
            logger.warning('Error!')  
    status = '200 OK'  
    headers = \[('Content-type', 'text/html')\]  
  
    start\_response(status, headers)  
    return \[response\]

if \_\_name\_\_ == '\_\_main\_\_':  
    httpd = make\_server('', 8000, application)  
    print("Serving on port 8000...")  
    httpd.serve\_forever()

This code (and some other Python setup code and HTML/CSS not shown) generates the web site:

> [https://tan.kootsoop.com](https://tan.kootsoop.com)

### What Next?

Next, I’m going to revisit my analysis classes and look at turning them into the design classes I’m going to need in Python to actually implement _Take A Number._
