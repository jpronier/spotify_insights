# 🎶 Spotify Insights Project 🎵

Welcome to my Spotify Insights Project, where I explored my musical tastes using the Spotify API and PostgreSQL. This project is a fun utilization of data management and analysis, personalized to reflect the music that moves me! 🌟

## 🚀 About the Project
In this project, I've used Python requests library to interact with the Spotify API and the obtained json files to retrieve data from my personalized Spotify playlist and create csv files. I then utilized these via PostgreSQL within PgAdmin to create a normalized database, then querying it to extract key insights that reveal trends and patterns in my music preferences.

## 🎧 Data Retrieval and Management
Here's how I tackled the data:
- **API Magic:** I used the Spotify API to fetch data about my personalized playlist. Using client credentials, I authenticated and pull data using the uploaded Python script.
- **Understanding the Data:** I looked over the data from Spotify to pick out key attributes for insights into my music tastes.
- **Data Normalization:** Utilizing common json files method, I transformed nested json data into a flat structure suitable for database insertion.
- **Database Design:** I designed the database schema based on my analysis goals, choosing tables that fit the data and my objectives. Find my ERD design in the files!
- **PostgreSQL Integration:** In PgAdmin, I imported the cleansed csv data and designed an efficient schema to store and query the data effectively.

## 📊 Key Insights
- **Popularity Analysis:** I explored tracks popularity, revealing top artists like Billie Eilish and Niall Horan. Olivia Rodrigo's song 'Vampire' emerged as the most popular.
- **Artist Deep Dive:** I used array aggregation in SQL to examine artists' features, discovering who had the most songs and identifying tracks with featured artists, analyzing the impact of collaboration on popularity.
- **Artist Frequency:** Analyzed which artists appeared most frequently in my playlist.
- **Track Features:** Looked at trends in track features such as duration and release patterns to understand music release strategies.


## 🛠️ Technologies Used
- **Python:** For API requests and data manipulation.
- **PostgreSQL:** For database management and SQL queries.

## 🎤 Conclusion and Future Work
This project not only enhanced my understanding of API handling and database management but also gave me invaluable insights into my own music preferences. Future directions could include:
- Analyzing track order in albums to predict hit singles.
- Exploring correlations between track length, album releases, and market availability.



Thank you for tuning in to my musical data journey. Explore the repository to see how data can tune into personal taste, making every playlist a story to tell! 🎉


