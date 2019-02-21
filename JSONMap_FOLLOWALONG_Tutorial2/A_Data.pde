JSONObject example;
JSONArray features;
JSONObject wholeArea;
//Look at https://processing.org/reference/JSONObject.html for more info

void loadData(){
  background = loadImage("data/background.png");
  background.resize(width, height);
  
  //wholeArea = loadJSONObject("data/wholeArea.json");
  //features = wholeArea.getJSONArray("features");
 
  //small area example
  example = loadJSONObject("data/example.json");
  features = example.getJSONArray("features");
  
  println("There are:", features.size(), "features");
}

void parseData(){
  for(int i = 0; i<features.size(); i++) {
    //identify 3: properties, geometry and type
    println(features.getJSONObject(i).getJSONObject("geometry").getString("type"));
    //String type = features.getJSONObject(i).getJSONObject("geometery").getString("type");
    JSONObject geometry = features.getJSONObject(i).getJSONObject("geometery");
    JSONObject properties = features.getJSONObject(i).getJSONObject("properties");
    
    //identify more information
    String dataAmenity = properties.getJSONObject("tags").getString("amenity");
    String amenity = "";
    if(dataAmenity !=null) amenity = dataAmenity;
    
    //make POIs
    //if(type.equals("Point")) {
    // //create a new POI
    // float lat = geometry.getJSONArray("coordinates").getFloat(1); //
    // float lon = geometry.getJSONArray("coordinates").getFloat(0); //longitude comes first in GIS data
     
    // POI poi = new POI(lat, lon);
    // poi.type = amenity;
    // if(amenity.equals("atm")) poi.ATM = true; //no { needed with a one line if statement
    // pois.add(poi);

    //}
  }

}
