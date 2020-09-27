declare
fun {Merge L M}
   case L
   of nil then M
   [] H|T then
      case M
      of nil then L
      [] Q|R then
	 if H<Q then H|{Merge T M}
	 else Q|{Merge L R}
	 end
      end
   end
end

{Browse {Merge [1 3 5 7 10] [2 4 6 8 10]}} 