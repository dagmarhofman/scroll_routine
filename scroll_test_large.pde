int refx = 0;
int refy = 0;
final int w = 10;
final int h = 10;
final int fw = 24;
final int fh = 24;

String[] map;
int[][] grid;
void setup()
{
  size(800, 600);
  map = new String[fw];
  grid = new int[fw][fh];
  
  map = loadStrings( "game.dat" );
  
  for( int x = 0; x < fh; x++)
    grid[x] = new int[fw];

  for(int x = 0;x<fw;x++) {
    for( int y = 0; y <fh;y++) {
      grid[x][y] = map[y].charAt(x);
    }
  }

}

void draw()
{
  int x, y;
  background(255, 255, 255);
  for ( x=0; x < w; x++) {
    for ( y=0; y < h; y++ ) {
      fill( 255, 255, 255 );
      rect( x * ( width / w ), y * (height / h ), ( width / w ), (height / h ));
      fill( 0, 0, 0 );
      textSize( height / h );
      text( (char)grid[x+refx][y+refy],  x* (width / w)+5, y * (height / h) + 55 );
      color(255, 255, 255);
    }
  }
}

void keyPressed()
{
  if (key == 'i' && refy > 0 )
    refy--;
  if (key == 'j' && refx > 0 )
    refx--; 
  if (key == 'k' && refx < fw - w )
    refx++;
  if (key == 'm' && refy < fh - h )
    refy++;
}