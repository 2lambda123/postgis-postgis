DROP VIEW upgrade_test_raster_view_st_value;
DROP TABLE upgrade_test_raster;
DROP TABLE upgrade_test_raster_with_regular_blocking;

-- Drop functions deprecated on upgrade
DROP FUNCTION IF EXISTS st_value_deprecated_by_postgis_201(raster,geometry,boolean);
