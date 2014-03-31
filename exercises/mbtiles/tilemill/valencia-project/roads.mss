
//.road.line{line-color:#00a;}

//// Road Colors

.road[type='motorway'] {
  .line[zoom < 10] { 
    line-color: darken(@motorway,35%); 
  }
  .fill[zoom >= 10] { 
    line-color: @motorway; 
  }
}

.road[type='motorway_link'] {
  .line[zoom < 11] { 
    line-color: lighten(@motorway,25%); 
  }
  .fill[zoom >= 11] { 
    line-color: lighten(@motorway,25%); 
  }
}

.road[type='trunk'] {
  .line[zoom < 11] { 
    line-color: darken(@trunk,35%); 
  }
  .fill[zoom >= 11] { 
    line-color: @trunk; 
  }
}

.road[type='trunk_link'] {
  .line[zoom < 12] { 
    line-color: lighten(@trunk,25%); 
  }
  .fill[zoom >= 12] { 
    line-color: lighten(@trunk,25%); 
  }
}

.road[type='primary'] {
  .line[zoom >= 8] { 
    line-color: darken(@primary,35%); 
  }
  .fill[zoom >= 12] { 
    line-color: @primary; 
  }
}

.road[type='secondary'],
.road[type='tertiary']
{
  .line[zoom >= 11] { 
    line-color: darken(@primary,25%); 
  }
  .fill[zoom >= 14] { 
    line-color: @primary; 
  }
}

.road[type='residential'], 
.road[type='service'], 
.road[type='road'], 
.road[type='living_street'] 
{
  .line[zoom >= 11] { 
    line-color:  darken(@road,25%); 
  }
  .fill[zoom >= 15] { 
    line-color: @road; 
  }
}

.road[type='track'],
.road[type='unclassified'],
.road[type='footway'],
.road[type='path'],
.road[type='pedestrian'],
.road[type='steps'],
.road[type='cycleway'],
.road[type='birdleway'] 
{
  .line[zoom >= 11] { 
    line-color: darken(@primary,5%); 
  }
  .fill[zoom >= 17] { 
    line-color: @primary; 
  }
}

//// Road Widths

.road[zoom <= 8] {
  .line[type='motorway']{ line-width: 1.0; }
  .line[type='trunk']{ line-width: 0.6; }
  .line[type='primary'] { line-width: 0.2; }
}

.road[zoom = 9] {
  .line[type='motorway'] { line-width: 1.0; }
  .line[type='trunk']{ line-width: 0.8; }
  .line[type='primary'] { line-width: 0.6; }
}

.road[zoom = 10] {
  .line[type='motorway']{ line-width: 1.0 + 1.0; }
  .fill[type='motorway']{ line-width: 1.0; }
  .line[type='motorway_link']{ line-width: 0.8; }
  .line[type='trunk']{ line-width: 0.8; }
  .line[type='primary'] { line-width: 0.6; }
}

.road[zoom = 11] {
  .line[type='tertiary'],
  .line[type='residential'],
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track'],
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.2; }
  .line[type='secondary'] { line-width: 0.4; }
  .line[type='primary'] { line-width: 0.6; }
  .line[type='trunk_link']{ line-width: 0.8; }
  .line[type='trunk']{ line-width: 0.8 + 0.8; }
  .fill[type='trunk']{ line-width: 0.8; }
  .line[type='motorway_link']{ line-width: 0.8 + 0.8; }
  .fill[type='motorway_link']{ line-width: 0.8; }
  .line[type='motorway']{ line-width: 1.0 + 1.0; }
  .fill[type='motorway']{ line-width: 1.0; }
}

.road[zoom = 12] {
  .line[type='residential'],
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track'],
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.2; }
  .line[type='tertiary'] { line-width: 0.4; }
  .line[type='secondary'] { line-width: 0.6; }
  .line[type='primary'] { line-width: 0.8 + 0.8; }
  .fill[type='primary'] { line-width: 0.8; }
  .line[type='trunk_link']{ line-width:  0.8 + 0.8; }
  .fill[type='trunk_link']{ line-width: 0.8; }
  .line[type='trunk']{ line-width: 1.0 + 1.0; }
  .fill[type='trunk']{ line-width: 1.0; }
  .line[type='motorway_link']{ line-width: 1.0 + 1.0; }
  .fill[type='motorway_link']{ line-width: 1.0; }
  .line[type='motorway']{ line-width: 1.2 + 1.2; }
  .fill[type='motorway']{ line-width: 1.2; }
}

.road[zoom = 13] {
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track'],
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.2; }
  .line[type='residential'] { line-width: 0.4; }
  .line[type='tertiary'] { line-width: 0.6; }
  .line[type='secondary'] { line-width: 0.8; }
  .line[type='primary'] { line-width: 1.0 + 1.0; }
  .fill[type='primary'] { line-width: 1.0; }
  .line[type='trunk_link']{ line-width: 1.0 + 1.0; }
  .fill[type='trunk_link']{ line-width: 1.0; }
  .line[type='trunk']{ line-width: 1.2 + 1.2; }
  .fill[type='trunk']{ line-width: 1.2; }
  .line[type='motorway_link']{ line-width: 1.2 + 1.2; }
  .fill[type='motorway_link']{ line-width: 1.2; }
  .line[type='motorway']{ line-width: 1.4 + 1.4; }
  .fill[type='motorway']{ line-width: 1.4; }
}

