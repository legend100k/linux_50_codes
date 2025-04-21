#!/bin/bash
# Program 17: Text Sentiment Analyzer
echo "Simple Text Sentiment Analyzer"
echo "Enter text to analyze:"
read text
positive_words=("good" "great" "excellent" "happy" "love" "best" "positive" "wonderful")
negative_words=("bad" "worst" "hate" "terrible" "awful" "poor" "negative" "horrible")
pos_score=0
neg_score=0

for word in $positive_words; do
    matches=$(echo "$text" | grep -oi "$word" | wc -l)
    pos_score=$((pos_score + matches))
done

for word in $negative_words; do
    matches=$(echo "$text" | grep -oi "$word" | wc -l)
    neg_score=$((neg_score + matches))
done

echo "Positive score: $pos_score"
echo "Negative score: $neg_score"
if (( pos_score > neg_score )); then
    echo "Sentiment: Positive"
elif (( neg_score > pos_score )); then
    echo "Sentiment: Negative"
else
    echo "Sentiment: Neutral"
fi

