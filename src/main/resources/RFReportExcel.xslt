<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
  <xsl:template match="/">
    <?mso-application progid="Excel.Sheet"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
        <Author>Liberty Mutual</Author>
        <LastAuthor>Liberty Mutual</LastAuthor>
        <Created>2016-12-28T16:08:42Z</Created>
        <Company>Liberty Mutual</Company>
        <Version>14.00</Version>
      </DocumentProperties>
      <OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
        <RelyOnVML/>
        <TargetScreenSize>800x600</TargetScreenSize>
      </OfficeDocumentSettings>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>5670</WindowHeight>
        <WindowWidth>9555</WindowWidth>
        <WindowTopX>480</WindowTopX>
        <WindowTopY>120</WindowTopY>
        <ProtectStructure>False</ProtectStructure>
        <ProtectWindows>False</ProtectWindows>
      </ExcelWorkbook>
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="24" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
        </Style>
        <Style ss:ID="s73">
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s82">
          <Alignment ss:Vertical="Center" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s91">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"
           ss:Bold="1"/>
          <Interior ss:Color="#538DD5" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s93">
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="14" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s94">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"
           ss:Bold="1"/>
          <Interior ss:Color="#538DD5" ss:Pattern="Solid"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Sheet1">
        <Table ss:ExpandedColumnCount="3" ss:ExpandedRowCount="25" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="149.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="268.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="220.5"/>
          <Row ss:Height="31.5">
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">ADICTUS Report for (<xsl:value-of select="Report/Project" />)</Data>
            </Cell>
          </Row>
          <Row ss:Height="31.5">
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="30">
            <Cell ss:MergeAcross="1" ss:StyleID="s91">
              <Data ss:Type="String">Over View</Data>
            </Cell>
            <Cell ss:StyleID="s82"/>
          </Row>
          <xsl:for-each select="Report/Main">
          <Row ss:AutoFitHeight="0" ss:Height="162.75">
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Technology</Data>
            </Cell>
          
            
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">
                <xsl:variable name="s1" select="Technology"/>
                <xsl:variable name="newtext">
                  <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text" select="$s1" />
                    <xsl:with-param name="replace" select="','" />
                    <xsl:with-param name="by" select="'&#10;'" />
                  </xsl:call-template>
                </xsl:variable>
                <xsl:value-of select="$newtext"/>
              </Data>
            </Cell>
          </Row>
          </xsl:for-each>
          <Row ss:Index="6" ss:Height="18.75">
            <Cell ss:StyleID="s93">
              <Data ss:Type="String">R Factor Details</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">Technology API</Data>
            </Cell>
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">Complexity</Data>
            </Cell>
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">R Factor</Data>
            </Cell>
          </Row>
          <xsl:for-each select="Report/RFactor">
            <Row ss:Height="30">
              <Cell ss:StyleID="s66">
                <Data ss:Type="String">
                  <xsl:value-of select="TechAPI" />
                </Data>
              </Cell>
              <Cell ss:StyleID="s66">
                <Data ss:Type="String">
                 <xsl:value-of select="Complexity" />
                </Data>
              </Cell>
              <Cell ss:StyleID="s66">
                <Data ss:Type="String">
                  <xsl:value-of select="FACTOR" />
                </Data>
              </Cell>
            </Row>
          </xsl:for-each>
          <Row ss:Index="15" ss:Height="30">
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">JAR Name</Data>
            </Cell>
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">JAR Version</Data>
            </Cell>
          </Row>
          <xsl:for-each select="Report/DepedentJAR">
            <Row ss:Height="75">
              <Cell ss:StyleID="s66">
                <Data ss:Type="String">
                 <xsl:value-of select="JARName" />
                </Data>
              </Cell>
              <Cell ss:StyleID="s66">
                <Data ss:Type="String">
                  <xsl:value-of select="JARVersion" />
                </Data>
              </Cell>
            </Row>
          </xsl:for-each>

          <Row ss:Index="21" ss:Height="30">
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">Class</Data>
            </Cell>
            <Cell ss:StyleID="s94">
              <Data ss:Type="String">Depends On</Data>
            </Cell>
          </Row>
          <xsl:for-each select="Report/Depedent">
               
          <Row ss:Height="409.5">
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">
                <xsl:value-of select="className" />
              </Data>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">
                <xsl:variable name="s1" select="DepClassName"/>
                <xsl:variable name="newtext">
                  <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text" select="$s1" />
                    <xsl:with-param name="replace" select="','" />
                    <xsl:with-param name="by" select="'&#10;'" />
                  </xsl:call-template>
                </xsl:variable>
                <xsl:value-of select="$newtext"/>
              </Data>
            </Cell>
          </Row>
          </xsl:for-each> 
        </Table> 
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>3</ActiveRow>
              <ActiveCol>1</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Sheet2">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Sheet3">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>   
  </xsl:template>

  <xsl:template name="string-replace-all">
    <xsl:param name="text" />
    <xsl:param name="replace" />
    <xsl:param name="by" />
    <xsl:choose>
      <xsl:when test="$text = '' or $replace = ''or not($replace)" >
        <!-- Prevent this routine from hanging -->
        <xsl:value-of select="$text" />
      </xsl:when>
      <xsl:when test="contains($text, $replace)">
        <xsl:value-of select="substring-before($text,$replace)" />
        <xsl:value-of select="$by" />
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)" />
          <xsl:with-param name="replace" select="$replace" />
          <xsl:with-param name="by" select="$by" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>