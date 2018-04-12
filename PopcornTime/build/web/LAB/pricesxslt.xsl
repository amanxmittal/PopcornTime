<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#17181B">


  <div >
  <center>
  <table>
<xsl:for-each select="popcornTime/rate">
  <tr>
    <td style="color: white"><xsl:value-of select="name"/></td>
    <td style="color: white"><xsl:value-of select="Director"/></td>
    <td style="color: white"><xsl:value-of select="threeD"/></td>
    <td style="color: white"><xsl:value-of select="FullHD"/></td>
    <td style="color: white"><xsl:value-of select="HD"/></td>
  </tr>
</xsl:for-each>
</table>
</center>
</div>
</body>
</html>