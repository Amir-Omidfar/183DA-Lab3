% Matlab reads form the data measurement Channel 
%Measuerment Channel Created on thingSpeak info
writeApiKey = '4753G1XZD2U9878S';
readApiKey = 'DDGTAU6L8A3TIPJE';
channelID = num2str(347540);
%URL to access and request the reading 
botcarReadURL='https://api.thingspeak.com/channels/347540/feeds/last.json';

data = webread(botcarReadURL,'api_key',readApiKey)

%use str2num to get numeric values of each field in 
%%%%%%%%%%%%%%%%%%%

%Dweet