.road[zoom = 14] {
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track'],
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.4; }
  .line[type='residential'] { line-width: 0.6; }
  .line[type='tertiary'] { line-width: 0.8 + 0.8; }
  .fill[type='tertiary'] { line-width: 0.8; }
  .line[type='secondary'] { line-width: 1.0 + 1.0; }
  .fill[type='secondary'] { line-width: 1.0; }
  .line[type='primary'] { line-width: 1.2 + 1.2; }
  .fill[type='primary'] { line-width: 1.2; }
  .line[type='trunk_link']{ line-width: 1.2 + 1.2; }
  .fill[type='trunk_link']{ line-width: 1.2; }
  .line[type='trunk']{ line-width: 1.4 + 1.4; }
  .fill[type='trunk']{ line-width: 1.4; }
  .line[type='motorway_link']{ line-width: 1.4 + 1.4; }
  .fill[type='motorway_link']{ line-width: 1.4; }
  .line[type='motorway']{ line-width: 1.6 + 1.6; }
  .fill[type='motorway']{ line-width: 1.6; }
}

.road[zoom = 15] {
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.4; }
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track']
    { line-width: 0.6; }
  .line[type='residential'] { line-width: 0.8 + 0.8; }
  .fill[type='residential'] { line-width: 0.8; }
  .line[type='tertiary'] { line-width: 1.0 + 1.0; }
  .fill[type='tertiary'] { line-width: 1.0; }
  .line[type='secondary'] { line-width: 1.2 + 1.2; }
  .fill[type='secondary'] { line-width: 1.2; }
  .line[type='primary'] { line-width: 1.4 + 1.4; }
  .fill[type='primary'] { line-width: 1.4; }
  .line[type='trunk_link']{ line-width: 1.4 + 1.4; }
  .fill[type='trunk_link']{ line-width: 1.4; }
  .line[type='trunk']{ line-width: 1.6 + 1.6; }
  .fill[type='trunk']{ line-width: 1.6; }
  .line[type='motorway_link']{ line-width: 1.6 + 1.6; }
  .fill[type='motorway_link']{ line-width: 1.6; }
  .line[type='motorway']{ line-width: 1.8 + 1.8; }
  .fill[type='motorway']{ line-width: 1.8; }
}

.road[zoom = 16] {
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 0.6; }
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track']
    { line-width: 0.8 + 0.8; }
  .fill[type='service'],
  .fill[type='road'],
  .fill[type='living_street'],
  .fill[type='track']
    { line-width: 0.8; }
  .line[type='residential'] { line-width: 1.0 + 1.0; }
  .fill[type='residential'] { line-width: 1.0; }
  .line[type='tertiary'] { line-width: 1.2 + 1.2; }
  .fill[type='tertiary'] { line-width: 1.2; }
  .line[type='secondary'] { line-width: 1.4 + 1.4; }
  .fill[type='secondary'] { line-width: 1.4; }
  .line[type='primary'] { line-width: 1.6 + 1.6; }
  .fill[type='primary'] { line-width: 1.6; }
  .line[type='trunk_link']{ line-width: 1.6 + 1.6; }
  .fill[type='trunk_link']{ line-width: 1.6; }
  .line[type='trunk']{ line-width: 1.8 + 1.8; }
  .fill[type='trunk']{ line-width: 1.8; }
  .line[type='motorway_link']{ line-width: 1.8 + 1.8; }
  .fill[type='motorway_link']{ line-width: 1.8; }
  .line[type='motorway']{ line-width: 2.0 + 2.0; }
  .fill[type='motorway']{ line-width: 2.0 ; }
}

.road[zoom >= 17] {
  .line[type='unclassified'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'],
  .line[type='steps'],
  .line[type='cycleway'],
  .line[type='birdleway']
    { line-width: 1; }
  .line[type='service'],
  .line[type='road'],
  .line[type='living_street'],
  .line[type='track']
    { line-width: 1.8 + 1.8; }
  .fill[type='service'],
  .fill[type='road'],
  .fill[type='living_street'],
  .fill[type='track']
    { line-width: 1.8; }
  .line[type='residential'] { line-width: 2.2 + 2.2; }
  .fill[type='residential'] { line-width: 2.2; }
  .line[type='tertiary'] { line-width: 2.4 + 2.4; }
  .fill[type='tertiary'] { line-width: 2.4; }
  .line[type='secondary'] { line-width: 2.6 + 2.6; }
  .fill[type='secondary'] { line-width: 2.6; }
  .line[type='primary'] { line-width: 2.8 + 2.8; }
  .fill[type='primary'] { line-width: 2.8; }
  .line[type='trunk_link']{ line-width: 2.8 + 2.8; }
  .fill[type='trunk_link']{ line-width: 2.8; }
  .line[type='trunk']{ line-width: 3.0 + 3.0; }
  .fill[type='trunk']{ line-width: 3.0; }
  .line[type='motorway_link']{ line-width: 3.0 + 3.0; }
  .fill[type='motorway_link']{ line-width: 3.0; }
  .line[type='motorway']{ line-width: 3.2 + 3.2; }
  .fill[type='motorway']{ line-width: 3.2 ; }
}

/// RAILWAYS

.rail.line {
  line-dasharray: 2, 6;
  line-color:@grey3;
}

.mask {
  line-color:@grey4;
 }

.rail {
  //[zoom <= 8] {line-width: 4;}
  //[zoom = 9] {line-width: 4;}
  [zoom <= 10] {line-width: 0.2;}
  [zoom = 11] {line-width: 0.4;}
  [zoom = 12] {line-width: 0.6;}
  [zoom = 13] {line-width: 0.8;}
  [zoom = 14] {line-width: 1;}
  [zoom = 15] {line-width: 2;}
  [zoom = 16] {line-width: 4;}
  [zoom >= 17] {line-width: 6;}
}