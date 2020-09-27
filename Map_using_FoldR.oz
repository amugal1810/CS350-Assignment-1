declare
local FoldR U Bin Map in
   fun {U X}
      X*X
   end
   fun {Bin X Y U}
      {U X}|Y
   end
   fun {FoldR L I U}
      case L
      of nil then I
      [] H|T then {Bin H {FoldR T I U} U}
      end
   end
   fun {Map FoldR U L}
      {FoldR L nil U}
   end
   {Browse {Map FoldR U [1 2 3 4 5 6 7]}}
end


      