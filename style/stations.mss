@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

#stations {

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
  }

  [railway = 'tram_stop'] {
    [zoom >= 14] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
  }
}
