declare 
fun {Last L N} 
   if N<1 then nil
   else
      local Tk Rev in 
	 fun {Rev L Pa}
	    case L
	    of nil then Pa
	    [] H|T then {Rev T H|Pa}
	    end
	 end
	 
	 fun {Tk L N Pa} 
	   if N==0 then Pa 
	   else
	      case L
	      of nil then Pa
	      [] H|T then {Tk T N-1 H|Pa}
	      end
	   end
	 end
	 {Tk {Rev L nil} N nil}
      end
   end
end

{Browse {Last [1 2 3 4 6 7 9] 90}}


