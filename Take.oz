declare 
fun {Take L N} 
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
	{Rev {Tk L N nil} nil}
      end
   end
end
{Browse {Take [1 2 3 4 5 6 9 90] 7}}