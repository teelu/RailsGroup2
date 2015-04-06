<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
     <HTML>
        <link rel="stylesheet" type="text/css" href="/assets/application.css"/>
       <HEAD>
          <TITLE>Employee Details</TITLE>
       </HEAD>
       <BODY>
        <div class="header">
          <h1>Employee Details</h1>
          <img id="logo" src="{employees/logo/@src}"></img>
        </div>
        <div class="body">
          <table border="1">
            <tr>
              <th>Name</th>
              <th>Address</th>
              <th>Phone</th>
              <th>Email</th>
              <th>Qualifications</th>
              <th>Details</th>
              <th>Show</th>
              <th>Edit</th>
              <th>Destory</th>
            </tr>
            <xsl:for-each select="employees">
            <tr>
              <td>
                <xsl:value-of select="name/first"/>
                 &#160;
                <xsl:value-of select="name/last"/>
              </td>
              <td>
                <xsl:value-of select="address"/>
              </td>
              <td>
                <xsl:value-of select="phone"/>
              </td>
              <td>
                <xsl:value-of select="email"/>
              </td>
              <td>
                <xsl:value-of select="qualifications"/>
              </td>
              <td>
                <xsl:value-of select="details"/>
              </td>
              <td>

                <a href="{show/a/@href}">
                  <xsl:value-of select="show"/>
                </a>
              </td>
              <td>
                <a href="{edit/a/@href}">
                <xsl:value-of select="edit"/>
                </a>
              </td>
              <td>
                <a href="{destory/a/@href}">
                 <xsl:value-of select="destory"/>
               </a>
              </td>
            </tr>
            </xsl:for-each>
          </table>
          <a href="{employees/new/a/@href}">
                 <xsl:value-of select="employees/new"/>
          </a>
        </div>
       </BODY>
     </HTML>
   </xsl:template>
</xsl:stylesheet>