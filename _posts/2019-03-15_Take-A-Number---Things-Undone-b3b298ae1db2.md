---
title: "Take A Number\_: Things Undone"
description: >-
  From the “First Cut” part of this series, there were several things that were
  let undone that I felt needed to be addressed.
date: '2019-03-15T11:59:32.677Z'
categories: []
keywords: []
slug: /@kootsoop/take-a-number-things-undone-b3b298ae1db2
---

From the [“First Cut”](https://medium.com/@kootsoop/take-a-number-first-cut-8222ad39b729) part of this series, there were several things that were let undone that I felt needed to be addressed.

The list was:

*   **Scalability testing:** This was reported on [in a previous post.](https://medium.com/@kootsoop/take-a-number-first-performance-3914bb61d5c4) The conclusion of that was that, as-is, for the current use cases, the system performs well. ✅
*   **Use HTTP POST Requests For Changing System State**: This was an oversight on my part; the system should have always started with adhering to the HTTP protocol. The latest version now has this implemented correctly. ✅
*   **Reliability**: The system hasn’t locked up again after the first time I saw it, so I haven’t had a chance to debug this at all. ❓
*   **User Interface**: As part of the HTTP POST update, better naming for buttons has been introduced… but the garish color scheme needs to go. I’ve gone to a simpler grey color scheme that is somewhat better… but I do want to get it to work better with rotations.❓

![Take A Number on a Mac in Chrome.](https://cdn-images-1.medium.com/max/800/1*zk7yUDhv5tPGM6AXM4tmSQ.png)
Take A Number on a Mac in Chrome.![Take A Number on Safari on an iPhone. Oops!](https://cdn-images-1.medium.com/max/800/1*tC2NLpvgiF5nqpg2cSVGcQ.jpeg)
Take A Number on Safari on an iPhone. Oops!

*   **Multiple Servicers**: Multiple servicers can currently access the one queue, it’s just there’s no way to identify one servicer from the other. ❓
*   **Keep Information Between Code Updates**: I tried to use the appdeploy pre and post [ebextensions](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/ebextensions.html) available in Elastic Beanstalk, but something I did completely corrupted the environment. Luckily, it took me about five minutes to delete that server and set up a new, uncorrupted one. After a but of work, that seems to have been resolved. The main problem was that the app gets deployed at **/opt/python/bundle/<<N>>/app** where **<<N>>** is the number / version of this deployment. Because I’ve been putting the SQLite file in the app directory, when it’s deployed to a new directory, the database needs to be reformed. Moving the database file to a known directory means that it will be kept during code updates. Uploading it to the Amazon S3 bucket in the appdeploy/pre step and restoring it in the appdeploy/post step means that I can get at it if I need to change instances. ✅
*   **Analytics**: This needs more thought: what are the most useful stats for the queues? I think the sorts of numbers I’d be interested in are: how long between when a Customer asks for help and when they get seen (the previous Customer is finished), how long each Customer takes to get serviced (the time between Customer finishes), and the total time between when the Customer asks for a number and the Servicer closes that number out. I’ve added this to the list view as shown below. ✅

![Current view of stats on each queue. Probably needs to be easier to read. 😃](https://cdn-images-1.medium.com/max/800/1*Egd4YbAU_nXXOyOnDVVvWQ.png)
Current view of stats on each queue. Probably needs to be easier to read. 😃

### What’s Next?

Next I’ll look at adding analytics, but first I’m going to take a break from writing about this app and write up some thoughts on Blockchain after the #InsurTechHfd talks I went to last night.