#!/bin/bash 
#######################################################################################################################
#SELECT 
#    ModeS, IFNULL(`Registration`,''), IFNULL(`ICAOTypeCode`,''), IFNULL(`Type`,''), IFNULL(`ModeSCountry`,''), IFNULL(`UserBool1`,''), IFNULL(`UserString1`,''), IFNULL(`UserString2`,''), IFNULL(`UserString3`,''), IFNULL(`UserInt1`,'') ,IFNULL(`OperatorFlagCode`,'')
#FROM
#    Aircraft 
#INTO OUTFILE '/var/lib/mysql-files/data1.csv'
#FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '"'
#LINES TERMINATED BY '\r\n'
#######################################################################################################################
#
#cd /usr/share/dump1090-fa/html/sql/tools

dump1090location='/root/dump1090-db'
echo "|"
echo "| Check for a new csv"
#if [ -f "/var/www/html/adsbdev/bigdump/data.csv" ];
if [ -f "/tmp/data1.csv" ];
then
	echo "| New data file exists"
	if [ -f "$dump1090location/data.csv" ]; then 
		echo "| Removing stale csv file"
		rm $dump1090location/data.csv
	fi

	echo "| Copy new data file"
	mv /var/www/html/adsbdev/bigdump/data.csv $dump1090location/

	echo "| Add header to csv"
	sed -i '1s/^/\"icao24\",\"r\",\"t\",\"Type\",\"Country\",\"Int\",\"Image\",\"Short\",\"Force\",\"Trail\",\"Op\",\"Owner\"\n/' $dump1090location/data.csv

	if [ -f "$dump1090location/db/README" ]; then 
		echo "| Removing stale db files"
		rm $dump1090location/db/*.json
	fi

	echo "| Build new database"
	echo "|"
	python2 $dump1090location/csv-to-json.py $dump1090location/data.csv $dump1090location/db
	echo "|"
	echo "| Finished build"
	
	if [ -d "/usr/share/dump1090-mutability/html/db" ]; then
		if [ -f "/usr/share/dump1090-mutability/html/db/*.json" ]; then
			echo "| Remove live database from dump1090-mutability"
			rm /usr/share/dump1090-mutability/html/db/*.json
		fi
		echo "| Move new database to live"
		mv $dump1090location/db/*.json  /usr/share/dump1090-mutability/html/db

	else
		if [ -d "/usr/share/dump1090-fa/html/db" ]; then
			if [ -f "/usr/share/dump1090-fa/html/db/*.json" ]; then
				echo "| Remove live database from dump1090-fa"
				rm /usr/share/dump1090-fa/html/db/*.json
			fi
			echo "| Move  new database to live"
			mv $dump1090location/db/*.json  /usr/share/dump1090-fa/html/db
		else
			echo "| **** ERROR - Cant find live database - OK if running on 192.168.1.105"
		fi
	fi
	


else
	echo " **** ERROR - No new data.csv - aborting" 
fi
#######################################################################################################################
