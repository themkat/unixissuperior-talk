%title: Why Unix Systems are superior
%author: Marie Katrine Ekeberg

-> Why Unix Systems are superior <-
-> (for developers) <-

--- 

# Agenda

* How do we define a Unix system?
* Pain points outside Unix systems
* Added bonuses of Unix and opensource tools
* Quick intro to the command line


---

# How do we define a Unix system?

* POSIX compliant (MOST IMPORTANT!)
  * Command line standards
  * Pipes
  * Utility programs (grep, cat, ls etc.)
  * File system definition
  * man pages <3
  * ... and more!
* Command line in harmony with the rest of the system


---

# Pain points outside Unix systems

* File locks
* Command line feels like an after-thought
* Tricky library/program installations
* Package managers more limited 
* Minimal customizability
* Non-existent or primitive pipes! 

---

# Added bonuses of Unix and open source tools

* Multi-user system -> no admin/root access by default 
* Most logs and diagnostic information can usually be accessed
* Better community support
* Security (because of first one and more)
* Command line has a timelessness 
  * Knew how to use it in the 80s? You still do! :)

---

# Quick intro to the command line

Let's learn some commands!

---

# File management and navigation

*ls*                       View the contents of the current directory
*cd new-directory*         Change from the current directory to new-directory
*pwd*                      Print the current directory we are in
*mv x y*                   Move x to y (e.g, sample.md to java/superawesome9000X/README.md)
*cp x y*                   Copy x to y (y can include a new directory and a new name)
*touch myfile*             Creates an empty file called myfile

---

# Reading docs

    /home/nightwing $ man ls
	/home/nightwing $ man grep
	/home/nightwing $ man docker-run

--- 

# Pipes
Output of one program -> input to another!

    /home/nightwing $ echo "Writing a test file" > testfile.txt
	/home/nightwing $ echo "Appending a new line in testfile.txt" >> testfile.txt
	
	/home/nightwing $ ls | grep Programming
	
	#not really a pipe, but a chain
	/home/nightwing $ first-command && next-command

---

# Searching with grep

    /home/nightwing $ cat SUPERHERO_IDENTITIES.txt | grep BATMAN
    BATMAN=Bruce Wayne 
	
	/home/nightwing $ grep -rnE "Tim Drake" 
	./SUPERHERO_IDENTITIES.txt:ROBIN=Tim Drake

---


# Scripts!

Can put a sequence of commands into a file! 

    #!/bin/bash
	
	INPUTFOLDER=$1
	TIMESTAMP=$(date +%s)
    cp -r $INPUTFOLDER $HOME/backup-$TIMESTAMP


To run:

	#from same directory:
	./myscript.sh

	# If put into PATH:
	myscript.sh

---

Thank you all! Now go home and learn more about Unix-inspired systems! :)
