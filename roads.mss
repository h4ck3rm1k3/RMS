@motorway-fill:             #00a25a;
@trunk-fill:                #db633c;
@primary-fill:              #0d87c9;

@roads-width:               0.5;
@roads-width-z11:           1;
@roads-width-z12:           2;
@roads-width-z13:           3;
@roads-width-z14:           4;
@roads-width-z15:           5;
@roads-width-z16:           6;
@roads-width-z17:           7;
@roads-width-z18:           8;

.motorway {
  ::casing {
    line-color: @motorway-fill;
    line-width: @roads-width+2;
    [zoom >= 11] { line-width: @roads-width-z11+4; }
    [zoom >= 12] { line-width: @roads-width-z12+4; }
    [zoom >= 13] { line-width: @roads-width-z13+4; }
    [zoom >= 14] { line-width: @roads-width-z14+4; }
    [zoom >= 15] { line-width: @roads-width-z15+4; }
    [zoom >= 16] { line-width: @roads-width-z16+4; }
    [zoom >= 17] { line-width: @roads-width-z17+4; }
    [zoom >= 18] { line-width: @roads-width-z18+4; }
  }
}

.trunk {
  ::casing {
    line-color: @trunk-fill;
    line-width: @roads-width+1;
    [zoom >= 11] { line-width: @roads-width-z11+2; }
    [zoom >= 12] { line-width: @roads-width-z12+2; }
    [zoom >= 13] { line-width: @roads-width-z13+2; }
    [zoom >= 14] { line-width: @roads-width-z14+2; }
    [zoom >= 15] { line-width: @roads-width-z15+2; }
    [zoom >= 16] { line-width: @roads-width-z16+2; }
    [zoom >= 17] { line-width: @roads-width-z17+2; }
    [zoom >= 18] { line-width: @roads-width-z18+2; }
  }
}

.primary {
  ::casing {
    line-color: @primary-fill;
    line-width: @roads-width;
    [zoom >= 11] { line-width: @roads-width-z11; }
    [zoom >= 12] { line-width: @roads-width-z12; }
    [zoom >= 13] { line-width: @roads-width-z13; }
    [zoom >= 14] { line-width: @roads-width-z14; }
    [zoom >= 15] { line-width: @roads-width-z15; }
    [zoom >= 16] { line-width: @roads-width-z16; }
    [zoom >= 17] { line-width: @roads-width-z17; }
    [zoom >= 18] { line-width: @roads-width-z18; }
  }
}

#roads-text-ref {
  [zoom >= 11] {
    [network = 'T'] {
      [refs = 'dugong'] {
        shield-size: 10;
        shield-fill: #fff;
        shield-placement: line;
        shield-file: url("symbols/shields/tourist_dugong2.svg");
        shield-spacing: 750;
        shield-min-distance: 30;
        shield-face-name: @bold-fonts;
        shield-clip: false;
      }

      [refs = 'cobbco'] {
        shield-size: 10;
        shield-fill: #fff;
        shield-placement: line;
        shield-file: url("symbols/shields/tourist_cobbco.svg");
        shield-spacing: 750;
        shield-min-distance: 30;
        shield-face-name: @bold-fonts;
        shield-clip: false;
      }

      [refs =~ "T?[0-9]{1,3}"] {
        shield-name: "[refs].replace('(T?)(\d{1,3})','$2')";
        shield-size: 10;
        shield-fill: #fff;
        shield-placement: line;
        shield-file: url("symbols/shields/TouristDrive2.svg");
        shield-spacing: 750;
        shield-min-distance: 30;
        shield-face-name: @bold-fonts;
        shield-clip: false;
      }
    }
  }

  [zoom >= 5] {
    [network = 'M'] {
      shield-name: "[refs]";
      shield-size: 10;
      shield-fill: #ffcc00;
      shield-placement: line;
      shield-file: url("symbols/shields/Alpha2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
	}
  }

  [zoom >= 7] {
    [network = 'NH'] {
      shield-name: "[refs].replace('(NH)(\d{1,3})','$2')";
      shield-size: 10;
      shield-fill: #fde352;
      shield-placement: line;
      shield-file: url("symbols/shields/NH2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
    }

    [network = 'NR'] {
      shield-name: "[refs].replace('(NR)(\d{1,3})','$2')";
      shield-size: 10;
      shield-fill: #000;
      shield-placement: line;
      shield-file: url("symbols/shields/NR2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
  	}
  }

  [zoom >= 8] {
    [network = 'A'] {
      shield-name: "[refs]";
      shield-size: 10;
      shield-fill: #ffcc00;
      shield-placement: line;
      shield-file: url("symbols/shields/Alpha2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
    }
  }
  
  [zoom >= 9] {
  	[network = 'B'] {
      shield-name: "[refs]";
      shield-size: 10;
      shield-fill: #ffcc00;
      shield-placement: line;
      shield-file: url("symbols/shields/Alpha2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
  	}

    [network = 'S'] {
      shield-name: "[refs].replace('(S)(\d{1,3})','$2')";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/shields/StateRoute2.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
  	}
  }
}

#roads-text-name {
  [highway = 'motorway'][zoom >= 10] {
    text-name: "[route_name]";
    text-size: 15;
    text-fill: black;
    text-spacing: 300;
    text-clip: false;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: @motorway-fill;
  }

  [highway = 'trunk'][zoom >= 10] {
    text-name: "[route_name]";
    text-size: 15;
    text-fill: black;
    text-spacing: 300;
    text-clip: false;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: @trunk-fill;
  }

  [highway = 'primary'][zoom >= 10] {
    text-name: "[route_name]";
    text-size: 15;
    text-fill: black;
    text-spacing: 300;
    text-clip: false;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: @primary-fill;
  }
}
