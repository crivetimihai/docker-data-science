#!/bin/bash

. ./tools/init.sh

title "INTRODUCTION"

say "Reproducible Data Science with Docker"
bullet "What's Data Science? Something to do with (big?) data I bet.."
bullet "What's Docker and why is it so damn popular?"
bullet "Why do we need containers and OS level virtualization anway?!"

say "What is a Data Scientist then?"
bullet "Someone who knows more Statistics than a Programmer and more programming than a Statistician."
bullet "Analytical data experts with the skill to solve complex problems and the curiosity to explore what problems need solving"
bullet "They use Data, visualization, machine learning, deep learning, pattern recognition, natural language processing, analytics..."

say "What kind of tools do Data Scientists use?"
bullet "Mathematics - Linear Algebra, Statistics, Combinatorics"
bullet "Some of them use R - focusing on statistics"
bullet "A lot of them use Python - usually with Jupyter notebook as a front-end"
bullet "Libraries such as Pandas and Numpy are very handy!"
bullet "Natural Language Processing with NLTK"
bullet "or Machine Learning libraries - Scikit-Learn, Tensorflow or PyTorch"
bullet "SQL and databases tend to be quite popular. After all, where does data live?"
bullet "NoSQL databases such as MongoDB are quite useful too..."
bullet "And a whole bunch of Big Data tools: Hadoop, Spark, Kafka, etc."
bullet "They write papers too, so Markdown and LaTeX come in handy!"

say "And who are you? And what's your interest in Docker or Data Science"
bullet "I work with things like Cloud, Containers, Kubernetes"
bullet "Data Science environments, Machine Learninga and so on."

say "And where's your Powerpoint Chart?!"
bullet "Oh, I'm too lazy to type, so I wrote a script to do it for me..."
bullet "Don't worry, this is still a live demo that could go wrong any minute now..."
echo "Cannot set pty terminal modes: Bad file descriptor (9)═════════════════════════════╝"
bullet "^ just kidding ;p"

read
clear

title "QUESTIONS & ANSWERS"
read
