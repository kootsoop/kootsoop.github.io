---
title: 'Pooled assessment'
description: >-
 I make many of my assignments grouped assignments, so the students have to work together to submit an assignment for the group. I'm wondering if there's a better way to do it. 
date: '2021-01-21T08:43:49Z'
categories: []
keywords: [daily]
slug: /@kootsoop/pooled-assessment-2021
---

<meta property="og:image" content="https://kootsoop.github.io/images/pooled_assessment.png" />

In many of my courses, I group students together into teams.  These teams then tackle the larger assignments that are expected for the courses I teach.  The team sizes vary, but once a team is selected, I've kept the same teams for the whole semester.

## A problem with teams

Just as with teams in the workplace, teams of students encounter problems.  The typical problem I've seen is [the "freeloader" problem.](https://www.reading.ac.uk/engageinassessment/assessing-group-work/eia-group-challenges-freeloaders.aspx) This is where one or more students in the team leave all the work (or the majority of the work) to the other students.  The link from Reading has a variety of suggestions as to how to combat this problem.

One suggestion from that list that I've tried that works in the most egregious cases is peer assessment.  This gives students the ability to rate their peers along various axes.  However, this approach tends to lack nuance, as generally students give each other high ratings regardless of their actual contribution.

I'll continue to use peer assessments, but I am looking for another approach to augment it. An approach that has nuance.

## A problem of resources 

During the pandemic, Philip Machanick suggested that pooled testing can be used to make more efficient use of COVID-19 testing materials.  Pooled testing applies a single test to multiple people's samples.  If all the people in the group (pool) are negative, then the pooled test will be negative and we've only used a single test for several people.  

If the pooled test is positive, then we need to do a series of other tests to identify the person or people within the pool who are positive.  Philip's video explains this process better than I have.

<p align="center"> 
<a href="https://youtu.be/hs2a9fQZOCw">
	<img src="https://kootsoop.github.io/images/machanick.png" width="300" height="200" />
</a>
</p>


## Pooled assessment?

Combining the problem I have with team-based assessment with the idea of pooled testing from COVID and before, I wondered if it's possible this will give the nuance I'm looking for.

The idea is:

 * Team students up differently for each assignment.
 * Have sufficient assignments so that the pooled testing approach works.
 * Request short peer assessment after each assignment.

### An example

Suppose my class size is 9 students and that I group them into three groups of three, using different groups of three for the second assignment.  For the sake of simplicity, I've assumed that the team grade is the *median* grade of each teams' members.

| Team | Member 1 | Member 2 | Member 3| Team Grade |
|--|--|--|--|--|  
| 1 | A | B | A | *A*|
| 2 | A | B | B |  *B* |
| 3 | C | C | F |  *C* |


| Team | Member 1 | Member 2 | Member 3| Team Grade |
|--|--|--|--|--|  
| 4 | A | A | C | *A*|
| 5 | B | B | C |  *B* |
| 6 | A | B | F |  *B* |

Overall, this keeps three student grades the same as individual grading should achieve (✅), improves the grades of four students (⬆️), and reduces the grades of two (⬇️).

| Student | Mark 1 | Mark 2 | Overall | cf. Individual? |
| -- | -- | -- | -- | -- |
| A | A | A | A | ✅ |
| B | A | B | B+ | ⬆️ |
| A | A | B | B+ | ⬇️ |
| A | B | A |  B+ | ⬇️ |
| B | B | B | B | ✅ |
| B | B | B | B | ✅ |
| C | C | A | B | ⬆️ | 
| C | C | B | C+ | ⬆️ |
| F | C | B | C+ | ⬆️ |

## A more detailed assessment.

Because I prefer looking at numerical results, I [simulated this in a Python script](https://github.com/kootsoop/DSP.SE/blob/master/Python/PooledTesting.ipynb) allowing me to use a class size closer to my usual class size of 24.

It also allowed me to try using both the median individual score for the team and the minimum individual score for the team.  The results are shown below.

<p align="center">
<img src="https://kootsoop.github.io/images/pooled_assessment.png" width="300" height="300">
</p>

For this particular example, it shows what the smaller example showed: teamwork tends to increase grades over individual assessment, regardless of the mechanism.

## How does this address the freeloader problem?

This pooled idea **doesn't** address the freeloader problem in teamwork. What I haven't included in the analysis above is the effect of the extra amount of peer assessments.

Let's focus on what might happen for teams 3 and 6: the two teams involving the F student.

| Team | Member 1 | Member 2 | F Student | Peer assessment of F Student |
| -- | -- | -- | -- | -- |
| 3 | C | C | F |  🆗 |
| 6 | A | B | F |  ⬇️ |

I posit that when team members are close in ability, that their peer assessments will all be OK (see team 3 above). When there is a distinct difference in ability, I believe the peer assessment will show the poorly performing student more accurately (see team 6 above).

##  More thought required!

I started writing this up to clarify my thinking about how to work with the freeloader problem.  It hasn't resolved the issue, but writing it up has helped identify issues with the approaches I've been thinking of.