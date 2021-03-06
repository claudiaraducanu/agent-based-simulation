numagents =[10	20	30	40	50	60	70	80]';
avgconflicts= [3.2	11.2	24.8	44.7	71.8	104.9	143.7	188.9]';
SD = [2.8596814119	4.7562823951	7.6999278496	8.5641371103	9.4257330985	17.297719824	12.6583305903	9.3386889396]';

[sf, gof] = fit(numagents,avgconflicts,'poly2')
plot(sf)
hold on

errorbar(numagents,avgconflicts,SD)
grid on
ylabel 'Conflicts'
xlabel 'Number of proactive agents'
axis([0 90 0 200])
[lgd, icons, plots, txt] = legend('show');
