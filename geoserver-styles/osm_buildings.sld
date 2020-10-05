<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
xmlns="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a named layer is the basic building block of an sld document -->
  <NamedLayer>
    <Name>buildings</Name>
    <UserStyle>
      <!-- Styles can have names, titles and abstracts -->
      <Title>OSM Buildings</Title>
      <Abstract>OSM building style</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Building 1:50 000 - 1:10 000</Name>
          <MinScaleDenominator>10000</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#C0ACAC</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Building 1:10 000 - 1:7000</Name>
          <MinScaleDenominator>7000</MinScaleDenominator>
          <MaxScaleDenominator>10000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#C0ACAC</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#9E809C</CssParameter>
              <CssParameter name="stroke-width">0.3</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Building 1:7000 - 1:1</Name>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>7000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#C0ACAC</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#9E809C</CssParameter>
              <CssParameter name="stroke-width">0.3</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-family">SansSerif</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0.0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Halo>
              <Radius>
                <ogc:Literal>1</ogc:Literal>
              </Radius>
              <Fill>
                <CssParameter name="fill">#ffffff</CssParameter>
              </Fill>
            </Halo>
            <Fill>
              <CssParameter name="fill">#000000</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>