import rasterio

def s2_bandmap_from_template(s2_template_tif):
    with rasterio.open(s2_template_tif) as src:
        descs = src.descriptions or ()
    if not descs or all(d is None for d in descs):
        raise ValueError(f"S2 template has no band descriptions: {s2_template_tif}")

    bandmap = {}
    for i, d in enumerate(descs, start=1): 
        if not d:
            continue
        band_code = str(d).split("_", 1)[0].upper()
        bandmap[band_code] = i
    return bandmap
