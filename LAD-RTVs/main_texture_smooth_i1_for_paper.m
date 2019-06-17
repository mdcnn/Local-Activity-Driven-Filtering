%demo code of LAD-RTV for "Local Activity-Driven Structural-Preserving Filtering for Noise Removal and %Image Smoothing (Signal Processing 2019), Lijun Zhao, Huihui Bai, Jie Liang, Anhong Wang, Bing Zeng, %Yao Zhao."
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%parameter setting of LADRTVsModel(I,lambda,maxIter,p,vmax,vmin)
% I:           input image
% lambda:      Parameter controlling the degree of smooth.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% maxIter:     the maximun step of updating iteratively
% p:           intervel of updating local activity
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% vmax:        the maximun of truncated function
% vmin:        the maximun of truncated function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
close all
I = imread('imgs/texture_smooth_i1.png');

output = LADRTVsModel(I,0.01,5,1,10,1);%paper

figure;imshow(output);








