%%SOMETHING REALY PECULAIR
tic
  n = 100;
  bg = zeros(n,n);
  for i=1:n
      for j=1:n
            bg(i,j) = sin((pi*i*j)/n);
      end
  end
  imagesc(bg);
  axis square
toc