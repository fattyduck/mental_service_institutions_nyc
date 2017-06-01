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
