cd ..
wget http://data.fcc.gov/download/measuring-broadband-america/2017/data-raw-2016-jan.tar.gz --no-check-certificate
tar -zxvf data-raw-2016-jan.tar.gz 201601/curr_webget_2016_01.csv
rm data-raw-2016-jan.tar.gz
cd traces
python load_webget_data.py --file ../201601/curr_webget_2016_01.csv
cd ..
rm -rf 201601/
cd traces
python3 convert_mahimahi_format.py
# python3 generate_train_test_traces.py 
python3 split_train_test.py
rm -rf cooked
rm -rf mahimahi

