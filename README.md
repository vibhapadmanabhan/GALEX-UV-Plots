# GALEX UV Plots
The files in this repo attempt to reproduce Fig. 1 and Fig. 3 from *Components of the Diffuse Ultraviolet Radiation at High Latitudes* (Akshaya et al., 2019)<sup>1</sup>, in the GDL (free clone of IDL) language. They work in tandem with two other scripts<sup>2</sup> written by Prof. Jayant Murthy, ``get_galex_hlsp_data.pro`` and ``create_wcs_map.pro``, who was the mentor for this project.

#TODO: Explain background info, create_wcs_map, get_galex_hlsp_data. Add image output files.

## Files on this repo
``galactic_pole_plot.pro`` attempts to reproduce Fig. 1 in the paper in a window sized 400 x 400. This is a grayscale contour plot of the diffuse (far) ultraviolet radiation at the galactic north pole. The brighter areas correspond to a higher surface brightness, measured in photon units<sup>1</sup>. The concentric circles represent the latitudes 80&deg; (outermost circle), 82&deg;, 84&deg;, 86&deg;, and 88&deg; with 90&deg; N being the point at the centre.

``uv_ir.pro``attempts to partially reproduce Fig. 3 in the paper (it does not include error bars). It plots the GALEX UV surface brightness against the IR 100 &mu;m surface brightness (Schlegel et al. 1998<sup>3</sup>)<sup>1</sup> by dividing the IR surface brightness values into bins and computing the average UV surface brightness per bin. 

## References
<sup>1</sup>[Components of the Diffuse Ultraviolet Radiation at High Latitudes](https://www.researchgate.net/publication/335061859_Components_of_the_Diffuse_Ultraviolet_Radiation_at_High_Latitudes)<br>
<sup>2</sup>[All Sky Mapping of Diffuse UV Radiation as Observed by GALEX](https://archive.stsci.edu/prepds/uv-bkgd/)<br>
<sup>3</sup>[Maps of Dust Infrared Emission for Use in Estimation of Reddening and Cosmic Microwave Background Radiation Foregrounds](https://iopscience.iop.org/article/10.1086/305772)
