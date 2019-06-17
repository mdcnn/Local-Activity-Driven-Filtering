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
I = (imread('imgs/ss_01.png'));

output0 = LADRTVsModel(I,0.003,4,1,10,1);%scale1
output1 =  LADRTVsModel(I,0.08,4,1,30,1);%scale2
output2 =  LADRTVsModel(I,0.3,4,1,30,1);%scale3

figure;imshow([output0(:,1:210,:) 255*ones(376,5,3) output1(:,216:426,:) 255*ones(376,5,3)  output2(:,431:end,:)]);axis image









