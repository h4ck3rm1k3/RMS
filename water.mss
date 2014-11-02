#water-areas {
  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-fill: @water-color;
    [way_pixels >= 4] {
      polygon-gamma: 0.75;
    }
    [way_pixels >= 64] {
      polygon-gamma: 0.6;
    }
  }

  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [natural = 'bay']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway {
    [zoom >= 6] {
      polygon-fill: @water-color;
      [way_pixels >= 4] {
        polygon-gamma: 0.75;
      }
      [way_pixels >= 64] {
        polygon-gamma: 0.6;
      }
    }
  }

  [natural = 'mud'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/mud.png');
    polygon-pattern-alignment: global;
  }
}

#water-areas-overlay {
  [natural = 'marsh'],
  [natural = 'wetland'] {
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/marsh.png');
    }
  }
}

#water-lines-casing {
  [waterway='stream'],
  [waterway='ditch'],
  [waterway='drain'] {
    [int_tunnel = 'no'] {
      [zoom >= 13] {
        line-width: 2.5;
        line-color: white;
        [waterway='stream'][zoom >= 15] {
          line-width: 3.5;
        }
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

.water-lines {
  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: @water-color;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12] {
    [bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 6;
        [zoom >= 15] { bridgecasing/line-width: 7; }
        [zoom >= 17] { bridgecasing/line-width: 11; }
        [zoom >= 18] { bridgecasing/line-width: 13; }
      }
    }
    line-color: @water-color;
    line-width: 2;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 14] { line-width: 5; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 17] { line-width: 10; }
    [zoom >= 18] { line-width: 12; }
    line-cap: round;
    line-join: round;
    [int_tunnel = 'yes'] {
      line-dasharray: 4,2;
      line-cap: butt;
      line-join: miter;
      a/line-color: #f3f7f7;
      a/line-width: 1;
      [zoom >= 14] { a/line-width: 2; }
      [zoom >= 15] { a/line-width: 3; }
      [zoom >= 17] { a/line-width: 7; }
      [zoom >= 18] { a/line-width: 8; }
    }
  }
}
