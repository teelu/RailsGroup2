<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
     <HTML>
        <link rel="stylesheet" type="text/css" href="/assets/application.css"/>
       <HEAD>
          <TITLE>Members Details</TITLE>
       </HEAD>
       <BODY>
        <div class="header">
          <h1>Members Details</h1>
            <img id="logo" src="{members/logo/@src}"></img>
        </div>
        <div class="body">
          <table border="1">
            <tr>
              <th>Name></th>
              <th>Image</th>
              <th>Date of Birth</th>
            </tr>
            <xsl:for-each select="members/member">
            <tr>
              <td>
                <xsl:value-of select="name/@first"/>
                 &#160;
                <xsl:value-of select="name/@last"/>
              </td>
              <td>
                <img src="{Image/@filename}"></img>
              </td>
              <td>
                <xsl:value-of select="DOB"/>
              </td>
            </tr>
            </xsl:for-each>
          </table>
        </div>
       </BODY>
     </HTML>
   </xsl:template>
</xsl:stylesheet>