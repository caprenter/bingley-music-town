#!/bin/bash

#Events
wget --no-check-certificate --output-document=../_data/events.csv "https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/export?format=csv&gid=0"
#Events
wget --no-check-certificate --output-document=../_data/BACevents.csv "https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/export?format=csv&gid=38705545"
#Venues
wget --no-check-certificate --output-document=../_data/venues.csv "https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/export?format=csv&gid=287605425"
#Artists
wget --no-check-certificate --output-document=../_data/artists.csv "https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/export?format=csv&gid=370499827"
#Noticeboards
wget --no-check-certificate --output-document=../_data/noticeboards.csv "https://docs.google.com/spreadsheets/d/1gFoIK0H3zuTZ1uGm4yngbIMqyPRhcwRW12xzx3-KZf4/export?format=csv&gid=506723206"
# Bandstand 2025
wget --no-check-certificate --output-document=../_data/bandstand.csv "https://docs.google.com/spreadsheets/d/1P7JN00PAo3C1JTqqKfZimwC8tkMKo7cq3lY7Hv5p1VM/export?format=csv&gid=169288642"
# Bingley Calendar
wget --no-check-certificate --output-document=../_includes/bingley_calendar_download.html "https://docs.google.com/document/d/1wbSA12yo76mlj7aH6g-cFgJK3YHzyMpawmHGG3UOqtc/export?format=html"
## Process Calendar
xmllint --format --html --xpath '/html/body/*' ../_includes/bingley_calendar_download.html >../_includes/bingley_calendar.html 

# Remove the column headers of the BAC sheet
sed -i '1d' "../_data/BACevents.csv"
sed -i '1d' "../_data/bandstand.csv"
# Append the BAC events to all events
cat "../_data/BACevents.csv" >> "../_data/events.csv"
cat "../_data/bandstand.csv" >> "../_data/events.csv"

echo $1
echo $2
if [ $1 = update ]
then
git checkout main
#git add _data/
git commit -am "Automatic Update Live Music Data"
fi
if [ $2 = push ]
then
git push origin main
fi