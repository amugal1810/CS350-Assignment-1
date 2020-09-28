declare
local Next Taylor Sin Approximate Sum in
   fun {Next X N F}
      (~F*X*X/((2.0*N)*(2.0*N+1.0)))
   end
   fun lazy {Taylor X N F}
      if N==0.0 then X|{Taylor X N+1.0 X}
      else {Next X N F}|{Taylor X N+1.0 {Next X N F}}
      end
   end
   
   fun {Sin X}
      {Taylor X 0.0 1.0}
   end
   
   fun {Sum L F E}
      if L.1-F<E then
	 if F-L.1<E then 0.0
	 else L.1+{Sum L.2 L.1 E}
	 end
      else L.1+{Sum L.2 L.1 E}
      end
   end
   fun {Approximate S Epsilon}
      {Sum S 0.0 Epsilon}
   end
   
   {Browse {Approximate {Sin 2.0} 0.00000001}}
end
