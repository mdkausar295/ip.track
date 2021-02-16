#Scpirt by pother xhati
if [ "$1" == "" ]
then
       echo "Type : $0 IP"
       exit
fi
result=$(curl http://ip-api.com/json/$1 -s)
res=$(echo $result | jq '.status' -r)
if [ $res == "success" ]
then
        country=$(echo $result | jq '.country' -r)
         echo "country : $country"
        countrycode=$(echo $result | jq '.countryCode' -r)
         echo "countryCode : $countrycode"
        region=$(echo $result | jq '.region' -r)
         echo "region : $region"
        regionname=$(echo $result | jq '.regionName' -r)
         echo "regionName : $regionname"
         city=$(echo $result | jq '.city' -r)
         echo "City : $city"
         zip=$(echo $result | jq '.zip' -r)
         echo "zip : $zip"
         lat=$(echo $result | jq '.lat' -r)
         echo "lat : $lat"
         lon=$(echo $result | jq '.lon' -r)
         echo "lon : $lon"
         timezone=$(echo $result | jq '.timezone' -r)
         echo "timezone : $timezone"
         isp=$(echo $result | jq '.isp' -r)
         echo "isp : $isp"
         org=$(echo $result | jq '.org' -r)
         echo "org : $org"
         as=$(echo $result | jq '.as' -r)
         echo "As : $as"
         query=$(echo $result | jq '.query' -r)
         echo "query : $query"
else
      echo "Try again or Chack Your Internet connection"
fi