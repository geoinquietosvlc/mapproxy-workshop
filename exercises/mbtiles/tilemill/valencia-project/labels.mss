/// FONTS

@optima: "Optima Lt Std Roman","DejaVu Sans Bold";
@optima_it: "Optima Lt Std Italic","DejaVu Sans Bold Oblique";
@melior: "Melior Lt Std Regular","DejaVu Serif Condensed";
@melior_it: "Melior Lt Std Regular Italic","DejaVu Serif Condensed Italic";



//  --------  CITIES

.label-location[zoom>8][type='town'],
.label-location[zoom>5][type='city']{
  text-face-name: @optima;
  text-fill:@fontcolor;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:@halo;
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"[name]";
  
  [zoom=6] { 
    text-size:7; 
  }
  [zoom=7] { 
    text-size:8; 
  }
  [zoom=8] { 
    text-size:9;
    text-character-spacing:1;
    text-line-spacing:1;
  }
  [zoom>9] {
    text-size:10;
    text-character-spacing:2;
    text-line-spacing:2;
  }
}

.label-location[zoom>9][type='village'],
.label-location[zoom>10][type='suburb'],
.label-location[zoom>11][type='hamlet']
{
  text-face-name: @optima;
  text-fill:@fontcolor;
  text-size:9;
  text-transform:capitalize;
  text-halo-fill:@halo;
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"[name]";
  
  [zoom=9] { 
    text-size:7; 
  }
  [zoom=10] { 
    text-size:8; 
  }
  [zoom=11] { 
    text-size:9;
  }
  [zoom>12] {
    text-size:10;
    text-character-spacing:1;
    text-line-spacing:1;
  }
}

.label-location[zoom>13][type='locality']
{
  text-face-name: @optima;
  text-fill:@fontcolor;
  text-size:9;
  text-transform:capitalize;
  text-halo-fill:@halo;
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"[name]";
  
  [zoom=13] { 
    text-size:7; 
  }
  [zoom=14] { 
    text-size:8; 
  }
  [zoom=15] { 
    text-size:9;
  }
}


/* ---- HIGHWAY ---- */

.label-road {
  text-face-name:@optima_it;
  text-halo-radius:1;
  text-placement:line;
  text-name:"''";
  [type='motorway'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@motorway,70),-15);
    text-halo-fill:@halo;
    [zoom>=13] { text-size:11; }
    [zoom>=15] { text-size:12; }
  }
  [type='trunk'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@trunk,70),-15);
    text-halo-fill:@halo;
    [zoom>=15] { text-size:11; }
  }
  [type='primary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@primary,70),-15);
    text-halo-fill:@halo;
    [zoom>=15] { text-size:11; }
  }
  [type='secondary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@secondary,70),-15);
    text-halo-fill:@halo;
    [zoom>=15] { text-size:11; }
  }
  [type='residential'][zoom>=15],
  [type='road'][zoom>=15],
  [type='tertiary'][zoom>=15],
  [type='unclassified'][zoom>=15] {
    text-name:"[name]";
    text-fill:@grey5;
    text-halo-fill:@halo;
  }
}

