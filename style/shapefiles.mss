#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.2;
    [zoom >= 2] {
      line-width: 0.3;
    }
    [zoom >= 3] {
      line-width: 0.4;
    }
    line-color: #909090; /* Light gray for country boundaries */
  }
}

#ocean-lz,
#ocean {
  polygon-fill: #c0c0c0; /* Light gray for water */
}

#icesheet-poly {
  [zoom >= 5] {
    polygon-fill: #d8d8d8; /* Very light gray for glaciers */
  }
}

#icesheet-outlines {
  [zoom >= 5] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-width: 0.375;
      line-color: #b0b0b0; /* Soft gray for glacier lines */
      [zoom >= 8] {
        line-width: 0.5;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 0.75;
      }
    }
  }
}