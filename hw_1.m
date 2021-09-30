% Reads data into a Table
planets = readtable("exoplanetsclean.csv");
% You can reference an individual column using the dot (.) notation
length(planets.Name(planets.Mass<1))
planets.Name(planets.Mass<1)
% The amount of and list of planets that are less massive than earth
distance = min(planets.Distance(planets.Habitable==1));
planets.Name(planets.Distance==distance & planets.Habitable==1)
distance
% The closest habitable planet to earth and its distance
length(planets.Name(planets.Smass<1 & planets.Orbit>1))/length(planets.Name)
planets.Name(planets.Smass<1 & planets.Orbit>1 & planets.Habitable==1)
% Percentage of planets sol>sun w/ radius>1AU & if any are habitable
r = count(planets.Method,'Radial Velocity','IgnoreCase',true);
radialvelocity = sum(r==1,'all')
i = count(planets.Method,'Imaging','IgnoreCase',true);
imaging = sum(i==1,'all')
p = count(planets.Method,'Pulsar','IgnoreCase',true);
pulsar = sum(p==1,'all')
pt = count(planets.Method,'Primary Transit','IgnoreCase',true);
primarytransit = sum(pt==1,'all')
m = count(planets.Method,'Microlensing','IgnoreCase',true);
microlensing = sum(m==1,'all')
t = count(planets.Method,'Transit','IgnoreCase',true);
transit = sum(t==1,'all')
tt = count(planets.Method,'TTV','IgnoreCase',true);
ttv = sum(tt==1,'all')
o = count(planets.Method,'Other','IgnoreCase',true);
other = sum(o==1,'all')
a = count(planets.Method,'Astrometry','IgnoreCase',true);
astrometry = sum(a==1,'all')
% planets discovered using each method
b = lower(unique(planets.Method));
c = unique(b);
d = string(c);
s = find(planets.Method==d(8));
h = planets(s,3);
hist = table2array(h);
histogram(hist)
%histogram of radii of planets discovered using 'transit'




