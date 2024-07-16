audiofile=('example.wav');
midifile=('example.mid');

% audiofile = 'polyExample.wav';
% midifile = 'polyExample.mid';

% audiofile=('Monteverdi_A un giro sol.wav');
% midifile=('/Users/jcdevaney/Documents/GitHub/pyAMPACTtutorials/test_files/debugFiles/Monteverdi-A un giro sol Bb 2v.midi');

% audiofile=('Monteverdi_ Cruda Amarilli.wav');
% midifile=('/Users/jcdevaney/Desktop/pyAMPACTtest/Monteverdi-Cruda Amarilli-4v.midi');

width = 3;
targetsr = 4000;
nharm = 3; 
winms = 100; 
hop = 32;

% % run the dyanamic time warping alignment
[res,spec,dtw] = runDTWAlignment(audiofile, midifile, 0.025,width,targetsr,nharm,winms);


% % HMM parameters
% meansCovarsMat='polySingingMeansCovars.mat';
% 
% % % voice type for each polyphonic line

% % % align MIDI to audio
% [estimatedOns, estimatedOffs, nmat,dtw]=runPolyAlignment(audiofile, midifile, meansCovarsMat, voiceType);
% 
% % % for
% for v = 1 : 2
%     ons=nonzeros(estimatedOns{v});
%     offs=nonzeros(estimatedOffs{v});
%     loc=1;
%     n = 1 
%     % Estimate f0 for a matrix (or vector) of amplitudes and frequencies
%     [f0{v}{loc}, pwr{v}{loc}, t{v}{loc}, M{v}{loc}, xf{v}{loc}] = f0EstWeightedSumSpec(audiofile, ons(loc), offs(loc), nmat{v}(n,4));
%     % Estimate note-wise perceptual values
%     noteVals{v}{loc}=estimatePerceptualParamters([f0{v}{loc}],[pwr{v}{loc}],[xf{v}{loc}],[M{v}{loc}],sr,256,1,sig);
%     loc=loc+1;
% end