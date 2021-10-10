@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

#stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    marker-file: url('symbols/entrance.10.svg');
    marker-fill: @transportation-icon;
    marker-clip: false;
    [zoom >= 19] {
   }
  }

  [railway = 'station'][zoom >= 12] {
    marker-file: url('symbols/square.svg');
    marker-fill: @station-color;
    marker-clip: false;
    [station != 'subway'] {
      marker-width: 4;
    }
    [zoom >= 13][station != 'subway'],
    [zoom >= 14][station = 'subway'] {
      marker-width: 6;
    }
    [zoom >= 14][station !='subway'],
    [zoom >=15] {
   }
    [zoom >= 15][station != 'subway'],
    [zoom >= 16] {
      marker-width: 9;
   }
  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
    [zoom >= 15] {
   }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
    [zoom >= 14] {
   }
  }

  [railway = 'tram_stop'] {
    [zoom >= 14] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
    [zoom >= 16] {
   }
  }
}
