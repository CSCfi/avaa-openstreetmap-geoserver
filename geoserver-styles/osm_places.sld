<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>places</Name>
    <UserStyle>
      <Title>OSM Places</Title>
      <Abstract>OSM places style</Abstract>
<FeatureTypeStyle>
      <Rule>
          <Name>City 1:10 000 000 to 1:2 000 000</Name>
          <!--     <Title>Greater than 10000</Title> -->
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>100000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>1000000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>10000000</MaxScaleDenominator>
          <MinScaleDenominator>2000000</MinScaleDenominator>        
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
            <VendorOption name="maxDisplacement">15</VendorOption>
            <VendorOption name="spaceAround">8</VendorOption>
          </TextSymbolizer>
        </Rule>       
      <Rule>
          <Name>City 1:2 000 000 to 1:1</Name>
          <!--     <Title>Greater than 10000</Title> -->
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>100000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>1000000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>      
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
              <CssParameter name="font-size">14</CssParameter>
              
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
            <VendorOption name="maxDisplacement">15</VendorOption>
            <VendorOption name="spaceAround">8</VendorOption>
          </TextSymbolizer>
        </Rule>    
        <Rule>
          <Name>Towns 1:4 000 000 to 1:2 000 000</Name>
          <!--     <Title>Greater than 50000</Title> -->
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>30000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>100000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <MinScaleDenominator>2000000</MinScaleDenominator>           
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
            <VendorOption name="maxDisplacement">9</VendorOption>  
  <VendorOption name="spaceAround">5</VendorOption>          
          </TextSymbolizer>
        </Rule>    
<Rule>
          <Name>Towns 1:2 000 000 to 1:1</Name>
          <!--     <Title>Greater than 50000</Title> -->
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>30000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>100000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>          
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
            <VendorOption name="maxDisplacement">9</VendorOption>  
  <VendorOption name="spaceAround">5</VendorOption>          
          </TextSymbolizer>
        </Rule>      
        <Rule>
          <Name>Towns 1:2 000 000 to 1:1</Name>
          <!--     <Title>Greater than 50000</Title> -->
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>15000</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>30000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
  <VendorOption name="spaceAround">3</VendorOption>            
          </TextSymbolizer>
        </Rule>            
        <Rule>
          <Name>Towns 1:1 000 000 to 1:1</Name>
          <!--   <Title>Greater than 25000</Title> -->
          <ogc:Filter>
            <ogc:Or>
              <ogc:And>         
                <ogc:PropertyIsGreaterThanOrEqualTo>
                  <ogc:PropertyName>population</ogc:PropertyName>
                  <ogc:Literal>5000</ogc:Literal>
                </ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyIsLessThan>
                  <ogc:PropertyName>population</ogc:PropertyName>
                  <ogc:Literal>15000</ogc:Literal>
                </ogc:PropertyIsLessThan>
              </ogc:And>
              <ogc:And>  
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>type</ogc:PropertyName>
                <ogc:Literal>town</ogc:Literal>
              </ogc:PropertyIsEqualTo>     
              <ogc:PropertyIsNull>
                <ogc:PropertyName>population</ogc:PropertyName>
              </ogc:PropertyIsNull>            
            </ogc:And>                
            </ogc:Or>
          </ogc:Filter>
          <MaxScaleDenominator>1000000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
  <VendorOption name="spaceAround">3</VendorOption>              
          </TextSymbolizer>
        </Rule>     
        <Rule>
          <Name>Towns 1:500 000 to 1:1</Name>
          <!--   <Title>Greater than 25000</Title> -->
          <ogc:Filter>
            <ogc:And>            
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>2500</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>5000</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
              <CssParameter name="font-size">11</CssParameter>
              
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
          </TextSymbolizer>
        </Rule>         
        <Rule>
          <Name>Villages 1:250 000 to 1:1</Name>
          <!--   <Title>Greater than 25000</Title> -->
          <ogc:Filter>       
            <ogc:Or>  
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>population</ogc:PropertyName>
                <ogc:Literal>2500</ogc:Literal>
              </ogc:PropertyIsLessThan>       
              <ogc:And>       
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>type</ogc:PropertyName>
                  <ogc:Literal>village</ogc:Literal>
                </ogc:PropertyIsEqualTo>                    
                <ogc:PropertyIsNull>
                  <ogc:PropertyName>population</ogc:PropertyName>
                </ogc:PropertyIsNull>            
              </ogc:And>                
            </ogc:Or>         
          </ogc:Filter>
          <MaxScaleDenominator>250000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
          </TextSymbolizer>
        </Rule>           
        <Rule>
          <Name>Suburbs 1:100 000 to 1:1</Name>
          <!--   <Title>Greater than 25000</Title> -->
          <ogc:Filter>       
              <ogc:And>           
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>type</ogc:PropertyName>
                  <ogc:Literal>suburb</ogc:Literal>
                </ogc:PropertyIsEqualTo>                
                <ogc:PropertyIsNull>
                  <ogc:PropertyName>population</ogc:PropertyName>
                </ogc:PropertyIsNull>            
              </ogc:And>                       
          </ogc:Filter>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
          </TextSymbolizer>
        </Rule>          
        <!--   Everything else  -->
        <Rule>
          <!--   <Name>Other places 50K - 0K</Name> -->
          <ElseFilter/>
          <MinScaleDenominator>1</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Dialog</CssParameter>
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
            <Priority>
              <ogc:PropertyName>population</ogc:PropertyName>
            </Priority>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle> 
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>