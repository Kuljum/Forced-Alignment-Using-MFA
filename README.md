# 🎧 Forced Alignment using Montreal Forced Aligner (MFA)

This project demonstrates forced alignment between speech audio and its corresponding transcription using **Montreal Forced Aligner (MFA)**.

---

## 📂 Project Structure
assignment/
│
├── corpus/
│   ├── wav/                # Audio files
│   └── transcripts/        # Text transcripts
│
├── dictionary/             # Pronunciation dictionary (english_us_arpa.dict)
├── aligned/                # Alignment outputs (.TextGrid files)
├── report/                 # Report document (MFA_Praat_Assignment_Report.docx)
└── README.md               # Project documentation
---

## ⚙️ Setup Instructions

### 1. Install Montreal Forced Aligner (MFA)
You can install MFA using **Conda**:
```bash
conda create -n aligner python=3.10 -y
conda activate aligner
pip install montreal-forced-aligner
mfa version'

 Data Preparation:

Make sure your data is organized like this:
corpus/
 ├── wav/
 │   ├── F2BJRLP1.wav
 │   ├── F2BJRLP2.wav
 │   └── ...
 └── transcripts/
     ├── F2BJRLP1.txt
     ├── F2BJRLP2.txt
     └── ..

Dictionary file:
dictionary/english_us_arpa.dict

Running Forced Alignment:
Run the following command from the project root folder:
mfa align corpus dictionary/english_us_arpa.dict english_us_arpa.zip aligned/
if you get an alignment error, try increasing the beam size:
mfa align corpus dictionary/english_us_arpa.dict english_us_arpa.zip aligned/ --beam 1000 --retry_beam 4000

 Output:
After successful alignment, you will find .TextGrid files in the aligned/ folder.
Each TextGrid contains word and phoneme boundaries for the corresponding audio.

 Visualization in Praat:
Open the .TextGrid files with their corresponding .wav files in Praat:
	1.Open Praat → Open → Read from file
	2.Select both .wav and .TextGrid
	3.Click View & Edit to inspect alignment visually.
NOTE:
Use run_alignment_win.bat if you’re on Windows, or run_alignment_mac.sh if you’re on macOS/Linux.

 Author:
	•Name: kamalsahebgari kuljum
	•Institute: IIIT Hyderabad
	•Assignment: Forced Alignment using MFA
