---
title: 'Parler being pulled'
description: >-
 An attempt to write a journal for 2021.
date: '2021-01-11T08:33:49Z'
categories: []
keywords: [daily]
slug: /@kootsoop/parler-being-pulled-2021
---
# Parler being pulled

The biggest tech news that happened over the weekend is that the self-styled free-speech platform **Parler** lost all of its support from the technical companies whose services they used.

The news is saying that 

 * Google pulled the Parler app [from the Google Play store](https://www.reuters.com/article/us-apple-parler/google-suspends-parler-social-networking-app-from-play-store-apple-gives-24-hour-warning-idUSKBN29D34N).

 * [Apple followed suit shortly thereafter.](https://www.usatoday.com/story/tech/2021/01/09/parler-suspended-apple-app-store/6610013002/)  

 * Amazon, where Parler servers were hosted in Amazon Web Services, [has now banned Parler.](https://www.foxbusiness.com/technology/parler-not-working-offline-down-big-tech-amazon-web-services)

 * Twilio, that Parler uses for its two-factor authentication option, [has banned them.](https://cloudcomputing-news.net/news/2021/jan/11/aws-and-twilio-cut-ties-with-parler-after-us-capitol-riots/)

 * Parler's [attorneys have also dropped them](https://www.theepochtimes.com/parler-ceo-attorneys-drop-company-as-website-goes-offline_3651585.html), leaving them (briefly) without legal representation.

 Looking at the domain name information :

 > **\> nslookup www.parler.com**  
 > Server:		8.8.8.8
 > Address:	8.8.8.8#53
 >
 > Non-authoritative answer:
 > *** Can't find www.parler.com: No answer

it looks like the Amazon retraction has stopped them from being able to be reached by IP address -- or Google wiped it from their domain name servers (8.8.8.8 is one of Google's main DNS servers).

The fact that this has happened so abruptly and in such a concerted way is somewhat troubling, but hardly surprising.

My own experience with Amazon is instructive.

When I worked for Noster Mobile, one of the things we did was to scrape lots of information from the websites of HoReCa (Hotels, Restaurants, and Caterers / Cafes) businesses that we found on Facebook, Twitter, Google, and OpenStreetMap.  Part of that scraping exercise required that we look at the [`robots.txt`](https://www.robotstxt.org/robotstxt.html) file  to see what directories and files the website allowed us to scrape.

One day, as organizer of most of our Amazon AWS servers, I received a quite strident email from Amazon.  One of the companies whose websites we were crawling had seen our crawler look through all their image files on their website. They saw this because their web server logs showed them the continual list of calls our crawler was doing.  The reason we looked at website images is because we wanted to be able to display nice images of the company, and usually the best place to find those is the company's website.

Because Amazon threatened to shut down our servers if we didn't stop it, I quickly had a look at the particular website. It was a nice restaurant who'd paid for a cheap webpage.  One thing that hadn't been set up on the website was the `robots.txt` file. They had nothing in it to indicate that some directories were off limits or, more pointedly, they had an all-permissive `robots.txt` file:

  > User-agent: *
  > 
  > Disallow:

The `Disallow` list was empty, meaning we could look at anything and everything on their publicly-facing website.

I sent this information back to Amazon, but they were unmoved.  They said we had to stop crawling that particular customer or they'd cut us off.  They were less strident than their initial email, probably because the initial one was auto-generated, but they were still insistent that we stop crawling.

We marked that site as "not for crawling" and said as much to Amazon, who were happy with our response.

From my experience related above, Amazon's reaction to Parler seems consistent, and I wonder whether they received other negative customer feedback of their support for the Parler app.

Buzzfeed said:

 > In an email obtained by BuzzFeed News, an AWS Trust and Safety team told Parler Chief Policy Officer Amy Peikoff that the calls for violence propagating across the social network violated its terms of service. Amazon said it was unconvinced that the service’s plan to use volunteers to moderate calls for violence and hate speech would be effective.

but I'm wondering how and when Amazon specifically decided Parler violated their terms of service.
