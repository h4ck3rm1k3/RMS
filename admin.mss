@admin-boundaries: #ac46ac;

#admin-01234 {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 5;
        line-dasharray: 4,2;
        line-clip: false;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-clip: false;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 11] {
      line-width: 3;
    }
  }
  opacity: 0.4;
}
