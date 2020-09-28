local ZipWith Product Sum Subtract in
   fun {Product A B}
      A*B
   end
   fun {ZipWith BinOp X Y}
      case X
      of nil then nil
      []H|T then
	 case Y
	 of nil then nil
	 [] H1|T1 then {BinOp H H1}|{ZipWith BinOp T T1}
	 end
      end
   end
   {Browse {ZipWith Product [1 2 3 4] [5 2 3 4]}}
end