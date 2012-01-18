close all

plotregion([3 -4; 1 -1; 6 2; -6 -1],
		   [-6; -2; 3; -15],
		   [0 0], [], 'm', 0.3);
hold on
plot([2, -2.5], [3, 0])
gr = 0:1:5
cardprod(gr, gr)

axis equal

%function plotregion(A,b,lb,ub,c,transp,points,linetyp,start_end)
% The function plotregion plots closed convex regions in 2D/3D. The region
% is formed by the matrix A and the vectors lb and ub such that Ax>=b
% and lb<=x<=ub, where the region is the set of all feasible x (in R^2 or R^3).
% An option is to plot points in the same plot.
%
% Usage:   plotregion(A,b,lb,ub,c,transp,points,linetyp,start_end)
%
% Input:
%
% A - matrix. Set A to [] if no A exists
% b - vector. Set b to [] if no b exists
% lb - (optional) vector. Set lb to [] if no lb exists
% ub - (optional) vector. Set ub to [] if no ub exists
% c - (optional) color, example 'r' or [0.2 0.1 0.8], {'r','y','b'}.
%       Default is a random colour.
% transp - (optional) is a measure of how transparent the
%           region will be. Must be between 0 and 1. Default is 0.5.
% points - (optional) points in matrix form. (See example)
% linetyp - (optional) How the points will be marked.
%           Default is 'k-'.
% start_end - (optional) If a special marking for the first and last point
%              is needed.
%