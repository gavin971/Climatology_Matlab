%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Combine station data structures
%
%change station names to one, two, three, etc
%
%where one = most recent data, two is following set, and so on...
%
%if more or less than four structures exists, either copy and add or delete
%too account for different number of structures
%
%
% ftp://ftp.ncdc.noaa.gov/pub/data/noaa/ish-abbreviated.txt to find units

%The last part of the code will take the longest to run, otherwise this
%code can run in about 45 seconds.  The last part is converting data types
%of cell to doubles.  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%create new empty structure to put combined data in
station_data = struct();
station_data.usaf = [];
station_data.wban = [];
station_data.yr = [];
station_data.mo = [];
station_data.da = [];
station_data.hr = [];
station_data.mn = [];
station_data.wnddir = [];
station_data.wndspd = [];
station_data.wndmaxspd = cell(0);
station_data.airtemp = [];
station_data.dewp = [];
station_data.slp = [];
station_data.alt = [];
station_data.stp = [];
station_data.pcp01 = [];
station_data.pcp06 = cell(0);
station_data.pcp24 = cell(0);



%%
for i = 2:length(one.USAF);
    station_data.usaf(end+1) = one.USAF(i);
    station_data.wban(end+1) = one.WBAN(i);
    station_data.yr(end+1) = one.YR(i);
    station_data.mo(end+1) = one.MO(i);
    station_data.da(end+1) = one.DA(i);
    station_data.hr(end+1) = one.HR(i);
    station_data.mn(end+1) = one.MN(i);
    station_data.wnddir(end+1) = one.DIR(i);
    station_data.wndspd(end+1) = one.SPD(i);
    station_data.wndmaxspd(end+1) = one.GUS(i);
    station_data.airtemp(end+1) = one.TEMP(i);
    station_data.dewp(end+1) = one.DEWP(i);
    station_data.slp(end+1) = one.SLP(i);
    station_data.alt(end+1) = one.ALT(i);
    station_data.stp(end+1) = one.STP(i);
    station_data.pcp01(end+1) = one.PCP01(i);
    station_data.pcp06(end+1) = one.PCP06(i);
    station_data.pcp24(end+1) = one.PCP24(i);
end
clear i
%%
for i = 2:length(two.USAF);
    station_data.usaf(end+1) = two.USAF(i);
    station_data.wban(end+1) = two.WBAN(i);
    station_data.yr(end+1) = two.YR(i);
    station_data.mo(end+1) = two.MO(i);
    station_data.da(end+1) = two.DA(i);
    station_data.hr(end+1) = two.HR(i);
    station_data.mn(end+1) = two.MN(i);
    station_data.wnddir(end+1) = two.DIR(i);
    station_data.wndspd(end+1) = two.SPD(i);
    station_data.wndmaxspd(end+1) = two.GUS(i);
    station_data.airtemp(end+1) = two.TEMP(i);
    station_data.dewp(end+1) = two.DEWP(i);
    station_data.slp(end+1) = two.SLP(i);
    station_data.alt(end+1) = two.ALT(i);
    station_data.stp(end+1) = two.STP(i);
    station_data.pcp01(end+1) = two.PCP01(i);
    station_data.pcp06(end+1) = two.PCP06(i);
    station_data.pcp24(end+1) = two.PCP24(i);
end
clear i
%%
for i = 2:length(three.USAF);
    station_data.usaf(end+1) = three.USAF(i);
    station_data.wban(end+1) = three.WBAN(i);
    station_data.yr(end+1) = three.YR(i);
    station_data.mo(end+1) = three.MO(i);
    station_data.da(end+1) = three.DA(i);
    station_data.hr(end+1) = three.HR(i);
    station_data.mn(end+1) = three.MN(i);
    station_data.wnddir(end+1) = three.DIR(i);
    station_data.wndspd(end+1) = three.SPD(i);
    station_data.wndmaxspd(end+1) = three.GUS(i);
    station_data.airtemp(end+1) = three.TEMP(i);
    station_data.dewp(end+1) = three.DEWP(i);
    station_data.slp(end+1) = three.SLP(i);
    station_data.alt(end+1) = three.ALT(i);
    station_data.stp(end+1) = three.STP(i);
    station_data.pcp01(end+1) = three.PCP01(i);
    station_data.pcp06(end+1) = three.PCP06(i);
    station_data.pcp24(end+1) = three.PCP24(i);
