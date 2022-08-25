@echo off

set DT_URL=http://localhost:8081
set DT_APIKEY=oGxePsIUiNhq2i3l314SeBvi8U0y6Cfb
set DT_PROJECT=e0f29d11-ae81-4561-8ee1-5808acd66a57
set DT_MODULE=Test

FOR /F "tokens=*" %%a in ('git describe --tags') do SET VERSION=%%a
mvn clean package -Dgitversion=%VERSION%

set B64=TODO
set payload="{\"project\":\"%DT_PROJECT%\",\"bom\":\"$B64\"}"