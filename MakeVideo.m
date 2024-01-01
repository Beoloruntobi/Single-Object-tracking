%% Read all image files into myMovie 
A = folderFiles('CarChase1/outCarChase');
%field = 'cdata';
myMovie = struct('cdata', [], 'colormap', []);
%myMovie = zeros(1, size(A,1));
for i = 1:size(A, 1)
    % A = imread('CarChase1/outCarChase/');
    myMovie(i).cdata = imread(A{i});
end

%% Write the content of myMovie into a video

myVideo = VideoWriter('myfile.avi');
myVideo.FrameRate = 15;
myVideo.Quality = 50;

open(myVideo);
writeVideo(myVideo, myMovie);
close(myVideo);