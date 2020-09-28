declare
local IsDiagonal Count Check IsDiag in
   fun {Count X N}
      case X
      of nil then N
      [] H|T then {Count T N+1}
      end
   end

   fun {Check L N M S}
      case L
      of nil then true
      []H|T then
	 if S==M then  {Check T N M S+1}
	 else
	    if H==0 then {Check T N M S+1}
	    else false
	    end
	 end
      end
   end
   
   fun {IsDiag L N E}
      case L
      of nil then true
      [] H|T then
	 if {Check H N E 1} then {IsDiag T N E+1}
	 else false
	 end
      end
   end

   fun {IsDiagonal L}
      case L
      of nil then true
      [] H|T then {IsDiag L {Count H 0} 1}
      end
   end
   {Browse {IsDiagonal [[1000 0 0 0] [0 1 0 0 ] [0 0 1 0] [0 0 0 20]]}}
end

	    