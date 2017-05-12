Presentation for Crime Lookup App
========================================================
author: Don Martin 
date: Fri May 12 15:00:21 2017
autosize: true
transition-speed: slow
font-family:"calibri"   

Project Overview
========================================================
The **Developing Data Product** final assignment requirements are to create and share:

- a **Shiny application** w/ documentation

- a **presentation** using RStudio Presnter or Slidify

This project demonstrates the ability of Shiny to create a quick interactive interface allowing the user to select a **US State** from a dropdown box and view its 1973 arrest rates for Assult, Rape and Murder.


Links to the GitHub repo, RStudio Presentation, and a Shiny application are located at the last slide of this presentation.

Application
========================================================

The simple applcation is rather self explainatory once launched.  The user is promped to select a State from a dropdown box at the top left hand side of the screen.  Any U.S.State can be selected, but upon launch the state of Alabama is populated in the text box as it is the first in the data provided. 

Once the State is selected, a bar plot compairing 1973 arrest rates for the given state is updated to the right of the dropdown box.  Arrest Rates provided in arrest per 100,000 residents are overlayed on the plot.

**FUN !!**


Data Used
========================================================

The USArrests data set available in R and contains statistics, in arrests per 100,000 residents for assault, murder, and rape in each of the 50 US states in 1973.  


```r
str(USArrests)
```

```
'data.frame':	50 obs. of  4 variables:
 $ Murder  : num  13.2 10 8.1 8.8 9 7.9 3.3 5.9 15.4 17.4 ...
 $ Assault : int  236 263 294 190 276 204 110 238 335 211 ...
 $ UrbanPop: int  58 48 80 50 91 78 77 72 80 60 ...
 $ Rape    : num  21.2 44.5 31 19.5 40.6 38.7 11.1 15.8 31.9 25.8 ...
```

```r
head(USArrests)
```

```
           Murder Assault UrbanPop Rape
Alabama      13.2     236       58 21.2
Alaska       10.0     263       48 44.5
Arizona       8.1     294       80 31.0
Arkansas      8.8     190       50 19.5
California    9.0     276       91 40.6
Colorado      7.9     204       78 38.7
```

The sources for this data set are:

- World Almanac and Book of facts 1975. (Crime rates). 
- Statistical Abstracts of the United States 1975. (Urban rates).

Links
========================================================

To run the Shiny application, click on the link to the Shiny application found in the list below. The Shiny application should open in the browser window with 1973 Crime Statistics for the State of Alabama displayed. By selecting another State in the dropdown box, the barplot will be updated revealing that state's arrest rates.

- [Run Application](http://dmartin60.shinyapps.io/DevelopingDataProducts/)  

- [Source Code on github](https://github.com/dmartin60/DevelopingDataProducts)  

