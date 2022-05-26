# YouTube Project:
In this project, I'm working with YouTube dataset to find out what information this dataset gives us. And from that, I will get some insights to help us understand what is going on with videos on YouTube.
This 'YouTube Videos' Dataset contains the data of all the trending videos on YouTube in 2017. They are views, likes, dislikes, comments, links, origin... 
In this project, I mostly use Python (on Anaconda - Jupyter Notebook) for analysing the data. Once I get the information that needed, the Power BI will help me show them to target person (my managers or my clients who have demand for information and insights from this dataset) by a dashboard.
For a better version of Python Notebook which shows the Plotly charts, please go to this link below:
#### https://nbviewer.org/github/TranDucQuynh3012/PortfolioProjects/blob/main/YouTube%20Project.ipynb
To run this Python Notebook file on your personal computer, please download & install Anaconda: 
#### https://www.anaconda.com/products/distribution

I. Libraries used in this project:
   - Numpy: working with data in array type.
   - Pandas: working with data in Series and Data Frame type.
   - Matplotlib, Seaborn, Plotly: create data visualizations.
   - Textblob: perform text data analysing.
   - WordCloud: creat a plot for text data.

II. Target: 
   - Untilize the data to understand the situation of videos on YouTube in 2017. 
   - Getting some ideas to help YouTubers can improve quality of their videos to have a bigger chance to get into top trending videos on YouTube.

III. Processing the Data.
   * Import all the important libraries: Numpy, Pandas, Matplotlib, Seaborn
   Other libraries will be installed and imported later when I need.
   * Cleaning the data: I got this data almost cleaned. YouTube data only has a few missing values so all I have to do here is just drop them.
   * Analysing data: 
     1. YouTube comments: This data include comments of viewers in a sample of US YouTube videos. We need to find out what are the most words they using to write on their negative and positive comments.
     TextBlob library used to seperate comments to possitive and negative comment. And WordCoud help to show theme in to these images:
     ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/positive.png)
