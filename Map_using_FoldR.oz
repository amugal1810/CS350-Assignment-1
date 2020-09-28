declare
local U Bin Map in
   fun {U X}
      X*X
   end
   fun {Bin U}
      fun {$ X Y}
	 {U X}|Y
      end
   end
   
   fun {Map U L}
      {FoldR L {Bin U} nil}
   end
   {Browse {Map U [1 2 3 4 5 6 7]}}
end


      