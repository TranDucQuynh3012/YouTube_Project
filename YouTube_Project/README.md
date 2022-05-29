# YouTube Project:
In this project, I'm working with YouTube dataset to find out what information this dataset gives us. And from that, I will get some insights to help us understand what is going on with videos on YouTube.

This 'YouTube Videos' Dataset contains the data of all the trending videos on YouTube in 2017 and 2018. They are views, likes, dislikes, comments, links, origin... It only contains YouTube video data in some developed countries, not all of the world.

In this project, I mostly use Python (on Anaconda - Jupyter Notebook) for analysing the data. Once I get the information that is needed, the Power BI will help me show them to the target person by a dashboard. In this case, the target person is my client, who wants to be a successful YouTuber, and as a data analyst, I will help him to make decisions by giving him some insights from the data we have.

For a better version of Python Notebook which shows the Plotly charts, please go to this link below:
#### https://nbviewer.org/github/TranDucQuynh3012/PortfolioProjects/blob/main/YouTube%20Project.ipynb
To run this Python Notebook file on your personal computer, please download & install Anaconda: 
#### https://www.anaconda.com/products/distribution

I. Libraries used in this project:
   - Numpy: working with data in array type.
   - Pandas: working with data in Series and Data Frame type.
   - Matplotlib, Seaborn, Plotly: create data visualizations.
   - Textblob: perform text data analysing.
   - WordCloud: create a plot for text data.
   - Emoji: perform emoji data analysing.
   - OS: used to take the name of csv files in a folder.

II. Target: 
   - Utilize the data to understand the situation of videos on YouTube in 2017. 
   - Getting some ideas to help YouTubers can improve the quality of their videos to have a bigger chance to get into top trending videos on YouTube.

III. Processing the Data:
   * Import all the important libraries: Numpy, Pandas, Matplotlib, Seaborn
   Other libraries will be installed and imported later when I need them.
   * Cleaning the data: I got this data almost cleaned. YouTube data only has a few missing values so all I have to do here is just drop them.
   * Analysing data: 

     **1. YouTube comments:** This data includes comments of viewers in a sample of US YouTube videos. We need to find out what are the most words they used to write on their negative and positive comments.
     TextBlob library is used to separate comments into positive and negative comments. And WordCoud help to show theme into these images:
     
      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/positivenagative.png)
     

      **2. Emoji:** I used Emoji library here to find out what are the most used emoji in viewers’ comments. As we can see, most of them are happy, like, encourage... emoji. So I can conclude that viewers use more emojis when they love the video. I also use a plotly graph here to obtain better-looking visualization with emoji.
      
      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/emoji.png)
      
      *As we can see, most of them are happy, like, encourage... emoji. We can see that viewers use more emojis when they love the video. The more they use emojis, the more they love your video. If people didn’t use emojis in their comments, you can wonder that if they don't like your video or not*

      **3. Which video categories have maximum likes (and views) videos?:** To answer this question, I need to show you the categories' names and the outstanding number of likes and views. And this is what it looks like:

      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/likeandview.png)

      *From the box plot above, we can see that the Music and Entertainment category have videos that have the maximum views and likes on YouTube. That means most people come to YouTube to enjoy the music videos and relax through entertainment ones. Trailers have fewer views and likes because they are not released frequently, and people may consider them as advertising videos.
      If you want to have a better chance to have more views or likes on YouTube, try to make music content such as create new songs, cover or remix famous songs with your own styles, or release your high-quality MV... Or you can try entertainment content like doing some challenges, interesting things happen in your day, react to other videos...*

      **4. Finding out whether the audience reacted or not:** Viewers could watch the videos but they might not leave a like, dislike, or comment on them. So I will find out which categories the audiences reacted to most. I used the [likes/ views], [dislikes/ views], [comments count/ views] rate to get the answer. The higher the rates are, the more the viewers reacted to that video. After calculating the rates, here are the results:

      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/likerate.png)

      *These 3 box plots above show us how the viewers reacted to the videos. People used the like button more frequently than dislike or leave a comment. I can say that it is easier to like a video than dislike or comment on it. Because if people don't really like the video, even if they hate it, they just can ignore it and watch another one which is more interesting. Some categories like 'News and Politic', 'People and Blogs', 'Nonprofit and Activism' which have a high opportunity to offense someone; or 'Entertainment', 'Gaming', 'Science & Technology' which have rich contents for people to discuss, they have higher dislike rate or comment rate than others.*
      *We can look at 'Gaming' and 'Science & Technology' categories, they have high rate of likes and comments but low rate of dislikes. These categories are really attractive and being loved by the people. So if you want your viewers to have good reactions to your videos, try creating videos about gaming, science, or technology.* 

      **5. Which YouTube channels have the largest number of videos ?:** There are many YouTube channels out there, but only a few of them have a large number of videos. The number of videos on a YouTube channel can show us how hard the creators worked and how much time they spent on it. A YouTube channel with a lot of videos has a high probability to be a good channel, and we can pay attention to their videos to learn from them, especially if the creators are professionals in their field. So this chart below will show us top 10 YouTube channels  that have the largest number of videos in the data:
      
      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/topchannel.png)

      *It is obvious that the 'Late-night talk show' kinds such as 'The Late Show with Stephen Colbert', 'Late Night with Seth Meyers', 'TheEllenShow', 'Jimmy Kimmel Live'... have the largest number of videos. 'Late-night talk show' programs are very familiar to Americans since the 1950s. And now they air on YouTube mostly, so they have to release videos frequently to satisfy the demand of the audience. Most of these channels have large investments and professional staff teams. So as an individual YouTuber, you can pay attention to the PewDiePie channel. PewDiePie is a YouTuber himself, he's making videos about gaming, and his channel is at the top of the biggest channels on YouTube.*

      **6. Do punctuations in the title have any relation with views, likes, dislikes comments?:**  Punctuations are special symbols like ''!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~' and we need to find out how many punctuations in the title will make the viewers react more with the videos. These charts below will help us:

      ![alt text](https://github.com/TranDucQuynh3012/Data_Analysis_Project/blob/main/YouTube_Project/Plot/punctuation.png)

      *These charts show us that videos having 1-3 punctuations in their titles have more views, likes, and comments from the audiences. It will make your title more attractive and different from other videos. But using more than 8 punctuations in your video title can make the audience feel it's complicated and uncomfortable, so they could ignore your video.*

This is something I can obtain from YouTube dataset. I hope you find it useful and from this project, you can make your own conclusions and decisions.

*Have a nice day!*

*Tran Duc Quynh*