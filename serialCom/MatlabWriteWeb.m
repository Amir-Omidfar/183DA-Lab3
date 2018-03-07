%Matlab writes to the Command Channel
%Comnad Channel Created on thingSpeak info
writeApiKey = 'FFS914U6YZ7AQL0F';
readApiKey = 'SLZ9TS37543Z389U';
channelID = num2str(441708);
botcarWriteURL = 'http://api.thingspeak.com/update.json';
%test values 
com1 = 500;
com2=850;
data = struct('api_key',writeApiKey,'field1',com1,'field2',com2);
options = weboptions('MediaType','application/json');
response = webwrite(botcarWriteURL,data,options)

