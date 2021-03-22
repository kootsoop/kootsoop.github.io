---
title: 'Starting projects'
description: >-
 How to start capstone projects?
date: '2021-03-22T08:49:49Z'
categories: [life skills]
keywords: [daily]
slug: /@kootsoop/starting-projects-2021
---

This semester, I've been taking the Capstone I students at Central Connecticut State University (CCSU) through their paces.  

The course follows the [**Design V**](https://en.wikipedia.org/wiki/V-Model) for projects, shown below.

<p align="center">
<img src="https://kootsoop.github.io/images/design-v.png" width="500" height="300">
</p>
<p align="center">
<em>The design V.</em>
</p>

The left-side of the diagram shows some of the steps used to figure out what project we are doing.  This starts with nebulous student ideas about what they want to build, and gradually reduce the uncertainty until we have projects that are feasible.

## Concept of operations

The *Concept of Operations* starts the process.  Here, I try to get the students to specify some high-level statements about what their project should do. Who does it help? What does it do for them?  How well does it need to do it to be useful?

The idea is to frame the project.

## Requirements

Once the project has been framed, I get the students to think about the requirements.  I get them to think about these in two ways:

 * Shall statements: direct, unambiguous statements of the system's function and performance.
 * Use case diagrams: indicating the external actors that will interact with the system, as well as the high level functions of the system.

 ### Shall statements

 I find **shall** statements useful for deciding the scope of the project. If the students can state their project's objective in unambiguous language, then that gives some clarity on where the project needs to go.  Contrariwise, if the students *can't* do that, then we need to talk more.

 I prefer to use only the verb **shall** in these statements of requirement.  Some people use other works like *may* or *will* or *should* or *must*. 

 I prefer to be unambiguous about what the system will do.  If a stakeholder expresses a concern with conditional words like *may* or *should*, then I disregard the concern.  I do this specifically to draw out a reaction. If there **is** a reaction, then we can have a conversation and I can wordsmith a shall statement that captures their concerns.  If there is no reaction... the statement was never a requirement.

 Requirements statements tend to be very stilted language. Direct, unambiguous language tends to be different from most writing.

### Use case diagrams

The other way I get CCSU students to capture requirements is via use case diagrams.  These diagrams are simple stick-figure diagrams that capture:
* The functions (use cases) that the system will perform.
* The actors or roles that interact with the system.
* The system boundary that defines what is in the system and what is not.
* The connections (interfaces) between the actors and the system functions.

<p align="center">
<img src="https://kootsoop.github.io/images/use-case-diagram.png" width="500" height="300">
</p>
<p align="center">
<em>An example of a use case diagram.</em>
</p>

## Architecture

Before we step off into more detailed design, the final step is to start thinking about the architecture of the system.  This should include all the important pieces of the system: the hardware, the software, and the network components that glue it all together.

One of the questions I ask all students is: what is architecture?

Mostly, the answer I get back is "the structure of the system".  I tend to agree, though I usually say: architecture is the **important things** in your system.

<p align="center">
<img src="https://kootsoop.github.io/images/deployment-diagram.png" width="400" height="300">
</p>
<p align="center">
<em>An example of deployment diagram.</em>
</p>

Once these things are written down and have solidified (are not likely to change much), then we can begin the next stage: **Preliminary design**.

# Starting a project

Starting a project means we have decided **what** we are going to build.  The next steps are:
* To define **how** we are going to build it (Preliminary design), 
* To build it (Implementation/Development), and 
* Then tell whether we built it correctly (Quality Assurance).