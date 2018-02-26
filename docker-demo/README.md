# Public Image
- This image has been published as cmihai/jupyter. Just do a:
```
docker pull
docker run --init --detach \
    --name jupyter --hostname jupyter \
    -p 8888:8888 \
    --volume ${HOME}/notebooks:/home/jupyter/notebooks:rw \
    --volume ${HOME}/.jupyter:/home/jupyter/.jupyter \
    cmihai/jupyter
```

# Alternative Images:
https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook is quite popular.. you can use that instead.

```
docker run -it --rm -p 8888:8888 jupyter/datascience-notebook
```

# How this works:

You can create a VERY similar interactive DEMO using just `echo`
to display text and `read` to prompt the user to press ENTER for a new line.

Create a new script called `demo.sh`, and add the following text:


```
echo 'My presentation using just echo and read'
echo '========================================'
read

echo '- Bullet 1: echo command is similar to print() in python'
read
echo '- Bullet 2: read command is similar to input() in python'
read
echo '- Bullet 3: read will just wait for you to press ENTER'
read
```
Make the script executable and run it:
```
chmod +x demo.sh
./demo.sh
```

## Result:
```
My presentation using just echo and read
========================================

- Bullet 1: echo command is similar to print() in python

- Bullet 2: read command is similar to input() in python

- Bullet 3: read will just wait for you to press ENTER
```


# Run
```
./menu.sh
```

# Dependencies:
- If it doesn't work.. run tools/install-docker-ubuntu.sh first

Or:

```
sudo apt-get -y install curl pv toilet dialog
```

# Tools used
- dialog - creates menus
- figlet or toilet: creates titles in 'ASCII art'
- pv
- [Demo Magic](tools/demo-magic.sh) from https://github.com/paxtonhare/demo-magic

# How it works:
- [./tools/init.sh](./tools/init.sh) - set up colors and demo-magic script
- [./tools/install-docker-ubuntu.sh](./install-docker-ubuntu.sh) - install prerequisities
- [./menu.sh](./menu.sh) - uses `dialog` to create a menu system.

# How do bullets and text get displayed?
```
# Setup color / font variables in shell:
BULLET="\033[0;33m" # This creates yellow font when ran with `echo -e ${BULLET}`
RESET="\033[0m"     # This resets to normal fonts

# This ia function
bullet(){
    echo -e "${BULLET}• $@${RESET}" # This will echo a YELLOW bullet    
    read # This will read from the keyboard (no variable, so it just expects an ENTER)
}

bullet "Hello world" # This will display a YELLOW bullet with the text TEST and wait for ENTER
```

# How is the menu created:
> I'm using `dialog`. This can be installed with `sudo apt install dialog`. 
> Tutorial: http://www.linuxjournal.com/article/2807

Simple example:
```
dialog --title "Message"  --yesno "Are you having fun?" 6 25

# Reference and where to learn more:
- Learn Docker here: [https://www.katacoda.com/courses/docker](https://www.katacoda.com/courses/docker)
- Learn Shell here: [https://www.hackerrank.com/domains/shell/bash](https://www.hackerrank.com/domains/shell/bash)
