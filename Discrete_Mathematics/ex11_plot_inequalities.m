% Exercises 11
% 1.a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all

plotregion([3 -4; 1 -1; 6 2; -6 -1],
		   [-6; -2; 3; -15],
		   [0 0], [], 'm', 0.1);
hold on
plot([2, 0], [3, 5/3])
for x = 0:5
	for y = 0:5
		plot(x, y, 'r+')
	endfor
endfor

axis equal

print("ex11_1_a.png")
hold off
close

% 1.b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plotregion([1 -1; 6 2; -6 -1],
		   [-2; 3; -15],
		   [0 0], [], 'm', 0.1);
hold on
#plot([2, 0], [3, 5/3])
for x = 0:5
	for y = 0:5
		plot(x, y, 'r+')
	endfor
endfor

axis equal

print("ex11_1_b.png")
hold off
close

% feasible points for relaxed ILP:
X = [1 0; 2 0; 1 1; 2 1; 0 2; 1 2; 2 2; 1 3; 2 3];

% 1.c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(p, x, y) 2*x-3*y+p*(-6-3*x+4*y);

p = 0.25:0.25:1.25
for n=1:length(X)
	plot(p, f(p, X(n, 1), X(n, 2)))
	hold on
endfor
print("ex11_1_c.png")
hold off
close
