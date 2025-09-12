# If you do not have Git installed

[Git Hub installation page](https://gitforwindows.org/)

Open GitGUI, then we'll begin the configuration

# Configuring Git 

Changes your display name when you create a commit (a change to the program)
> git config --global user.name "Joseph Smith"

It's less for right now, but it basically shows your email when someone else would look at this project
> git config --global user.email "joesmith@example.com"

Makes 'merging' simpler (When I make changes, and then you want your computer to have those changes)
> git config --global pull.rebase false

TLDR:
> git config --global user.name "Joseph Smith"
> git config --global user.email "joesmith@example.com"
> git config --global pull.rebase false

# Starting the Project

Use the terminal to cd to where the project should be. Then type this in

This will make a directory called 'RestaurantSorterProject' which will have all the information that is currently committed to the project
> git clone git@github.com:Worgrot4/RestaurantSorterProject.git

This will create a 'branch' for you. If you make edits to the project in this branch, no one else will recieve this edit. This is useful if you're making experimental changes, or are changing something that could affect everyone else's code. Once you're done, you can manually give these changes to everyone else
> git branch "your name here"
> git push --set-upstream origin "Your name here again"

TLDR:
> git clone git@github.com:Worgrot4/RestaurantSorterProject.git
> cd RestaurantSorterProject
> git branch "your name here"
> git push --set-upstream origin "Your name here again"

# Normal Usage of Git

From here on, there's very few commands you need to keep track of when using git

## When starting a coding session

Always do this command before you start coding. This makes it so much easier if someone changed the code while you were gone, as you could be coding with old code.
> git pull

then make your way into your branch
> git checkout "Your name here"
> git pull origin main

And then feel free to start coding

TLDR:
> git pull
> git checkout "Your name here"
> git pull origin main

## During and end of a coding session

Make sure to 'push' frequently. If you don't save your code, it could get lost. So just make sure to push every now and then.

git add -A adds any new files you've added to the project. So if you make a txt.txt file, it'll add the file the next time you commit
> git add -A

git commit is you committing to a change. the commit message is information you can choose to give anyone who reads your code
> git commit -am "Enter a commit message here"

git push officially updates the github page, so if anyone git pulls, they now have all the changes you just pushed as well
> git push

TLDR:
> git add -A
> git commit -am "Message"
> git push

## Finished a component and want to get it out of your branch

After you officially finish a function and want to add it to the main branch, just 'git checkout' to the main branch, and 'git pull origin (your name here)'
> git checkout main
> git pull origin "your name here"