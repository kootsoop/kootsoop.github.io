---
title: 'Robot Feet, Part 1'
description: >-
 Starting to find out how to design robot feet.
date: '2024-01-02T20:37:00Z'
categories: [robot, feet]
keywords: [robot]
slug: /@kootsoop/robot-feet-part-1
---

# Robot Feet

I've been playing with robot dogs at CT State Middlesex. They're fun!

<p align="center">
<img src="https://kootsoop.github.io/images/robots/dog_underside.jpg" height="400" width="400" alt="Picture of the underside of the robot dogs, with the new feet.">
</p>

## The BlueDog App

Because we have ten of these dog robots, I wanted to see about getting them to all work in unison.  For some reason, the code that comes with them doesn't connect to more than four or five at a time.

So I wrote [an app that I called BlueDog](https://github.com/CT-State-Middlesex-Kootsookos/BlueDog) because it uses Bluetooth to talk to the dogs.

<p align="center">
<img src="https://kootsoop.github.io/images/robots/Icon180.png" height="200" width="200" alt="Blue colored robot dog head as icon for the app.">
</p>

## What Next?

The next thing I wanted to do was see if we could change the dog's head.  Petoi, the company that makes the dogs, [released all the CAD as open source](https://github.com/PetoiCamp/NonCodeFiles), so I downloaded it.  I wanted a different head and thought it would be funny to add a Baby Yoda (Groku) head to one of the robots.

<video src="https://kootsoop.github.io/images/robots/baby_yoda.mp4" controls="controls" style="max-width: 730px;">
</video>

## Why feet?

As you can see in the video above, the robots walk quite nicely on smooth surfaces.  Unfortunately, they tend to get caught up when walking on carpet, even very smooth carpet.

### Part 1: Make Feet Bigger and Smoother

My first thought was to make the radius of curvature of the feet bigger and to remote the corrugations on the surface.  So I did that, as you can see below.

<p align="center">
<img src="https://kootsoop.github.io/images/robots/dog_legs_comparison.jpg" height="200" width="200" alt="Side by side comparison of original dog leg (black) and 3D printed version (red/black silk filament).">
</p>

Unfortunately, that didn't help the dog's ability to walk on carpet.

### Part 2: How to design feet?

My initial attempts to find out how to design robot feet met with not many good results.  Eventually, I found [this masters thesis](https://ltu.diva-portal.org/smash/get/diva2:1588775/FULLTEXT01.pdf) by Scott Fredriksson.

A picture of Scott's quadruped is below.

<p align="center">
<img src="https://kootsoop.github.io/images/robots/different_feet.png" height="200" width="200" alt="A picture of Scott Fredriksson's robot.">
</p>

The thesis didn't seem to have much information about the feet, so I emailed Scott and he was kind enough to respond quickly.

He said he just thought about how hiking sticks have particular shapes. The feet were obtained from Amazon.

<p align="center">
<img src="https://kootsoop.github.io/images/robots/feet_on_amazon.png" height="200" width="200" alt="A screenshot of Amazon selling the feet for walking poles.">
</p>

Even better, Scott also gave me some references to follow up on.

The bottom line is two things need to work together:

* The shape of the foot and

* The gait of the robot.

One thing I noticed with the robot on the carpet is that its standard gait doesn't seem to raise its feet very high.  So those are the next things to look at.



