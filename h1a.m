planets = readtable("exoplanets.csv");
a = lower(unique(planets.Method));
b = find(planets.Method==a(5));
planets(b,:)
