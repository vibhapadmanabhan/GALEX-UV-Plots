pro mean_calculator, ir100, fuv_final
bins=lonarr(20)
for i=0, n_elements(bins)-1 do begin
	count=0
	vals=lonarr(100000)
	for j=0, n_elements(ir100)-1 do begin
		if (((ir100(j))*10 gt i) and (((ir100(j))*10) lt (i+1)) then begin
			if (fuv_final(j) gt -9999) then begin
				vals(count)=fuv_final(j)
				count=count+1
			endif
		endif
	endfor
	q=where(vals gt 0)
	vals=vals(q)
	result=double(mean(vals))
	bins(i)=result
endfor
print, bins

x=[0 to 2.0 in increments of 0.1]
plot, x, bins
xtitle='IR'
ytitle='GALEX FUV'
return
end