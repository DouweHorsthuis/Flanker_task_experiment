[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<br />
<p align="center">
  <a href="https://github.com/DouweHorsthuis/Flanker_task_experiment/">
    <img src="images/logo.jpeg" alt="Logo" width="160" height="160">
  </a> 

<h3 align="center">Flanker task experiment</h3>

<h4 align="center"> This is still a work in progress. Flanker task experiment for Presentation® NeuroBehavioral Systems, This task is created for the Cystinosis experiment battery (2021)</h4>

## This paradigm is still a work in progress

**Table of Contents**
  
1. [About the project](#about-the-project)
    - [Built With](#built-with)
2. [Getting started](#getting-started)
    - [Prerequisites](#prerequisites)  
    - [Installation](#installation)
3. [Info about the experiment](#info-about-the-experiment)
    - [Stimuli](#stimuli)
    - [Logfiles](#logfiles)
    - [Sequences](#sequences)
    - [Instructions](#instructions)
    - [Trigger codes](#trigger-codes)
    - [Timing](#timing)
    - [Data collection](#data-collection)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

This is a Flanker task experiment for Presentation® NeuroBehavioral Systems, this task is created for the Cystinosis experiment battery (2021). 
For each trial the participant is shown 5 arrows (<<<<<, >>>>>, <<><< or >><>>). The participant has to look at the arrow in the center. If the arrow points to the left, they respond with their left index finger pressing the left Ctrl. If the arrow points to the right, they respond with their right index finger pressing the right Ctrl. For half of the trials the arrows are congruent (<<<<< or >>>>>) the other half is incongruent (<<><< or >><>>) We want to measure both RT and EEG for this experiment. 


### Built With

* [Presentation® (NeuroBehavioral Systems)](https://www.neurobs.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need to have any version of the Presentation software. 

### Installation

[Download this Repo](https://github.com/DouweHorsthuis/Flanker_task_experiment)

Create 2 folders

Folder 1 - "Presentation Files"  - this folder should contain all the presentation files and Sequences found in the "src" folder

Folder 2 - "Log files"           - this folder will be filled with all the presentation Log files containing the behavioral data


## Info about the experiment

### Stimuli

The stimuli are all created each time by Presentation so for this paradigm there are no separate stimuli. The stimuli are 5 arrows. They either point in the same direction (congruent) or the center one points in a different direction (incongruent). 

### Logfiles

Log files with experiment reaction times and other information automatically should be placed in the log file folder. In these log files you will find the behavioral information of each time the experiment is ran. 

### Sequences 

Most things are semi random. This means that there are equal amounts of <<<<<, >>>>>, <<><< and >><>> but presentation fully randomizes their order every time. This means that every participant has a different order. 

### Instructions

Before running the paradigm we run the "Flanker Task instructions scenario". This scenario starts off with the following instructions:  
```
You will see arrows point either to the left or to the right.  
Focus on the central arrow.  
If the arrow points to the left, press the left Ctrl with your left index finger.  
If the arrow points to the right, press the right Ctrl with your right index finger.  
  
  
Please press any Ctrl 2x to start the practice
```

We prefer that people read their own instructions because like this there is no chance that some people get different instructions by mistake.  
After reading this there are 20 practice trials. After each trial based on their response they get feedback on how they are preforming.



### Trigger codes

The presentation software sends codes to the EEG system so that the responses and the stimuli can be time-locked in the EEG data. The following is an explanation of each trigger code: 
```
port code 201 = start recording
port code 200 = pause recording 
port code 1   = left  response
port code 2   = right responses
port code 11  = <<<<<
port code 22  = >>>>>
port code 33  = >><>>
port code 44  = <<><<
```

### Timing
The reason this experiment is coded in presentation, is because of the timing resolution of this software/language. When setup correctly this experiment has potentially 1ms of jitter. This will be measured here at our lab, using an oscilloscope. It is critical that this is re-tested before EEG data is collected. This has not yet happened because we haven't decided on the duration of the trials.

For now this is how long should all the trials last. we need to do some testing to see if we move things around
    - S1 shows for 200ms
    - ISI for 1500 to 2000ms, this is completely random
  
    
For now, 1 trial takes 1700ms-2200ms. We have not decided fully on how many trials there should be. Once we do, I'll add the time. 


### Data collection
This experiment is used to collected EEG data and RT data. 

<!-- LICENSE -->
## License

Distributed under the MIT License. See [LICENSE](https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/master/LICENSE.txt) for more information.



<!-- CONTACT -->
## Contact

Your Name - [@douwejhorsthuis](https://twitter.com/douwejhorsthuis) - douwehorsthuis@gmail.com

Project Link: [https://github.com/DouweHorsthuis/Flanker_task_experiment/](https://github.com/DouweHorsthuis/Flanker_task_experiment/)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Ana Francisco](https://github.com/anafrancisco) - The post doctoral fellow that conceptualized the whole experiment



  
[contributors-shield]: https://img.shields.io/github/contributors/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[contributors-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[forks-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/network/members
[stars-shield]: https://img.shields.io/github/stars/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[stars-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/stargazers
[issues-shield]: https://img.shields.io/github/issues/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[issues-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/issues
[license-shield]: https://img.shields.io/github/license/DouweHorsthuis/Flanker_tast_experiment.svg?style=for-the-badge
[license-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/douwe-horsthuis-725bb9188
    

