build/counties.json: build/gz_2010_us_050_00_20m.shp
	node_modules/.bin/topojson \
		-o $@ \
		--projection='width = 960, height = 600, d3.geo.albersUsa() \
			.scale(1280) \
			.translate([width / 2, height / 2])' \
		--simplify=.5 \
		-- counties=$<