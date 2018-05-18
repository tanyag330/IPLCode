# IPLCode
Description of Sentimental Analysis

These are the steps I’ve used to build the code:

1.	Go to apps.twitter.co
2.	Sign in 
3.	Use the consumer key, consumer secret key, access token, secret key for authorization 
4.	Clean tweets by removing emoticons and links 
5.	Classify positive and negative words to run analysis 
6.	Calculate the percentage of positive and negative comments
7.	Generate Charts (histograms and pie-charts)
8.	Generate word cloud
9.	Generate UI for better visualization using shiny 
10.	Connect it with server class
11.	Run code

Information about other files
-> code/positive-words.txt: List of positive words.
-> code/negative-words.txt: List of negative words
-> Screenshots: Authorizing Twitter


Steps for Running :
1. Installation of R from - http://cran.us.r-project.org/
2. Download the code file from Github
3. Set Directory by running this code on R
----> getwd()
----> setwd("/Users/home/Desktop/Sentimental Analysis")  ## Make Sure to update the location 
4. Run Application using - 
----> shiny :: runApp("Code/");
5.  It will ask you to use direct authentication - 
---> Enter 2
---> Log in with Twitter Account
---> After Logging in it will generate a pin, copy it
6. Enter the pin generated after authentication
&. Change the No. of tweets and analyze charts, text, Word Cloud
Note:  The server will take some time to plot charts which will depend on No. of tweets you choose.
