# Why Unix Systems are superior
My talk titled "Why Unix Systems are superior" that I will give at work, and maybe other places. It is basically just about some issues you have with Windows, and what makes the Unix based systems (GNU/Linux distros, Mac OS X etc.) better to use for development. 


## Running the slides
Clone this repo, navigate to it, and then follow the instructions below according to your setup. If you don't want to "pollute" your system, then Docker is always the best way :D


### Local MDP install
If you have installed MDP locally by following [the instructions in the repo](https://github.com/visit1985/mdp) or using a package manager, you can simply type:
```bash
mdp slides.md
```


### From Docker
To run the slides use the command (from inside this folder!):
```bash
docker run --rm -it -v $PWD:/slides themkat/mdp:1.0 
```

Then type the command `mdp /slides/slides.md`. The presentation can be navigated by arrow keys, and you can exit by typing `q`. You will need to exit the container after you are done with the `exit` command.


The run config above uses a volume with the entire presentation folder, and therefore includes the all the files in the repo. This could have been avoided by adding a new folder for the slides and only including that in the volume. Did not do that because I enjoyed having a flat directory :P Also, a Dockerfile was planned to be run directly and include the presentation (as well as exit on completion). This did not work, and lead to screen clearing issues between slides. The Dockerfile is still included if someone wants to find the issue :) 
