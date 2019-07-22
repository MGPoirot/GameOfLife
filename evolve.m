%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   G A M E   O F   L I F E : evolve  %%%
%%%                                     %%%
%%%   by M. G. Poirot  , feb 11 2014    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function evolve()
    global g m n
    g = g + 1;
    l = zeros(n);
    for x = 1:n
        for y = 1:n
            if y > 1
                if m(y-1,x)
                    l(y,x) = l(y,x) + 1;
                end
                if x > 1
                    if m(y-1,x-1)
                        l(y,x) = l(y,x) + 1;
                    end
                end
                if x < n
                    if m(y-1,x+1)
                        l(y,x) = l(y,x) + 1;
                    end
                end
            end
            if x > 1
                if m(y,x-1)
                    l(y,x) = l(y,x) + 1;
                end
            end
            if x < n
                if m(y,x+1)
                    l(y,x) = l(y,x) + 1;
                end
            end
            if y < n
                if m(y+1,x)
                    l(y,x) = l(y,x) + 1;
                end
                if x > 1
                    if m(y+1,x-1)
                        l(y,x) = l(y,x) + 1;
                    end
                end
                if y < n & x < n
                    if m(y+1,x+1)
                        l(y,x) = l(y,x) + 1;
                    end
                end
            end
        end
    end

    for x = 1:n
        for y = 1:n
            if l(y,x) > 3 | l(y,x) < 2
                m(y,x) = 0;
            end
            if l(y,x) == 3
                m(y,x) = 1;
            end
            %% I've added a little bit of randomness to prevent stabilizing
            if l(y,x) == 2 & rand > 0.999
                m(y,x) = 1;
            end
        end
    end

    imagesc(m);
    title(['generation ' num2str(g)])
    axis square
end