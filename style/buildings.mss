@building-fill: #e0e0e0;  /* Light gray for building fill */
@building-line: #b3b3b3;  /* Darker gray for building outline */
@building-low-zoom: #d7d7d7;  /* Slightly darker gray for low zoom level */

@building-major-fill: #c8c8c8;  /* Dark gray for major buildings */
@building-major-line: #999999;  /* Darker gray for major building outline */
@building-major-z15: #c2c2c2;  /* Slightly darker gray for z15 major buildings */
@building-major-z14: #bfbfbf;  /* Dark gray for z14 major buildings */

@entrance-permissive: #969696;  /* Gray for permissive entrances */
@entrance-normal: @building-line;  /* Using the building outline color for normal entrances */

#buildings {
  [zoom >= 14] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      polygon-fill: @building-fill;
      line-color: @building-line;
      line-width: .75;
      line-clip: false;
    }
    [amenity = 'place_of_worship'],
    [aeroway = 'terminal'],
    [aerialway = 'station'],
    [building = 'train_station'],
    [public_transport = 'station'] {
      polygon-fill: @building-major-z14;
      [zoom >= 15] {
        polygon-fill: @building-major-z15;
        line-color: @building-major-line;
        [zoom >= 16] {
          polygon-fill: @building-major-fill;
        }
      }
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: #B8B8B8;  /* Light gray for bridges */
  }
}

#entrances {
  [zoom >= 18]["entrance" != null]  {
    marker-fill: @entrance-normal;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-file: url('symbols/rect.svg');
    marker-width: 5.0;
    marker-height: 5.0;
    marker-opacity: 0.0;
    ["entrance" = 'main'] {
      marker-opacity: 1.0;
      marker-file: url('symbols/square.svg');
    }
  }
  [zoom >= 19]["entrance" != null] {
    ["entrance" = 'yes'],
    ["entrance" = 'main'],
    ["entrance" = 'home'],
    ["entrance" = 'service'],
    ["entrance" = 'staircase'] {
      marker-opacity: 1.0;
      marker-width: 6.0;
      marker-height: 6.0;
      ["entrance" = 'service'] {
        marker-file: url('symbols/corners.svg');
      }
    }
    ["access" = 'yes'],
    ["access" = 'permissive'] {
      marker-fill: @entrance-permissive;
    }
    ["access" = 'no'] {
      marker-fill: @entrance-normal;
      marker-file: url('symbols/rectdiag.svg');
    }
  }
  [zoom >= 20]["entrance" != null] {
    marker-width: 8.0;
    marker-height: 8.0;
  }
}