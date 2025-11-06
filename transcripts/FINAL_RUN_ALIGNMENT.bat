#!/bin/zsh
# Activate your conda environment that has MFA
source ~/anaconda3/bin/activate aligner

# Validate the corpus
mfa validate "/Users/bhanugiri/Documents/MFA_Assignment" english_us_arpa

# Run the alignment
mfa align "/Users/bhanugiri/Documents/MFA_Assignment" english_us_arpa english_us_arpa "/Users/bhanugiri/Documents/MFA_Assignment/aligned" --clean --verbose

echo "✅ Alignment finished! TextGrid files saved in /Users/bhanugiri/Documents/MFA_Assignment/aligned"
