---
title: 'Robot Feet, Part 2'
description: >-
 Some papers about robot feet.
date: '2024-01-09T08:24:00Z'
categories: [robot, feet]
keywords: [robot]
slug: /@kootsoop/robot-feet-part-1
---

# Robot Feet

I've been playing with robot dogs at CT State Middlesex. They're fun!  This is the second post about my learning about robot feet.

## What next? READ!

### [Thesis: Fredriksson](#fredriksson)
The first thing I read about robot feet was a masters level thesis by Scott Fredriksson. Scott was kind enough to quickly respond to my questions about his project. The key interesting thing about the work is the use of a foot that is not just a toroid or a sphere.

### [Paper: Catalano et al.](#catalano-et-al)

This paper was the first one I found that talked about how to think about robot feet. They have four items that need to be considered:

 * Mechanical complexity
 * Modeling complexity
 * Control complexity
 * Weight

which led me to thinking about their priority for our robot dogs.

Because the dogs are small, weight will be of prime concern.  Then, I think we need simple feet so mechanical complexity is next priority.  Then, because the robots are only currently controlled using an Arduino-like device, control complexity should be of concern.  That modeling complexity being the least priority.

### [Paper: Shi et al.](#shi-et-al)

The mechanical complexity item from Catalano et al. was highlighted in this paper.  This paper shows, in its figure 1, an extremely complex foot that "allows the quadruped robot to adapt to terrain and receive the robust ground interaction state data."

This paper convinced me that I want to look first at "passive" feet rather than "active" feet.

### [Paper: Käslin et al.](#kaslin-et-al)

This paper also uses a quite complex foot (see its figure 2). Very interesting, but not where I want to go first.

### [Paper: Pollayil et al.](#pollyil-et-al)

The paper by Pollayil at all was one of the first I cam across that used passive feet that were not simply toroids (like our dogs' feet) or spheres.

The authors describe their foot as "mechanically intelligent".

The paper decomposes the foot into:

 * an ankle
 * two arch links
 * two roll links 
 * the sole.

This gives me a framework for moving forward in the design of feet for our dog, given how unsuccessful the first attempt and modifying the dog foot design was.

### [Thesis: Baldassini](#baldassini)

I posted the first one of these posts to the IEEE CT Section discord server in the robotics chat, and Kevin Huang responded with a link to this thesis (thanks, Kevin!)

The prime contribution of this thesis was to use foam as the material for the feet, in an effort to smooth out the terrain the robot is walking on.

The key finding is:

> Although there may be robots for which foam feet could fall in those regimes, foam feet do not appear to be a useful modification for a Minitaur-type robot.

### [Paper: Angelini et al.](#angelini-et-al)

After reading the preceding papers and the discussion with Kevin, I wondered at the next step:  what is the robot going to be used for?  In addition to the previous design parameters mentioned, the uses to which the robot is to be put are also key.

Angelini et al. was one of the first papers I came across with robot quadrupeds that talked about use cases.

While their use of exploring different terrain for climate information is interesting, it's not what our dogs will be doing.

One sentence in the paper that stuck with me is the following:

 > The robot proprioception is demanded to an inertial measurement unit (IMU) and to joint encoders.

because I'd never come across the word "proprioception" before.

Proprioception apparently means the self-sense of motion of the moving thing.

## And now?

Now, I have to decide on some of the parameters mentioned above:

* Foot weight
* Foot mechanical complexity
* Foot material
* Foot control
* Foot modelling
* Use cases of the robot

Then... I have to do more reading, which means more chasing down references. Watch this space.

## References

1. <a name="fredriksson"></a> [Scott Fredriksson, "Design, Development and Control of a Quadruped Robot," Engineering Physics and Electrical Engineering, master's level, Luleå University of Technology Department of Computer Science, Electrical and Space Engineering, 2021.](https://ltu.diva-portal.org/smash/get/diva2:1588775/FULLTEXT01.pdf)

1. <a name="catalano-et-al"></a> [Manuel Giuseppe Catalano, Mathew Jose Pollayil, Giorgio Grioli, Giorgio Valsecchi, Hendrik Kolvenbach, Marco Hutter, Antonio Bicchi, and Manolo Garabini, "Adaptive Feet for Quadrupedal Walkers," in IEEE Transactions on Robotics, vol. 38, no. 1, pp. 302-316, Feb. 2022, doi: 10.1109/TRO.2021.3088060.](https://ieeexplore.ieee.org/document/9478068)
 
1.  <a name="shi-et-al"></a>  [G. Shi, C. Yao, W. Wang, Z. Zhu and Z. Jia, "Adaptive Planar Foot with Compliant Ankle Joint and Multi-modal Sensing for Quadruped Robots," 2022 IEEE International Conference on Robotics and Biomimetics (ROBIO), Jinghong, China, 2022, pp. 52-57, doi: 10.1109/ROBIO55434.2022.10011981.](https://ieeexplore.ieee.org/document/10011981)

1.  <a name="kaslin-et-al"></a>  [R. Käslin, H. Kolvenbach, L. Paez, K. Lika and M. Hutter, "Towards a Passive Adaptive Planar Foot with Ground Orientation and Contact Force Sensing for Legged Robots," 2018 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), Madrid, Spain, 2018, pp. 2707-2714, doi: 10.1109/IROS.2018.8593875.](https://ieeexplore.ieee.org/document/8593875)

1.  <a name="pollayil-et-al"></a>  [M. J. Pollayil, M. G. Catalano, G. Grioli, A. Bicchi, and M. Garabin, "SoftFoot-Q: A Novel Adaptive Foot for Quadrupeds," ](https://i-rim.it/wp-content/uploads/2020/12/I-RIM_2020_paper_95.pdf)

1.  <a name="baldassini"></a>  [Jacob Baldassini, "An Examination of the Effects of Deformable Foam Contact Surfaces on Robotic Locomotion," Master of Science in Electrical Engineering University of Washington 2017.](https://faculty.washington.edu/sburden/_papers/Baldassini2017ms.pdf)

1.  <a name="angelini-et-al"></a>  [F. Angelini et al., "Robotic Monitoring of Habitats: The Natural Intelligence Approach," in IEEE Access, vol. 11, pp. 72575-72591, 2023, doi: 10.1109/ACCESS.2023.3294276.](https://ieeexplore.ieee.org/document/10177938)



