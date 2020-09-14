;run get_galex_hlsp_data and create_wcs_map with fov=15 and cdelt=0.075

window, 0, xsize=400, ysize=400
tv, bytscl(rebin(fuv_grid, 400, 400), 0, 850)
plot, gl, gb, /nodata, /noerase, pos=[0, 0, 1, 1]
contour, /noerase, lev=[80, 82, 84, 86, 88, 90], pos=[0, 0, 1, 1]
