#!/bin/bash
# Program 23: Audio Spectrum Analyzer
echo "Enter path to WAV audio file:"
read audio_file

if [ ! -f "$audio_file" ]; then
    echo "File not found!"
    exit 1
fi

temp_file=$(mktemp)
sox "$audio_file" -n spectrogram -r -o "$temp_file.png"
echo "Spectrum analysis saved to $temp_file.png"

channels=$(soxi -c "$audio_file")
sample_rate=$(soxi -r "$audio_file")
duration=$(soxi -d "$audio_file")
bit_depth=$(soxi -b "$audio_file")

echo "Audio Properties:"
echo "Channels: $channels"
echo "Sample Rate: $sample_rate Hz"
echo "Duration: $duration"
echo "Bit Depth: $bit_depth bits"

