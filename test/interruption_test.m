function interruption_test()

jleval println("Hit Ctrl-C to stop me!")

% this one causes crashes (sometimes?)
jleval 'x = 0; while(true); x += 1; if x%10000 == 0; println(x); end; yield(); end'


% this one doesn't cause any problems
% jleval 'x = 0; while(true); x += 1; yield(); end'

% this one isn't interruptable, as it never yields
% jleval 'x = 0; while(true); x += 1; end'


end