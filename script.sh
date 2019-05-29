sed -E 's,([0-9]{2})/([0-9]{2})/([0-9]{2}),20\3-\2-\1,g' data.csv > data1.csv
sed -E 's,([0-9]{1})/([0-9]{1})/([0-9]{4}),\3-0\2-0\1,g' data1.csv > data2.csv
sed 's/;N/;\\N;/g' data2.csv > data3.csv
sed 's/;;1/;1/g' data3.csv > data4.csv
sed 's/;;/;\\N;/g' data4.csv > data5.csv
sed 's/N;\\N;/N;\\N;\\N/g' data5.csv > data6.csv
sed 's/C;\\N;/C;\\N;\\N/g' data6.csv > data7.csv
sed 's/;n/;\\N/g' data7.csv > data8.csv
sed 's/\\n/\\N/g' data8.csv > data9.csv
sed 's/,/./g' data9.csv > data10.csv
sed 's/;/,/g' data10.csv > data11.csv
sed 's/a/A/g' data11.csv > data12.csv
sed 's/c/C/g' data12.csv > data13.csv
cp data13.csv data.csv

rm data1.csv data2.csv data3.csv data4.csv data5.csv data6.csv data7.csv
 data8.csv data9.csv data10.csv data11.csv data12.csv data13.csv