end
clear i
%%
for i = 2:length(four.USAF);
   station_data.usaf(end+1) = four.USAF(i);
    station_data.wban(end+1) = four.WBAN(i);
    station_data.yr(end+1) = four.YR(i);
    station_data.mo(end+1) = four.MO(i);
    station_data.da(end+1) = four.DA(i);
    station_data.hr(end+1) = four.HR(i);
    station_data.mn(end+1) = four.MN(i);
    station_data.wnddir(end+1) = four.DIR(i);
    station_data.wndspd(end+1) = four.SPD(i);
    station_data.wndmaxspd(end+1) = four.GUS(i);
    station_data.airtemp(end+1) = four.TEMP(i);
    station_data.dewp(end+1) = four.DEWP(i);
    station_data.slp(end+1) = four.SLP(i);
    station_data.alt(end+1) = four.ALT(i);
    station_data.stp(end+1) = four.STP(i);
    station_data.pcp01(end+1) = four.PCP01(i);
    station_data.pcp06(end+1) = four.PCP06(i);
    station_data.pcp24(end+1) = four.PCP24(i);
end
clear i
%%
%Transpose the data horizontally to vertical configuration 
station_data.usaf = station_data.usaf';
station_data.wban = station_data.wban';
station_data.yr = station_data.yr';
station_data.mo = station_data.mo';
station_data.da = station_data.da';
station_data.hr = station_data.hr';
station_data.mn = station_data.mn';
station_data.wnddir = station_data.wnddir';
station_data.wndspd = station_data.wndspd';
station_data.wndmaxspd = station_data.wndmaxspd';
station_data.airtemp = station_data.airtemp';
station_data.dewp = station_data.dewp';
station_data.slp = station_data.slp';
station_data.alt = station_data.alt';
station_data.stp = station_data.stp';
station_data.pcp01 = station_data.pcp01';
station_data.pcp06 = station_data.pcp06';
station_data.pcp24 = station_data.pcp24';


% %code to make datenum from dates in station_data
% 
% station_data.DTNUM = [];
% 
% for i = 1:length(station_data.YR);
%     station_data.DTNUM(end+1) = datenum(station_data.YR(i), station_data.MO(i), station_data.DA(i), station_data.HR(i), station_data.MN(i), 0);
% end
% 
% station_data.DTHR = [];
% 
% for z = 1:length(station_data.YR);
%     station_data.DTHR(end+1) = datenum(station_data.YR(z), station_data.MO(z), station_data.DA(z), station_data.HR(z), 0, 0);
% end
% 
% 
% station_data.DTNUM = station_data.DTNUM';
% station_data.DTHR = station_data.DTHR';
% 
% clear i z
%%
% code to make datenum from dates in station_data
station_data.dtnum = [];

for i = 1:length(station_data.yr);
    station_data.dtnum(end+1) = datenum(station_data.yr(i), station_data.mo(i), station_data.da(i), station_data.hr(i), station_data.mn(i), 30);
end


clear i j one two three four

station_data.dtnum = station_data.dtnum';

%Make hourly datenums for the entire dataset 
%time = datenum(station_data.yr(end),station_data.mo(end),...
%    station_data.da(end)):(1/24):datenum(station_data.yr(1),...
%    station_data.mo(1),station_data.da(1));

%create date time vector for data
station_data.time = datenum(station_data.yr, station_data.mo,...
    station_data.da, station_data.hr, station_data.mn, 30);

%%
station_data.wndmaxspd = str2double(station_data.wndmaxspd(:,1));
station_data.pcp06 = str2double(station_data.pcp06(:,1));
station_data.pcp24 = str2double(station_data.pcp24(:,1));

