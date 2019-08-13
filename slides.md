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
* Its way of defining filesystems
* Having a command line that works in harmony with the rest of the system


---

# Pain points outside Unix systems

File locks
Command line seems separate from the rest of the system (not like a building block)
Libraries for programming and other things can be tricky to install sometimes!
Package managers are often incomplete or has a very limited selection 
Minimal customizability -> usually rely on external programs. Mac is sadly not much better, but still more opportunities) 

Command line doesn't have pipes! Or they are very primitive!

---

# Added bonuses of Unix and opensource tools

Multi-user system -> no admin/Root access by default 
Most logs and diagnostic information can usually be accessed
Better community support
Security (because of first one and more)
Command line has a timelessness. Knew how to use it in the 80s? You still do! :)

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

# Searching with grep
TODO: should pipes be used here already? Or should pipes section be moved?

    /home/nightwing $ cat SUPERHERO_IDENTITIES.txt | grep BATMAN
    BATMAN=Bruce Wayne 
	
	/home/nightwing $ grep -rnE "Tim Drake" 
	./SUPERHERO_IDENTITIES.txt:ROBIN=Tim Drake

--- 

# Reading docs

    /home/nightwing $ man grep
	
	/home/nightwing $ man docker-run

---

# Pipes
TODO: should chaining be included somewhere? And the output of these operations

Output of one program -> input to another!

    /home/nightwing $ echo "Writing a test file" > testfile.txt
	/home/nightwing $ echo "Appending a new line in testfile.txt" >> testfile.txt
	
	/home/nightwing $ ls | grep Programming

---

# Scripts!

-- TODO: make it better!

Can put a sequence of commands into a file!

    #!/bin/bash
	
	# TODO: should I just reuse one of my earlier stuff?


---

Thank you all! Now go home and learn more about Unix-inspired systems! :)
