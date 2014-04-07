t3 = linspace(0, (23+52/60)*3600,length(x03));
[m3,xrr3,rrt3] = ecg2rr(x03,t3);
lf = powerpp(xrr3, rrt3, 0.04, 0.15);
hf = powerpp(xrr3, rrt3, 0.15, 0.4);

ratio = lf/hf;