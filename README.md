# Crowdflow Search Relevance

The problem statement is defined on [kaggle](https://www.kaggle.com/c/crowdflower-search-relevance)

## Data

You can find the data in [train.csv](train.csv) and [test.csv](test.csv)

## Approach

I tried out two approaches Deep Learning as well as traditional ML.
Also, for trying out the DL model you'd need 100 dim glove vectors. The link to download them is provided in the Makefile.
My best private and public scores are __0.63047__ and __0.61214__ respectively.

The traditional approach is using feature engineering and a voting classifier based on several independent classifiers like SVM, RF, KNN, Logistic Regression. It present in [this notebook](tfidf_voting.ipynb)

The DL approach is using BiLSTM for query and topic and then doing a multi-head dot product between them which is followed by an FC layer and relu. This approach formulates the problem as a regression problem. You can find it [here](word_lstm_multi_head.ipynb)
