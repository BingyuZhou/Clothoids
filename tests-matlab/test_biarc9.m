%=========================================================================%
%                                                                         %
%  Autors: Enrico Bertolazzi                                              %
%          Department of Industrial Engineering                           %
%          University of Trento                                           %
%          enrico.bertolazzi@unitn.it                                     %
%          m.fregox@gmail.com                                             %
%                                                                         %
%=========================================================================%
% Driver test program to check Clothoids lib                              %
%=========================================================================%

addpath('../matlab');

clear all ;
close all ;

X = [2.9265642,2.6734362,2.5109322,1.9078122,1.1859282,1.9249962, ...
     2.8265562,0.00468420000000025,-2.826567,-1.9437558,-1.1859438, ...
     -1.9062558,-2.501565,-2.6734386,-2.9265642,-2.6187522,-1.1406318, ...
     -0.8968758,-1.4562558,-1.9062558,-0.00468780000000013,1.9078122, ...
     1.4468682,0.8968722,1.1406282,2.6187522, 2.9265642 ] ;
Y = [-1.707808758,-1.707808758,-2.367185958,-2.582810358,-2.582810358, ...
     -1.167184758,0.915619242,3.178123242,0.915619242,-1.150000758, ...
     -2.582810358,-2.582810358,-2.393750358,-1.707808758,-1.707808758, ...
     -3.178123242,-3.178123242,-2.989063158,-0.915616758,0.925003242, ...
     2.953123242,0.925003242,-0.915616758,-2.989063158,-3.178123242,-3.178123242, -1.707808758 ] ;

B = Biarc();
A = CircleArc();
for kk=3:length(X)
  x0 = X(kk-2) ;
  x1 = X(kk-1) ;
  x2 = X(kk) ;
  y0 = Y(kk-2) ;
  y1 = Y(kk-1) ;
  y2 = Y(kk) ;

  ok1 = B.build_3P( x0, y0, x1, y1, x2, y2 );
  ok2 = A.build_3P( x0, y0, x1, y1, x2, y2 );

  ok1
  ok2

  subplot(2,1,1);  
  B.plot(1000,'-r','LineWidth',2);
  hold on

  subplot(2,1,2);  
  A.plot() ;
  hold on

end

subplot(2,1,1);  
axis equal;
title('Biarc');

subplot(2,1,2);  
axis equal;
title('Circle');
