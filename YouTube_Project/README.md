# YouTube Project:
In this project, I'm working with YouTube dataset to find out what information this dataset gives us. And from that, I will get some insights to help us understand what is going on with videos on YouTube.
This 'YouTube Videos' Dataset contains the data of all the trending videos on YouTube in 2017. They are views, likes, dislikes, comments, links, origin... It only contain YouTube video data in some developed countries, not all the world.
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
   - Emoji: perform emoji data analysing.
   - OS: used to take the name of csv files in a folder.

II. Target: 
   - Untilize the data to understand the situation of videos on YouTube in 2017. 
   - Getting some ideas to help YouTubers can improve quality of their videos to have a bigger chance to get into top trending videos on YouTube.

III. Processing the Data:
   * Import all the important libraries: Numpy, Pandas, Matplotlib, Seaborn
   Other libraries will be installed and imported later when I need.
   * Cleaning the data: I got this data almost cleaned. YouTube data only has a few missing values so all I have to do here is just drop them.
   * Analysing data: 

     **1. YouTube comments:** This data include comments of viewers in a sample of US YouTube videos. We need to find out what are the most words they using to write on their negative and positive comments.
     TextBlob library used to seperate comments to possitive and negative comment. And WordCoud help to show theme in to these images:
     
      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/positivenagative.png)
     

      **2. Emoji:** I used Emoji library here to find out what are the most used emoji in viewer's comments. As we can see, most of them are happy, like, encourage... emoji. So I can conclude that viewers use more emoji when they love the video. I also use plotly graph here to obtain better looking visualization with emoji.
      
      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/emoji.png)
      
      *As we can see, most of them are happy, like, encourage... emoji. We can see that viewers use more emoji when they love the video. The more they use emoji, the more they love your video. If people didnt use emoji in their comment, you can consider that if they don't like your video or not*

      **3. Which video categories have maximum likes (and views) videos?:** To answer this question, I need to show you the categories's names and the outstanding number of likes and views. And this is how it looks like:

      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/likeandview.png)

      *From the box plot above, we can see that Music and Entertainment category have videos which have the maximum views and likes on YouTube. That means most of people come to YouTube to enjoy the music videos and relax by entertainment ones. Trailers have less views and likes because they are not released frequently, and people may consider them as advertise videos.
      If you want to have a better chance to have more views or likes on YouTube, try to make music contents such as create new songs, cover or remix famous songs with your own styles, realease your high quality MV... Or you can try entertainment content like doing some challenges, interesting things happen in your day, react to another videos...*
To be continued...







