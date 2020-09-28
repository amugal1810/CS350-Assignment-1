declare
local FoldL Bin in
   fun {Bin X Y}
      X*Y
   end
   
   fun {FoldL L Result  Bin}
      case L
      of nil then Result
      [] H|T then {FoldL T {Bin H Result} Bin}
      end
   end
   {Browse {FoldL [1 2 3 4 6 5] 1 Bin}}
end
      