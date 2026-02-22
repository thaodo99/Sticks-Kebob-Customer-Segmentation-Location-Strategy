# 🍢 Sticks Kebob – Customer Segmentation & Location Strategy

## Table of Contents
- [Description](#description)
- [Technologies](#technologies)
- [How To Use](#how to use)
- [Analysis Workflow](#analysis-workflow)
- [Key Findings](#key-findings)
- [Author Info](#author-info)

## Description

This project applies hierarchical clustering and k-means segmentation to identify distinct consumer segments for Sticks Kebob Shop. Using attitudinal and behavioral variables, we uncover target customer groups and recommend the optimal expansion location among four proposed markets.

Completed for MBAN course BAMA 517.

[Back To The Top](#top)

## Technologies

- R
- Hierarchical Clustering
- K-Means Clustering
- Data Cleaning & Preprocessing
- Segmentation Profiling

[Back To The Top](#top)

## How To Use
- Download: M-0866X-Data.csv; M-0866X-Data_Dictionary.csv
- Place the dataset in the same folder as the R script.
- Run:
'''Bash
source("segmentation_analysis.R")
'''
The script will:
- Perform hierarchical clustering
- Generate elbow plot
- Run k-means clustering
- Export segmentation results as CSV

[Back To The Top](#top)

## Analysis Workflow
- Select base variables (Cust + D1.1–D1.4)
- Scale variables
- Run hierarchical clustering
- Identify optimal number of clusters (Elbow method)
- Run k-means clustering
- Profile segments

Identify target segments

Recommend optimal location

[Back To The Top](#top)

## Key Findings

5 clusters identified → consolidated into 3 strategic groups

Target segments:

The Wealthy Socialists

The Family Bonding Segment

Recommended Location: Location C

Family-oriented

Middle-to-upper income

Community engaged

Strong alignment with Sticks’ brand & growth strategy

Back To The Top

Author Info

Thao Do
Liz Ji
Bella Liu
Hamy Vu

University of British Columbia – Sauder School of Business

Back To The Top
