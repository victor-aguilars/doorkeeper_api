# Add Doorkeeper to Rails API

Test project to integrate doorkeeper to authenticate user of a API made with rails

Read the following article: https://naturaily.com/blog/api-authentication-devise-doorkeeper-setup

Important links:
``` curl -X POST -d "grant_type=password&email=victor@bengala.tech&password=password" localhost:3000/oauth/token ```
``` curl -v localhost:3000/api/items?access_token=xxT_1aNRcoVk8uuzaPBeUsmelFgyadVky1lNodgSaGg ```