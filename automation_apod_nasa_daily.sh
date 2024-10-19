
tanggal=`curl https://api.nasa.gov/planetary/apod?api_key=eipGoFia6nCSMj6gkvsH62mORddp0fiKdeQ4Dgam | jq -r '.date'`
title_news=`curl https://api.nasa.gov/planetary/apod?api_key=eipGoFia6nCSMj6gkvsH62mORddp0fiKdeQ4Dgam | jq -r '.title'`
nasa_news=`curl https://api.nasa.gov/planetary/apod?api_key=eipGoFia6nCSMj6gkvsH62mORddp0fiKdeQ4Dgam | jq -r '.explanation'`
image_url=`curl https://api.nasa.gov/planetary/apod?api_key=eipGoFia6nCSMj6gkvsH62mORddp0fiKdeQ4Dgam | jq -r '.url'`

echo "$tanggal|$title_news|$nasa_news|$image_url" > nasa_news.txt

echo "Getting Data API response.data.api.nasa.gov"

nasa_date=`cat nasa_news.txt | awk -F "|" '{print $1}'`
nasa_title=`cat nasa_news.txt | awk -F "|" '{print $2}'`
nasa_text=`cat nasa_news.txt | awk -F "|" '{print $3}'`
nasa_image=`cat nasa_news.txt | awk -F "|" '{print $4}'`

echo "Result :
Astronomy Picture of the Day!!

Tanggal : $nasa_date

$nasa_title

$nasa_text


$nasa_image

"

TOKEN="7057320849:AAGQuC1RErEwjlmDTnOfHNP4b4X8Mlh2dq4"
CHAT_ID="-1002291732114"
GROUP_ID="-1002291732114"
MESSAGE_THREAT_ID="225"
MESSAGE="Astronomy Picture of the Day!!

Tanggal : $nasa_date

$nasa_title

$nasa_text


$nasa_image
"

echo " Astronomy Picture of the Day!!"
echo "
"
echo "Tanggal : $nasa_date"
echo "

"
echo "$nasa_title"
echo " 

"
echo "$nasa_text"
echo "

"
echo "$nasa_image"


curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d message_thread_id=$MESSAGE_THREAT_ID -d text="$MESSAGE" > /dev/null



