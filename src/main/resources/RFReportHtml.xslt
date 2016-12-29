<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <xsl:output encoding="UTF-8" indent="yes" method="html" standalone="no" omit-xml-declaration="no"/>
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {border-collapse:collapse; table-layout:fixed; width:710px;}
          table td {border:solid 3px #000; width:500px; word-wrap:break-word;}
        </style>
      </head>
      <body>
        <h1>RF Report</h1>
        <table border="1">
          <tr>
            <th>Over View</th>

          </tr>
          <xsl:for-each select="Report/Main">
            <tr>
              <td>Technology</td>
              <td>
                <xsl:value-of select="Technology" />
              </td>
            </tr>
          <!-- <tr>
              <td>DataBase</td>
              <td>
                <xsl:value-of select="DataBase" />
              </td>
            </tr>
            <tr>
              <td>Persistance API</td>
              <td>
                <xsl:value-of select="Presistance" />
              </td>
            </tr>
            <tr>
              <td>User Interface</td>
              <td>
                <xsl:value-of select="USI" />
              </td>
            </tr>
            <tr>
              <td>server</td>
              <td>
                <xsl:value-of select="server" />
              </td>
            </tr> -->
            </xsl:for-each>
          </table>
        <!-- RFactor -->
        <p/>
        <h> R Factor Score </h>
        <table  border="1">
          <tr>
            <th>Techninology API</th>
            <th>Complexity</th>
            <th>R Factor</th>
          </tr>
          <xsl:for-each select="Report/RFactor">
            <tr>
              <td>
                <xsl:value-of select="TechAPI" />
              </td>
              <td>
                <xsl:value-of select="Complexity" />
              </td>
              <td>
                <xsl:value-of select="FACTOR" />
              </td>
            </tr>

          </xsl:for-each>
        </table>
        <p/>
        <table  border="1">
          <tr>
            <th>Class</th>
            <th>Depends On</th>
          </tr>
          <xsl:for-each select="Report/Depedent">
            <tr>
              <td>
                <xsl:value-of select="className" />
              </td>
              <td>
                <xsl:value-of select="DepClassName" />
              </td>
            </tr>

          </xsl:for-each>
        </table>

        <p/>
        <table  border="1">
          <tr>
            <th>JAR Name</th>
            <th>JAR Version</th>
          </tr>
          <xsl:for-each select="Report/DepedentJAR">
            <tr>
              <td>
                <xsl:value-of select="JARName" />
              </td>
              <td>
                <xsl:value-of select="JARVersion" />
              </td>
            </tr>

          </xsl:for-each>
        </table>

      
       
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>