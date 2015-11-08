/**
 * An application with a basic interactive map. You can zoom and pan the map.
 */

import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.MapBox;
//get enclosing class and copy & paste top line 
UnfoldingMap map;

void setup() {
  size(800, 600, P2D);

  map = new UnfoldingMap(this, new MapBox.WorldLightProvider());
  map.zoomAndPanTo(new Location(52.5f, 13.4f), 10);
  MapUtils.createDefaultEventDispatcher(this, map);
}

void draw() {
  map.draw();
}
