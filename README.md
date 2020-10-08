# Crime Report Management System

It is an era of computerization and data security, so to combat with the increasing rate of crime
and criminal, crime report management system (CRMS) is introduced. Currently in police station all the record is maintained on paper or using excel sheets, so to make effective use of
current technology and to minimize the crime rate we are introducing the CRMS. This is a webbased application that provides managing the data and various information about criminals and
their crimes. Not only this but the CRMS will also provide the information of police station.
Through this, each and every police officer and all the law-keeping bodies across the territory
can search about any crime record and will be provided if found criminal then its complete
details including all the crime in various police station and can view the crime’s FIR report and
the action performed on crime. Through this there will be ease in finding the suspect and on this
basis police officer can interrogate the suspect. This web application will be implemented using
HTML, CSS, JAVASCRIPT, BOOTSTRAP and Mysql and Ruby On Rails

# Steps to setup the rails app

1. Download and install rvm for references -> https://rvm.io/rvm/install
2. Install ruby 2.6.3  
    rvm install ruby-2.6.3
3. Download and install mysql database for reference -> https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04
4. Create ruby gemset 'ecop' as
    rvm gemset create ecop
    rvm gemset use ecop
5. Please make sure nodejs is installed and working
6. clone this repo from
    git clone 
7. Open the app on terminal
8. Update the database.yml file with the mysql credentials
9. Install all gems
   bundle install
9. Run the following commands for creating tables in database
    rake db:create
    rake db:setup
    rake db:migrate
10. Run the server from the Terminal using command
    rails server -p 3000
11. Open the browser with the url
    localhost:3000/
The app is ready for completing functioning


# Screenshot

![list of all criminals](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image.jpg?raw=true)
![form  for new criminal entry](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image6.jpg?raw=true)
![Details of particular criminal](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image12.jpg?raw=true)

![all police station record](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image1.jpg?raw=true)
![Form for police station registration](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image4.jpg?raw=true)
![Details of Particular police station](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image8.jpg?raw=true)

![All reports ](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image9.jpg?raw=true)
![Form for new report](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image5.jpg?raw=true)
![Details of particular report](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image7.jpg?raw=true)

![Show all crime](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image2.jpg?raw=true)
![Create a new crime](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image10.jpg?raw=true)
![Details about crime](https://github.com/gargsahab2300/ecop/blob/master/screenshot/image11.jpg?raw=true)
