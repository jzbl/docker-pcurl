#!/bin/sh
echo "Processing curl jobs..."
sed 's/^curl/curl\ --create-dirs\ --output-dir\ \.\/output\ -L\ -O/g' urllist > processedlist
echo "Starting parallel curl jobs..."
parallel --verbose --jobs 10 < processedlist
rm processedlist
