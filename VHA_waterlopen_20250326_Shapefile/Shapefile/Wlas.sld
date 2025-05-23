<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<sld:StyledLayerDescriptor version="1.0.0" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink">
  <sld:NamedLayer>
    <sld:Name>Vha.RT.Wlas</sld:Name>
    <sld:UserStyle>
      <sld:Name>Style1</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:FeatureTypeName>Vha.RT.Wlas</sld:FeatureTypeName>
        <sld:Rule>
          <sld:Name>Bevaarbaar</sld:Name>
          <sld:Title>Bevaarbaar</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>0</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#0000FF</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.283464</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Geklasseerd, eerste categorie</sld:Name>
          <sld:Title>Geklasseerd, eerste categorie</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#00FF00</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.283464</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Geklasseerd, tweede categorie</sld:Name>
          <sld:Title>Geklasseerd, tweede categorie</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#00FFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.283464</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Geklasseerd, derde categorie</sld:Name>
          <sld:Title>Geklasseerd, derde categorie</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FF0000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.283464</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Niet geklasseerd</sld:Name>
          <sld:Title>Niet geklasseerd</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>9</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FFBF00</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.2835</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Publieke gracht</sld:Name>
          <sld:Title>Publieke gracht</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CATC</ogc:PropertyName>
              <ogc:Literal>99</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FF00FF</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.28</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>