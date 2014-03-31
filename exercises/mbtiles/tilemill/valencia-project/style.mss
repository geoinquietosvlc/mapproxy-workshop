//// Colores

@white:#FFFFFF;
@grey1:#F0F0F0;
@grey2:#D9D9D9;
@grey3:#BDBDBD;
@grey4:#969696;
@grey5:#737373;
@grey6:#525252;
@grey7:#252525;
@black:#000000;

@motorway: @grey4;
@trunk: @motorway;
@primary: @grey3;
@secondary: @primary;
@road: @grey2;
@track: @road;
@footway: @grey2;
@cycleway: @grey2;

@fontcolor: @grey3 * 0.6;
@halo: rgba(255,255,255,0.9);

//// Capas BASE

Map {
  background-color: @grey4;
}

#countries {
  ::outline {
    line-color: @grey6;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: @white;
}



//// Capas OSM

.land[zoom > 9]{
  [type = 'residential'] {
    ::outline {
      line-color: @grey3;
      line-width: 2;
      line-join: round;
      
    }
    polygon-fill: @grey1;
    
  }
  
  [zoom > 12][type = 'garden'] {
    ::outline {
      line-color: @grey4;
      line-width: 2;
      line-join: round;
    }
    polygon-fill: @grey2;
  }
}

.water{
  line-color: @grey1;
  line-width: 0.3;
  [zoom > 12]{
    ::outline {
        line-color: @grey4;
        line-width: 1;
        line-join: round;
      }  
  }
}

#water_areas[zoom > 9]{
  polygon-fill: @grey2;
}

#buildings[zoom > 13]{
  building-fill: @grey3;
  building-height: 3;
}

