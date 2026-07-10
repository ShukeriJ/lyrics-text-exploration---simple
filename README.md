# 🎵 Text Exploration of Song Lyrics using R

![R](https://img.shields.io/badge/Language-R-276DC3?logo=r&logoColor=white)
![Text Mining](https://img.shields.io/badge/Text-Mining-blue)
![Natural Language Processing](https://img.shields.io/badge/NLP-Text%20Analytics-green)
![Word Cloud](https://img.shields.io/badge/Visualization-WordCloud-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

# 📖 Project Overview

This project demonstrates a **Text Exploration** workflow using **R** to analyze song lyrics from five different music themes.

The project applies fundamental **Natural Language Processing (NLP)** techniques to discover the most frequently occurring words after text preprocessing. The cleaned text is transformed into a **Document-Term Matrix (DTM)** before performing frequency analysis and visualization.

This project serves as an introductory example of text mining and exploratory text analytics using R.

---

# 🎯 Objectives

The objectives of this project are to:

- Perform text preprocessing on song lyrics.
- Build a text corpus using the **tm** package.
- Remove unnecessary words and symbols.
- Construct a Document-Term Matrix (DTM).
- Calculate word frequencies.
- Identify the most frequently used terms.
- Visualize text using bar charts and word clouds.

---

# 📂 Dataset

Dataset:

- Five song lyrics with different themes

Data Format:

- CSV

Required Column:

```
lyrics
```

Each row represents one song lyric document.

---

# 🛠 Technologies Used

## Programming Language

- R

## Libraries

- tm
- wordcloud
- RColorBrewer
- ggplot2

---

# 🔄 Project Workflow

```
Song Lyrics CSV
        │
        ▼
Load Dataset
        │
        ▼
Create Text Corpus
        │
        ▼
Text Preprocessing
│
├── Convert to lowercase
├── Remove punctuation
├── Remove numbers
├── Remove stopwords
└── Remove extra whitespace
        │
        ▼
Document-Term Matrix
        │
        ▼
Word Frequency Analysis
        │
        ▼
Visualization
│
├── Bar Chart
└── Word Cloud
```

---

# 🧹 Text Preprocessing

The following preprocessing techniques were applied:

- Convert text to lowercase
- Remove punctuation
- Remove numbers
- Remove English stopwords
- Remove extra whitespace

These steps improve text quality before analysis.

---

# 📊 Analysis Performed

The project calculates:

- Document-Term Matrix (DTM)
- Word Frequency
- Top 10 Most Frequent Terms

The resulting frequency table provides insight into the vocabulary commonly used across the lyrics.

---

# 📈 Visualizations

## 1. Top 10 Most Frequent Words

A horizontal bar chart is generated to compare the frequency of the ten most common words.

Example:

```
love        ████████████
life        █████████
heart       ███████
music       █████
...
```

---

## 2. Word Cloud

A Word Cloud is generated where:

- Larger words indicate higher frequency.
- Smaller words indicate lower frequency.

This provides an intuitive overview of the dominant words within the lyrics.

---

# 📌 Key Findings

- Successfully transformed unstructured text into structured data.
- Removed common English stopwords.
- Constructed a Document-Term Matrix.
- Identified the most frequently occurring terms.
- Visualized word frequencies using two different methods.
- Demonstrated the complete text exploration workflow using R.

---

# 📁 Project Structure

```
text-exploration-song-lyrics/

│
├── data/
│     └── five_original_lyrics_different_themes.csv
│
├── images/
│     ├── top10_terms.png
│     ├── wordcloud.png
│     └── workflow.png
│
├── R/
│     └── text_exploration.R
│
├── report/
│     └── Report.pdf
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# ▶️ How to Run

## Step 1

Install required packages.

```r
install.packages(c(
"tm",
"wordcloud",
"RColorBrewer",
"ggplot2"
))
```

---

## Step 2

Clone this repository.

```bash
git clone https://github.com/YOUR_USERNAME/text-exploration-song-lyrics.git
```

---

## Step 3

Open the R script.

```
R/text_exploration.R
```

---

## Step 4

Run the script.

The program will automatically:

- Load the lyrics dataset
- Clean the text
- Build the corpus
- Create a Document-Term Matrix
- Calculate term frequencies
- Generate visualizations

---

# 📤 Outputs

The project generates:

- Frequency Table
- Top 10 Frequent Terms
- Horizontal Bar Chart
- Word Cloud

---

# 🚀 Future Improvements

Possible extensions include:

- Sentiment Analysis
- Topic Modeling (LDA)
- TF-IDF Analysis
- N-gram Analysis
- Text Clustering
- Interactive Shiny Dashboard
- Web-based lyrics scraping
- Deep Learning using Transformers

---

# 🎓 Learning Outcomes

This project demonstrates practical knowledge of:

- Natural Language Processing (NLP)
- Text Mining
- Text Cleaning
- Corpus Creation
- Document-Term Matrix
- Frequency Analysis
- Data Visualization
- Exploratory Text Analysis
- R Programming

---

# 💼 Applications

The techniques demonstrated in this project can be applied to:

- Customer Reviews
- Social Media Analytics
- News Articles
- Survey Responses
- Product Reviews
- Research Publications
- Song Lyrics
- Chat Conversations

---

# 👨‍💻 Author

**Shukeri**

Mechanical Engineer | Data Science & Analytics

Master of Data Science & Analytics

Universiti Kebangsaan Malaysia (UKM)

GitHub:
https://github.com/YOUR_USERNAME

---

# ⭐ Support

If you found this project useful, please consider giving it a ⭐.

It motivates me to continue sharing beginner-friendly Data Science and Analytics projects.

---

# 📄 License

This project is licensed under the MIT License.
