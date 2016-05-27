ds9_region, ra, dec, filename

 ra_ds9 = ra	;
dec_ds9 = dec	;
color='green'
openw, lun_reg, filename+'.reg', /get_lun
printf,lun_reg,'global color='+color+' font="helvetica 10 normal" select=1 edit=1 move=1 delete=1 include=1 fixed=0 source'
for i_n = 0LL, N_ELEMENTS(ra_ds9)-1LL do printf,lun_reg, strcompress('fk5;circle('+string(ra_ds9[i_n]) +','+string(dec_ds9[i_n])+',1.2")',/remove_all)
free_lun, lun_reg

end
