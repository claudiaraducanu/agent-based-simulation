velocity = [0.1	0.1	0.1	0.1	0.1	0.3	0.3	0.3	0.3	0.3	0.5	0.5	0.5	0.5	0.5	0.7	0.7	0.7	0.7	0.7	0.9	0.9	0.9	0.9	0.9]';
max_turn_angle = [3	6	9	12	15	3	6	9	12	15	3	6	9	12	15	3	6	9	12	15	3	6	9	12	15]';
avg_conflicts = [13.6	8.6	8.4	7.4	5.6	41.2	37.7	27.9	26	24.7	62.2	63.9	55.2	47.8	47.3	94.7	87.1	84.3	77.2	73.5	113.5	108.2	111.4	103.6	93.7]';
 
subplot(1,2,1) 
[sf, gof] = fit([velocity, max_turn_angle],avg_conflicts,'poly11')
plot(sf)
alpha(0.5)
hold on
scatter3(velocity, max_turn_angle,avg_conflicts,'MarkerFaceColor','r')
xlabel 'Velocity'
ylabel 'Max. turn angle'
zlabel 'Avg. conflicts'
grid on
axis([0 1 0 15 0 120])


subplot(1,2,2) 
[sf, gof] = fit([velocity, max_turn_angle],avg_conflicts,'poly22')
plot(sf)
alpha(0.5)
hold on
scatter3(velocity, max_turn_angle,avg_conflicts,'MarkerFaceColor','r')
xlabel 'Velocity'
ylabel 'Max. turn angle'
zlabel 'Avg. conflicts'
grid on
axis([0 1 0 15 0 120])
