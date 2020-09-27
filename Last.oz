declare 
fun {Take L N} 
   if N<1 then nil
   else
      local Tk in 
	fun {Tk L N} 
	   if N==0 then 0
	   else
	      case L
	      of nil then 0
	      [] H|T then H + {Tk T N-1}
	      end
	  end
	end
	{Tk L N}
      end
   end
end


declare 
fun {ReverseList2 L} 
	local ReverseAux in 
		fun {ReverseAux Remainder Partial} 
			case Remainder 
			of nil then Partial 
			[] H|T then {ReverseAux T H|Partial} 		end 
		end 
		{ReverseAux L nil} 
	end 
end

{Browse {Take {ReverseList2 [1 2 3 4 5 6 9 90]} ~2}}