# Machine Learning: From Fundamentals to Applied

![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python)
![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.x-orange?logo=scikit-learn)
![Google Colab](https://img.shields.io/badge/Google%20Colab-Notebooks-yellow?logo=googlecolab)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

A structured, hands-on learning path that takes you from statistics and probability fundamentals all the way through applied machine learning algorithms — using Python, Scikit-learn, and Google Colab.

---

## What Is This?

This repository is a self-paced ML curriculum built from real course materials. It is not a reference dump — it is a **progressive path**: each module builds on the last, with slides, notebooks, and curated external resources at every step.

If you have been confused by where to start with ML, this is designed to answer that. You will understand *why* algorithms work before you implement them.

---

## Who Is This For?

**Beginners** — No ML background required. You will be introduced to every concept from first principles, starting with statistics.

**Intermediate Python developers** — You already write Python but want to build intuition for ML. Jump to Module 2 and work forward.

---

## Learning Path

```
┌─────────────────────────────────────────────────────────────────┐
│                       LEARNING PATH                             │
└─────────────────────────────────────────────────────────────────┘

  MODULE 1                MODULE 2               MODULE 3
  ─────────               ─────────              ─────────
  Statistics &        →   ML Fundamentals    →   Algorithms &
  Probability             + Scikit-Learn         Implementation

  • Descriptive stats     • What is ML?           • Linear Regression
  • Inferential stats     • Data / Features /     • Logistic Regression
  • Probability theory      Algorithms            • Naive Bayes
  • Hypothesis testing    • Supervised vs         • Decision Trees
  • Bayes' Theorem          Unsupervised          • Random Forests
                          • Data Preprocessing
                          • Feature Engineering

         │                       │                       │
         ▼                       ▼                       ▼
    [Colab Labs]           [Colab Labs]           [Colab Labs]
    Probability            Linear Reg.            Classification
    exercises              walkthrough            + Evaluation
```

---

## Topics Covered

### Module 1 — Statistics & Probability Fundamentals
- Descriptive vs. inferential statistics
- Random sampling and statistical inference
- Probability: independent, dependent, and mutually exclusive events
- Bayes' Theorem and conditional probability
- Hypothesis testing

### Module 2 — Machine Learning Fundamentals
- ML vs. Data Science — where they overlap and where they diverge
- The three core components: Data, Features, and Algorithms
- Types of ML: Supervised, Unsupervised, Semi-supervised, Reinforcement Learning
- Scikit-learn library overview and built-in datasets
- Data preprocessing: scaling (MinMax, Standard), non-linear mapping, categorical encoding
- Feature engineering and selection (forward/backward elimination, SelectKBest, variance thresholds)

### Module 3 — Algorithms & Model Evaluation
| Algorithm | Type | Task |
|---|---|---|
| Linear Regression | Supervised | Regression |
| Logistic Regression | Supervised | Binary Classification |
| Naive Bayes (Gaussian, Multinomial, Bernoulli) | Supervised | Classification |
| Decision Trees | Supervised | Classification / Regression |
| Random Forests | Supervised (Ensemble) | Classification / Regression |
| K-Means | Unsupervised | Clustering |
| PCA / t-SNE | Unsupervised | Dimensionality Reduction |

**Model Evaluation metrics covered:** Accuracy, Confusion Matrix, Precision, Recall, F1 Score

---

## Repo Structure

```
ml-learning-path/
│
├── README.md
│
├── slides/
│   ├── LEC_01_Stats_and_ML_Fundamentals.pptx
│   └── Machine_Learning.pptx
│
├── notebooks/
│   ├── module_1_statistics/
│   │   └── 01_probability_basics.ipynb
│   ├── module_2_fundamentals/
│   │   ├── 02_linear_regression.ipynb
│   │   ├── 03_data_preprocessing.ipynb
│   │   └── 04_feature_engineering.ipynb
│   └── module_3_algorithms/
│       ├── 05_logistic_regression.ipynb
│       ├── 06_naive_bayes.ipynb
│       ├── 07_decision_trees.ipynb
│       └── 08_random_forests.ipynb
│
├── data/
│   └── (datasets used in labs)
│
└── resources/
    └── AI_ML_Links.md    ← curated external resources
```

---

## Prerequisites

- Python 3.8+
- Basic Python syntax (loops, functions, lists) — no advanced experience needed
- Algebra fundamentals (you will not need calculus to get started)

No local setup is required to run the notebooks. Everything runs in **Google Colab** via links embedded in the slides.

---

## How to Use This Repo

**Option A — Google Colab (recommended, no install needed)**

Open any Colab link from the slides or notebooks directory and run cells top to bottom.

**Option B — Run locally**

```bash
# 1. Clone the repo
git clone https://github.com/YOUR_USERNAME/ml-learning-path.git
cd ml-learning-path

# 2. Create a virtual environment
python -m venv venv
source venv/bin/activate        # Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Launch Jupyter
jupyter notebook
```

**Suggested order:**

```
Module 1 → Module 2 → Module 3
(Do not skip Module 1 — the probability foundations are used in Naive Bayes and model evaluation)
```

---

## Dependencies

```
numpy
pandas
matplotlib
seaborn
scikit-learn
jupyter
```

Install all at once:
```bash
pip install numpy pandas matplotlib seaborn scikit-learn jupyter
```

Or use the included `requirements.txt`:
```bash
pip install -r requirements.txt
```

---

## Curated Resources

A living spreadsheet of vetted AI/ML articles, courses, tools, and papers is maintained separately:

🔗 [JAVIs\_AI\&ML\_Links](https://docs.google.com/spreadsheets/d/1oP7MXHuMstIH2Uy_-UwaDPdAOKhzNo_fQGfrwR6Zy8c/edit?usp=drive_link)

This includes resources organized by topic — probability, regression, classification, deep learning, and more.

---

## Key Concepts at a Glance

```
  DATA ──────────────────────────────────────────────────────────┐
                                                                 │
  Raw data → Preprocessing → Feature Engineering → Model        │
                                                      │          │
                               ┌──────────────────────┴──────┐  │
                               │     Algorithm Types         │  │
                               ├─────────────────────────────┤  │
                               │ Supervised   → Labeled data  │  │
                               │ Unsupervised → No labels     │  │
                               │ Semi-super.  → Some labels   │  │
                               │ Reinforcement→ Reward signal │  │
                               └──────────────┬──────────────┘  │
                                              │                  │
                                       Predictions ─────────────┘
                                       + Evaluation
                                       (Accuracy, F1, etc.)
```

---

## Author

**Javier Bonilla**
Senior Technical Program Manager | Python Developer | ML Practitioner

- GitHub: [@Jay06eng](https://github.com/Jay06eng)
- LinkedIn: [linkedin.com/in/javierbonilla](https://linkedin.com/in/javierbonilla)

---

*Built as part of a structured AI/ML learning program — Skillspire.*
