<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0" xmlns:xalan="http://xml.apache.org/xalan"
                xmlns:str="xalan://java.lang.String"><xsl:output indent="yes" method="text" standalone="no" omit-xml-declaration="no"/>
  <xsl:template match="/">{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\fswiss\fprq2\fcharset0 Calibri;}{\f2\fnil\fcharset0 Calibri;}}
    {\colortbl ;\red0\green255\blue255;\red141\green179\blue226;}
    {\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\sb100\sa100\kerning36\b\f0\fs48 ADICTUS Report for (<xsl:value-of select="Report/Project" />) \par
    <xsl:for-each select="Report/Main">
      \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
      \clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9420\pard\intbl\qc\kerning0\fs24 Over View\cell\row\trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
      \clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx4950\clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9420\pard\intbl\b0 Technology \cell <xsl:variable name="s1" select="Technology"/>
      <xsl:variable name="newtext">
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="$s1" />
          <xsl:with-param name="replace" select="','" />
          <xsl:with-param name="by" select="'\par '" />
        </xsl:call-template>
      </xsl:variable>
      <xsl:value-of select="$newtext"/>
      \cell\row\pard\par
    </xsl:for-each>
    \b\fs28 R Factor Details \par
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx2520\clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx5580\clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9450\pard\intbl\qc\fs24 Technology API\cell Complexity\cell R Factor\cell\row
    <xsl:for-each select="Report/RFactor">
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx2520\clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx5580\clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9450\pard\intbl\b0  <xsl:value-of select="TechAPI" />\cell   <xsl:value-of select="Complexity" /> \cell  <xsl:value-of select="FACTOR" />\cell\row
    </xsl:for-each>\pard\par
    \par
    \par
    \par
    \par
    \par
    \par
    \par
    \par
    \par
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3231\clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx4663\pard\intbl\qc\b JAR Name\cell JAR Version\cell\row
    <xsl:for-each select="Report/DepedentJAR">
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3231\clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx4663\pard\intbl\b0 <xsl:value-of select="JARName" />\cell <xsl:value-of select="JARVersion" />\cell\row
    </xsl:for-each>\pard\par
    \par
    \par
    \par
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3420\clvertalc\clcbpat2\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9420\pard\intbl\qc\b Class\cell Depends On\cell\row
    <xsl:for-each select="Report/Depedent">
    \trowd\trgaph15\trleft-60\trbrdrl\brdrdash\brdrw15 \trbrdrt\brdrdash\brdrw15 \trbrdrr\brdrdash\brdrw15 \trbrdrb\brdrdash\brdrw15 \trpaddl15\trpaddr15\trpaddfl3\trpaddfr3
    \clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3420\clvertalc\clbrdrl\brdrw15\brdrs\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9420\pard\intbl\b0  <xsl:value-of select="className" />\cell 
      <xsl:variable name="s1" select="DepClassName"/>
    <xsl:variable name="newtext">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$s1" />
        <xsl:with-param name="replace" select="','" />
        <xsl:with-param name="by" select="'\par '" />
      </xsl:call-template>
    </xsl:variable>
    <xsl:value-of select="$newtext"/>\cell\row
    </xsl:for-each>\pard\par
    \par
    \pard\sa200\sl276\slmult1\v0\f1\fs22\par
    \pard\sa200\sl276\slmult1\lang9\f2\par
    }
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
