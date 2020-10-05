<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>landuse</Name>
    <UserStyle>
      <Title>OSM Landuse</Title>
      <Abstract>OSM landuse style</Abstract>
      <FeatureTypeStyle>    
		<Rule>	  
        <Name>Quarry 1:100 000 - 1:1</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>quarry</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
				<CssParameter name="fill">#e6ccb3</CssParameter>
              
            </Fill>
          </PolygonSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#D3D3D3</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>Residential 1:500 000  - 1:1</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>residential</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E7E7E7</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
        <Name>Military 1:300 000 - 1:1</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>military</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>300000</MaxScaleDenominator>
                    <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#F2D9D4</CssParameter>
              <CssParameter name="fill-opacity">0.2</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#F49492</CssParameter>
              <CssParameter name="stroke-opacity">0.4</CssParameter>
              <CssParameter name="stroke-width">0.3</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>Meadow, common, grass 1:500 000  - 1:1</Name>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>meadow</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>grass</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ecffb3</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
        <Name>Cemetery, grave yard 1:300 000 - 1:25 000 </Name>
          <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>cemetery</ogc:Literal>
              </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>25000</MinScaleDenominator>
          <MaxScaleDenominator>300000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aacbaf</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
                <Rule>
        <Name>Cemetery, grave yard 1:25 000  - 1:1</Name>
                    <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>cemetery</ogc:Literal>
              </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aacbaf</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
            <CssParameter name="font-family">SansSerif</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
  
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
        <Rule>
        <Name>Allotments 1:300 000 - 1:1</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>allotments</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>300000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E9DFCD</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Forest, tree 1:500 000 - 1:30 000</Name>
          <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>forest</ogc:Literal>
              </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>30000</MinScaleDenominator>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E7F7D9</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Forest, tree 1:30 000 - 1:1</Name>
          <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>forest</ogc:Literal>
              </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>30000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E7F7D9</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
                        <Font>
            <CssParameter name="font-family">SansSerif</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
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
              <CssParameter name="fill">#8DC56C</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
        <Rule>
        <Name>Park 1:500 000  - 1:30 000</Name>
        <ogc:Filter>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>park</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:Filter>
        <MinScaleDenominator>30000</MinScaleDenominator>
        <MaxScaleDenominator>500000</MaxScaleDenominator>
        <PolygonSymbolizer>
          <Fill>
            <CssParameter name="fill">#DBF7C2</CssParameter>
          </Fill>
        </PolygonSymbolizer>
      </Rule>
      <Rule>
        <Name>Park 1:30 000 - 1:1</Name>
        <ogc:Filter>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>type</ogc:PropertyName>
            <ogc:Literal>park</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:Filter>
        <MinScaleDenominator>1</MinScaleDenominator>
        <MaxScaleDenominator>30000</MaxScaleDenominator>
        <PolygonSymbolizer>
          <Fill>
            <CssParameter name="fill">#DBF7C2</CssParameter>
          </Fill>
        </PolygonSymbolizer>
        <TextSymbolizer>
          <Label>
            <ogc:PropertyName>name</ogc:PropertyName>
          </Label>
                      <Font>
            <CssParameter name="font-family">SansSerif</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
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
      <Rule>
      <Name>Farm 1:500 000  - 1:1</Name>
        <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>farm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
        </ogc:Filter>
        <MaxScaleDenominator>500000</MaxScaleDenominator>
        <PolygonSymbolizer>
          <Fill>
            <CssParameter name="fill">#FFFDD2</CssParameter>
          </Fill>
        </PolygonSymbolizer>
      </Rule> 
        <Rule>
        <Name>Recreation or sports ground 1:300 000 - 1:1</Name>
          <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>recreation_ground</ogc:Literal>
              </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>300000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#608000</CssParameter>
              <CssParameter name="fill-opacity">0.6</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>        
    </FeatureTypeStyle>
  </UserStyle>
</NamedLayer>
</StyledLayerDescriptor>