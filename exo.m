% Reads data into a Table
planets = readtable("exoplanetsclean.csv");
% You can reference an individual column using the dot (.) notation
planets.Name(1:10)