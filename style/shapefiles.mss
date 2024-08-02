#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.2;
    [zoom >= 2] {
      line-width: 0.3;
    }
    [zoom >= 3] {
      line-width: 0.4;
    }
    line-color: #a0a0a0; /* Light gray for country boundaries */
  }
}

#ocean-lz,
#ocean {
  polygon-fill: #d0d8e1; /* Light grayish-blue for water */
}

#icesheet-poly {
  [zoom >= 5] {
    polygon-fill: #e6f2f2; /* Very light cyan-gray for glaciers */
  }
}

#icesheet-outlines {
  [zoom >= 5] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-width: 0.375;
      line-color: #c4e0e0; /* Soft cyan for glacier lines */
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