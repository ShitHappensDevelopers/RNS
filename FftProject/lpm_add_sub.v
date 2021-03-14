module lpm_add_sub (  result, dataa, datab ) ;

  parameter lpm_width = 1 ;
  parameter lpm_representation = "UNSIGNED" ;
  parameter lpm_direction  = "UNUSED" ;

  input  [lpm_width-1:0] dataa, datab ;
  output [lpm_width-1:0] result ;

  reg  [lpm_width-1:0] tmp_result ;
  reg  tmp_cout ;
  reg  tmp_overflow ;
  reg  [lpm_width-2:0] tmp_a, tmp_b;
  integer i, j, k, n;
  integer dataa_int, datab_int, result_int, compare, borrow; 


  always @( dataa or datab )
    begin

	begin
		borrow = 1 ;
  		if (lpm_direction == "ADD") 
                begin
                        {tmp_cout,tmp_result} = dataa + datab;
                        tmp_overflow = tmp_cout ;
                end
                else
  		if (lpm_direction == "SUB") 
                begin
                        // subtraction
                        {tmp_overflow, tmp_result} = dataa - datab - borrow ;
                        tmp_cout = (dataa >= (datab+borrow))?1:0 ;
                end
	
		if(lpm_representation == "SIGNED")
		begin
			// convert to negative integer
			if(dataa[lpm_width-1] == 1)
			begin
				for(j = 0; j < lpm_width - 1; j = j + 1)
					tmp_a[j] = dataa[j] ^ 1;
				dataa_int = (tmp_a + 1) * (-1) ;
			end
			else dataa_int = dataa;

			// convert to negative integer
			if(datab[lpm_width-1] == 1)
			begin
				for(k = 0; k < lpm_width - 1; k = k + 1)
					tmp_b[k] = datab[k] ^ 1;
				datab_int = (tmp_b + 1) * (-1);
			end
			else datab_int = datab;

			// perform the addtion or subtraction operation
  			if(lpm_direction == "ADD")
  				result_int = dataa_int + datab_int;
  			else
  			if(lpm_direction == "SUB")
  				result_int = dataa_int - datab_int - borrow ;
			tmp_result = result_int ;

			compare = 1 << (lpm_width -1);
			if((result_int > (compare - 1)) || (result_int < (-1)*(compare)))
				tmp_overflow = 1;
			else
				tmp_overflow = 0;
		end

	end
	end

  assign result = tmp_result ;

endmodule 