pro uv_ir, ir100, fuv_final
bins=lonarr(20) ;how many bins to average across
for i=0, n_elements(bins)-1 do begin
	count=0
	vals=lonarr(100000) ;initialise empty array
	for j=0, n_elements(ir100)-1 do begin
		if (((ir100(j))*10 gt i) and (((ir100(j))*10) lt (i+1)) then begin ;check if the IR observation belongs in the current bin
			if (fuv_final(j) gt -9999) then begin ;add UV value to vals if the value is not null
				vals(count)=fuv_final(j)
				count=count+1
			endif
		endif
	endfor
	q=where(vals gt 0) 
	vals=vals(q) ;select only non zero UV values
	result=double(mean(vals)) ;compute average UV value for bin
	bins(i)=result
endfor
print, bins

x=findgen(20)/10
plot, x, bins
xtitle='IR 100'
ytitle='GALEX UV'
return
end
