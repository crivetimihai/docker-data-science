#!/bin/bash

. ./tools/init.sh

title "Data Science Process"
cat << 'EOF'
O'Reilly - Data Science at the Command Line"
Facing the Future with Time-Tested Tools, Jeroen Janssens
1.2: Data Science is OSEMN (pronunced AWESOME!)
Mason and Wiggins (2010) define data science according to the following five steps:
(1) obtaining data
(2) scrubbing data
(3) exploring data
(4) modeling data
(5) interpreting data
Together, these steps form the OSEMN model (which is pronounced as awesome).
EOF

say "IOSEMN: Data Science process at a glance"
bullet "${BOLD}I${BULLET}nquire: Ask a question"
bullet "${BOLD}O${BULLET}btain: Get the data"
bullet "${BOLD}S${BULLET}crub: Clean the data"
bullet "${BOLD}E${BULLET}xplore: Try stuff"
bullet "${BOLD}M${BULLET}odel: Create a model"
bullet "i${BOLD}N${BULLET}terpret: Insight from data"

say "Some useful tools at each stage:"
cat << 'EOF'
  +-----------------+ Project Management / Lifecycle
  | INQUIRE         | Git, Github, Gitlab (Project documentation)
  +-----------------+ Documentation systems
           |               (Ask a meaningful question)
           v
    +------------------+ Requests, APIs, sensors, surveys
    | OBTAIN           | SQL, CSV, JSON, XLS, NoSQL, Hadoop, Spark
    +------------------+ Store / Cache data locally (SQLite, PostgreSQL)
             |             (Gather internal and external data)
             v
       +-----------------+ Jupyter Notebook
       | SCRUB           | Regular Expression (re), BeautifulSoup
       +-----------------+ SQLite
                | ^        (Clean and transform the data)
                v |
          +-----------------+ Jupyter Notebook
          | EXPLORE         | Pandas, Orange
          +-----------------+ Matplotlib
                ^  |       (Explore and understand the data)
                |  v
             +-----------------+ SciKit-Learn, Tensorflow
             | MODEL           | PyTorch, NumPy
             +-----------------+ Machine Learning
  RE-INQUIRE          |    (Model: predict, check accuracy, evaluate the model)
      ^               v
      |          +-----------------+ Jupyter Notebook, MatplotLib
      +--------- | INTERPRET       | Bokeh, D3.JS, XLSXWriter
                 +-----------------+ Dashboards, Reports, etc.
                                     (Choose a good representation, interpret the results)
EOF

say "Next!"
read
clear

title "QUESTIONS & ANSWERS"
read
