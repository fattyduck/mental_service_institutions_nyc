# README

This is a Mental Service Institution finder Rails API with information on Name, Address, and Geographic information. 

### Technical Goals:

* Do an initial pull for information from https://data.cityofnewyork.us/resource/8nqg-ia7v.json

* Every night at 12AM, the program will check https://data.cityofnewyork.us/resource/8nqg-ia7v.json for updates

* Present Data from local database in JSON format 

* The program will check for errors during the nightly updates and send me an e-mail when error occurs


### Code:

* Rakefile that will pull and update data:
  * https://github.com/fattyduck/mental_service_institutions_nyc/blob/master/lib/tasks/get_institutions.rake

* Using whenever to use crontab for nightly updates:
  * https://github.com/fattyduck/mental_service_institutions_nyc/blob/master/config/schedule.rb
  
* Present Data in JSON format:
  * https://github.com/fattyduck/mental_service_institutions_nyc/blob/master/app/controllers/institutions_controller.rb

* If the Rake file will errors and I will receive an e-mail:
  *  https://github.com/fattyduck/mental_service_institutions_nyc/blob/master/app/mailers/error_mailer.rb

**Index page will show institutions and the cities they reside in**

![image](https://cloud.githubusercontent.com/assets/11187726/26679995/86c1b83e-46a5-11e7-9aef-d119633317f5.png)

**Show Page will show individual institutions and all address and geographic information**

![image](https://cloud.githubusercontent.com/assets/11187726/26680132/1f26bfac-46a6-11e7-9d7b-728a8b6ce8a3.png)

