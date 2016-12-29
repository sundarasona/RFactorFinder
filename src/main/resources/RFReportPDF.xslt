<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrail" page-height="297mm" page-width="210mm" margin-top="5mm" margin-bottom="5mm" margin-left="5mm" margin-right="5mm">
                    <fo:region-body margin-top="25mm" margin-bottom="20mm"/>
                    <fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrail">
                <fo:static-content flow-name="xsl-region-before">
                  <fo:block>
                    RF Report for (<xsl:value-of select="Report/Project" />)
                  </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0">
                    <fo:block>
                      RF Report for (<xsl:value-of select="Report/Project" />)
                    </fo:block>
                      <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                      <fo:table-column column-width="proportional-column-width(100)"/>
                      <fo:table-body font-size="95%">
                        <fo:table-row height="15mm">
                          <fo:table-cell display-align="center">
                            <fo:block>Over View</fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>

                 
                  <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                    <fo:table-column column-width="proportional-column-width(20)"/>
                    <fo:table-column column-width="proportional-column-width(50)"/>

                    <fo:table-body font-size="95%">
                      <xsl:for-each select="Report/Main">
                        <fo:table-row height="8mm">
                          <fo:table-cell>
                            <fo:block>Technology</fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block>
                              <xsl:value-of select="Technology" />
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </xsl:for-each>
                    </fo:table-body>
                  </fo:table>


                  <fo:block>
                    R Factor Score
                  </fo:block>

                 <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                    <fo:table-column column-width="proportional-column-width(33)"/>
                    <fo:table-column column-width="proportional-column-width(33)"/>
                    <fo:table-column column-width="proportional-column-width(33)"/>
                    <fo:table-body>
                      <fo:table-row height="15mm">
                        <fo:table-cell >
                          <fo:block>Technology API</fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center">
                          <fo:block>Complexity</fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center">
                          <fo:block>R Factor</fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      <!--   </fo:table-header>
                   <fo:table-body> -->
                      <xsl:for-each select="Report/RFactor">
                      <fo:table-row>
                          <fo:table-cell >
                            <fo:block>
                              <xsl:value-of select="TechAPI" />
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                            <fo:block>
                              <xsl:value-of select="Complexity" />
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                            <fo:block>
                              <xsl:value-of select="FACTOR" />
                            </fo:block>
                          </fo:table-cell>
                    </fo:table-row>
                      </xsl:for-each>
                    </fo:table-body>
                  </fo:table>
                  <!-- <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                    <fo:table-column column-width="proportional-column-width(20)"/>
                    <fo:table-column column-width="proportional-column-width(50)"/>
                    <fo:table-header font-size="95%">
                      <fo:table-row height="15mm">
                        <fo:table-cell display-align="center">
                          <fo:block>JAR Name</fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center">
                          <fo:block>JAR Version</fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-header>
                    <fo:table-body>
                       <xsl:for-each select="Report/DepedentJAR">
                        <fo:table-row height="8mm">
                          <fo:table-cell>
                            <fo:block>
                              <xsl:value-of select="JARName" />
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block>
                              <xsl:value-of select="JARVersion" />
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </xsl:for-each>
                    </fo:table-body>
                  </fo:table>
                  
                  <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                    <fo:table-column column-width="proportional-column-width(20)"/>
                    <fo:table-column column-width="proportional-column-width(50)"/>
                    <fo:table-header font-size="95%">
                      <fo:table-row height="15mm">
                        <fo:table-cell display-align="center">
                          <fo:block>Class</fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center">
                          <fo:block>Depends On</fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </fo:table-header>
                    <fo:table-body>
                      <xsl:for-each select="Report/Depedent">
                        <fo:table-row height="8mm">
                          <fo:table-cell>
                            <fo:block>
                              <xsl:value-of select="className" />
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block>
                              <xsl:value-of select="DepClassName" />
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </xsl:for-each>
                    </fo:table-body>
                  </fo:table> -->
                  <fo:block id="end-of-document">
                        <fo:instream-foreign-object>
			<svg height="150" width="400">
  <defs>
    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
    </linearGradient>
  </defs>
  <ellipse cx="200" cy="70" rx="130" ry="55" fill="url(#grad1)" />
  <text fill="#ffffff" font-size="45" font-family="Brush Script MT" x="150" y="86">RFactor</text>
  </svg>
                          <!--<svg width="200mm" height="150mm" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                <path d="M153 334
C153 334 151 334 151 334
C151 339 153 344 156 344
C164 344 171 339 171 334
C171 322 164 314 156 314
C142 314 131 322 131 334
C131 350 142 364 156 364
C175 364 191 350 191 334
C191 311 175 294 156 294
C131 294 111 311 111 334
C111 361 131 384 156 384
C186 384 211 361 211 334
C211 300 186 274 156 274" style="fill:yellow;stroke:red;stroke-width:2"/>
                            </svg> -->
                        </fo:instream-foreign-object>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>