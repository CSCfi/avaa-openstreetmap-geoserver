<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Admin boundary</Name>
    <UserStyle>
      <!-- Styles can have names, titles and abstracts -->
      <Title>OSM Admin boundary</Title>
      <Abstract>OSM Admin boundary</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Admin boundary 1:300 000 - 1:1</Name>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>300000</MaxScaleDenominator>          
          <LineSymbolizer>
         <Stroke>
           <CssParameter name="stroke">#AC75AC</CssParameter>
           <CssParameter name="stroke-width">1</CssParameter>
           <CssParameter name="stroke-dasharray">5 5</CssParameter>
         </Stroke>
       </LineSymbolizer>
        </Rule>
        </FeatureTypeStyle>      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>