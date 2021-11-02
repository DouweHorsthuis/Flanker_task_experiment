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

<h4 align="center"> Flanker task experiment for Presentation® NeuroBehavioral Systems, This task is created for the Cystinosis experiment battery (2021)</h4>


**Table of Contents**
  
1. [About the project](#about-the-project)
    - [Built With](#built-with)
    - [Installation](#installation)
3. [Info about the experiment](#info-about-the-experiment)
    - [Stimuli](#stimuli)
    - [Logfiles](#logfiles)
    - [Sequences](#sequences)
    - [Instructions](#instructions)
    - [Trigger codes](#trigger-codes)
    - [Timing](#timing)
    - [Data collection](#data-collection)
    - [Piloting Results](#piloting-results)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

This is a Flanker task experiment for Presentation® NeuroBehavioral Systems, this task is created for the Cystinosis experiment battery (2021). 
For each trial the participant is shown 5 arrows (<<<<<, >>>>>, <<><< or >><>>). The participant has to look at the arrow in the center. If the arrow points to the left, they respond with their left index finger pressing the left Ctrl. If the arrow points to the right, they respond with their right index finger pressing the right Ctrl. For half of the trials the arrows are congruent (<<<<< or >>>>>) the other half is incongruent (<<><< or >><>>) We want to measure both RT and EEG for this experiment. 


### Built With

* [Presentation® (NeuroBehavioral Systems)](https://www.neurobs.com/)

## Installation

[Download this Repo](https://github.com/DouweHorsthuis/Flanker_task_experiment)

Create 2 folders

Folder 1 - "Presentation Files"  - this folder should contain all the presentation files and Sequences found in the "src" folder

Folder 2 - "Logfiles"           - this folder will be filled with all the presentation Log files containing the behavioral data


## Info about the experiment

### Stimuli

The stimuli are all created each time by Presentation so for this paradigm there are no separate stimuli. The stimuli are 5 arrows. They either point in the same direction (congruent) or the center one points in a different direction (incongruent). 

### Logfiles

Log files with experiment reaction times and other information automatically should be placed in the log file folder. In these log files you will find the behavioral information of each time the experiment is ran. 

### Sequences 

Most things are semi random. This means that there are equal amounts of <<<<<, >>>>>, <<><< and >><>> but presentation fully randomizes their order every time. This means that every participant has a different order. 

### Instructions

Before running the paradigm we run the "Flanker Task instructions scenario". This scenario starts off with the following instructions:  
  
![instructions](https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/main/images/Slide1.png)  
  
In the final version we updated the instructions to beside the picture above also have 5 pictures of example trials that the experimenter will go through together with the partcipant. After this is done, the participant will practice 5 practice trials with feedback.

We prefer that people read their own instructions because like this there is no chance that some people get different instructions by mistake.  


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

This is how long should all the trials last.
    - S1 shows for 200ms
    - ISI for 1500 to 2000ms, this is completely random
  
    
1 trial takes 1700ms-2200ms. Each block has 120 trials and we run 4 blocks to get enough EEG data.

Using the "Flanker Task - timing" file we tested the timing between the stimulus showing up on the screen and the trigger (using an oscilloscope) We made some adjustements (see the "s1_trigger" event in the scenario files). **Currently there is 0ms between the onset of any stimulus and when the trigger is send**. Important to note is that if this paradigm is ran anywhere else this might not be the case due to hardware differences and this needs to be checked. 

As you can see below, the onset of the trigger (orange) is at the same time as where the stimuli exceed the average threshold (blue)
![Timing](https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/main/images/Timing.JPG)

**if you plan to use this paradigm** 
You need to do the same and test if for your setup the timing is also okay. This timing is dictated by the refreshrate of your screen, the quality of your computer and potentially other minor factors. If you want to change the timing you can change  "deltat = ..". Whenever this shows up in the code it will delay the sending of the trigger by x amount of miliseconds. So in our case we noticed the screen being 9ms delayed, so this is why we delay the trigger by the same amount. 

### Data collection
This experiment is used to collected EEG data, eye tracking data and RT data.  
**There are 4 Scenario Files because the paradigm needs to be ran 4x to get enough trials.** 

### Piloting Results
To pilot if the paradigm works, we piloted it on 4 adult controls. We've averaged the signal accros subjects and we are showing for correct responses after:  
- the central error pointing left congruent (<<<<<) (followed by a correct response)  
- the central error pointing right congruent (>>>>>) (followed by a correct response)  
- the central error pointing left incongruent (>><>>) (followed by a correct response)  
- the central error pointing right incongruent (<<><<) (followed by a correct response)  

The ERP is timelocked to the onset of the stimulus. And is showing a difference between the congruent and incongruent reponses. Due to the lack of data it's not perfectly clear but there is reason enough to believe this result will be clearer with more data and between different groups. 

![Flanker Results](https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/main/images/Flanker.png)

We also tested and concluded that this is a task understood and doable for kids. 

<!-- LICENSE -->
## License

Distributed under the MIT License. See [LICENSE](https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/master/LICENSE.txt) for more information.



<!-- CONTACT -->
## Contact

Douwe Horsthuis - [@douwejhorsthuis](https://twitter.com/douwejhorsthuis) - douwehorsthuis@gmail.com

Project Link: [https://github.com/DouweHorsthuis/Flanker_task_experiment/](https://github.com/DouweHorsthuis/Flanker_task_experiment/)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Ana Francisco](https://github.com/anafrancisco) - The Research Assistant Professor that conceptualized the whole experiment

[contributors-shield]: https://img.shields.io/github/contributors/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[contributors-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[forks-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/network/members
[stars-shield]: https://img.shields.io/github/stars/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[stars-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/stargazers
[issues-shield]: https://img.shields.io/github/issues/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[issues-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/issues
[license-shield]: https://img.shields.io/github/license/DouweHorsthuis/Flanker_task_experiment.svg?style=for-the-badge
[license-url]: https://github.com/DouweHorsthuis/Flanker_task_experiment/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/douwe-horsthuis-725bb9188/
