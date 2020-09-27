declare
local IsDiagonal IsD Diagonal Count in
   fun {Count L N M}
      case L
      of nil then N-1
      [] H|T then
	 if M==2*N-1 then {Count T N+1 1}
	 else {Count T N M+1}
	 end
      end
   end
   
   fun {Diagonal L N Pa}
      case L
      of nil then Pa
      [] H|T then
	 if H==0 then {Diagonal T N+1 Pa}
	 else {Diagonal T N+1 N|Pa}
	 end
      end
   end

   fun {Final X N}
      case X
      of nil then true
      [] H|T then
	 if (H mod N)==(H div N) then {Final T N}
	 else false
	 end
      end
   end
   
   fun {IsDiagonal  L}
      {Final {Diagonal L 0 nil} {Count L 1 1}}
   end
   
   {Browse {IsDiagonal [1000 0 0 0 1 0 0 0 1]}}
end
