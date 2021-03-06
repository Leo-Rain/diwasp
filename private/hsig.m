function Hs=hsig(varargin)
%DIWASP function to calculate significant wave height
%
%Hs=Hsig(SM)
%
%Hs is significant wave height of spectral matrix SM
%
%"help data_structures" for information on the DIWASP data structures

%Copyright (C) 2002 Coastal Oceanography Group, CWR, UWA, Perth


if nargin==1
    SM=varargin{1};
    df=SM.freqs(2)-SM.freqs(1);ddir=SM.dirs(2)-SM.dirs(1);S=SM.S;
elseif nargin==3
    df=varargin{2};ddir=varargin{3};S=varargin{1};
end

Hs=4*sqrt(sum(sum(real(S)))*df*ddir);
