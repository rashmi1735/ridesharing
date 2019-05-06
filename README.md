# Taxi Riesharing : CS 581 Database Management System (Spring 2019)

## Introduction

Ride sharing/Pooling basically refers to the concept of matching
passengers travelling to destinations along similar routes, in order to increase the total distance
savings, cost savings and reducing the number of lone trips.
This project evaluates ride-sharing algorithm on spatio-temporal data. The data represents trips
in New York City. In ride-sharing mechanism, a passenger submits a ride request shortly before
departure specifying some constraints and the goal of the algorithm is to combine the trips
effectively given these constraints. The algorithm that we used, is based on weighted maximum
matching in which the best match is determined from the possible matches subject to the
weights. The weights are assigned based on the distance saved and social score which takes into
consideration the language and profession of the riders of two trips being merged.

## Objectives

The main objectives of this project are as follows:
* To devise a ride-sharing algorithm to merge individual trips given various constraints like
pickup time, passenger destination, maximum delay tolerated etc.
* Determine the distance saved as a result of ride-sharing.
* To determine the number of trips saved as a result of ride-sharing.
* To analyze the variations in savings with respect to different pool sizes, i.e. advance
notice of request of 5 min and 10 min.
* To see how the social score (language and profession) impacts the shareability of rides.
* Compare the ride-sharing results with and without considering the social scores.

## Softwares Used

* Programming Language: Python 3.6 (python.exe should be added to system path)
* IDE: Jupyter Notebook
* Collaboration: Github

### pip Installations  
  NetworkX Command: python -m pip3 install networkx==1.10<br/>
  Reverse Geocoder: python -m pip3 install reverse-geocode

### Third Party Libraries Used
#### NetworkX 2.3
NetworkX is a Python package for the creation, manipulation, and study of the structure,
dynamics, and functions of complex networks. It is used for the Weighted Max Matching.
#### Graphhopper API
Graphhopper API is an open source routing library. It is used to compute the actual distance
between two locations. An API key needs to be generated for making calls to the API. You may register yorselves at graphhopper.com and create an API key under 'API keys'. Insert this API key in the getActualDistance function.

## Execution Steps

* Open Command Line and type in jupyter notebook and press Enter
* Open the data_cleaning.ipynb and run all the cells in it. The data must be in the same directory as this file. You may change the data file name as well at the very beginning of the data_cleaning.ipynb file
* This will generate a cleaned and preprocessed file with the filename as in the variable 'output_file_name' in the same directory. You may change the output file name by chnaging this variable's value
* Use this cleaned data in the ridesharing_final.ipynb and run all the cells in it in sequence. The last few cells will give the desired output metrics
