module lpm_mult ( result, dataa, datab, sum ) ;

  parameter lpm_widtha     = 1 ;
  parameter lpm_widthb     = 1 ;
  parameter lpm_widths     = 1 ;
  parameter lpm_widthp     = 2 ;
  parameter lpm_representation  = UNSIGNED ;

  input  [lpm_widtha-10] dataa ;
  input  [lpm_widthb-10] datab ;
  input  [lpm_widths-10] sum ;
  output [lpm_widthp-10] result;

   inernal reg
  reg   [lpm_widthp-10] tmp_result ;
  reg   [lpm_widtha-20] a_int ;
  reg   [lpm_widthb-20] b_int ;
  reg   [lpm_widths-20] s_int ;
  reg   [lpm_widthp-20] p_reg ;
  integer p_int;
  integer i, j, k, m, n, p, maxs_mn ;
  integer int_dataa, int_datab, int_sum, int_result ;


  always @( dataa or datab or sum)
    begin
      		if (lpm_representation == UNSIGNED)
        		begin
		  			int_dataa = dataa ;
		  			int_datab = datab ;
		  			int_sum = sum ;
        		end
      		else 
  		if (lpm_representation == SIGNED)
          		begin
		  		 convert signed dataa
          		if(dataa[lpm_widtha-1] == 1)
          		begin
            		int_dataa = 0 ;
            		for(i = 0; i  lpm_widtha - 1; i = i + 1)
                		a_int[i] = dataa[i] ^ 1;
            		int_dataa = (a_int + 1)  (-1) ;
          		end
          		else int_dataa = dataa ;

		  		 convert signed datab
          		if(datab[lpm_widthb-1] == 1)
          		begin
            		int_datab = 0 ;
            		for(j = 0; j  lpm_widthb - 1; j = j + 1)
                		b_int[j] = datab[j] ^ 1;
            		int_datab = (b_int + 1)  (-1) ;
          		end
          		else int_datab = datab ;

		  		 convert signed sum
          		if(sum[lpm_widths-1] == 1)
          		begin
            		int_sum = 0 ;
            		for(k = 0; k  lpm_widths - 1; k = k + 1)
                		s_int[k] = sum[k] ^ 1;
            		int_sum = (s_int + 1)  (-1) ;
          		end
          		else int_sum = sum ;
				end
        		else 
          		begin
  		  			int_dataa = {lpm_widtha{1'bx}} ;
  		  			int_datab = {lpm_widthb{1'bx}} ;
  		  			int_sum   = {lpm_widths{1'bx}} ;
          		end

	  		p_int = int_dataa  int_datab + int_sum ;
			maxs_mn = ((lpm_widtha+lpm_widthb)lpm_widths)lpm_widtha+lpm_widthblpm_widths ;
	  		if(lpm_widthp = maxs_mn)
				tmp_result = p_int ;
	  		else
				begin
					p_reg = p_int;
					for(m = 0; m  lpm_widthp; m = m +1)
						tmp_result[lpm_widthp-1-m] = p_reg[maxs_mn-1-m] ;
				end	
	end

  assign result = tmp_result ;

 endmodule  lpm_mult