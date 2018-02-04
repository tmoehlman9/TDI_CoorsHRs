%Import Spreadsheet into Tables with Labels for easy read
HR2015=readtable('CoorsField_HRs_2015.csv');
HR2016_2017=readtable('CoorsField_HRs_2016-2017.csv');

%Select Desired Columns as individual vectors
exit_velo15=HR2015(:,54);
exit_velo16=HR2016_2017(:,54);

Lang15=HR2015(:,55);
Lang16=HR2016_2017(:,55);

%Convert table cols to arrays for analysis
exit_velo15_num=table2array(exit_velo15);
exit_velo16_num=table2array(exit_velo16);

Lang15_num=table2array(Lang15);
Lang16_num=table2array(Lang16);

%Create 2015 Figure
figure()
fig2015=scatter(Lang15_num,exit_velo15_num,32,'b');
title('2015 Coors Field Home Runs')
xlabel('Launch Angle (deg)')
ylabel('Exit Velocity (mph)')

%Create 2016-2017 Figure
figure()
fig2016=scatter(Lang16_num,exit_velo16_num,32,'r');
title('2016-2017 Coors Field Home Runs')
xlabel('Launch Angle (deg)')
ylabel('Exit Velocity (mph)')

