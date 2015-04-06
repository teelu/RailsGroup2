<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
     <HTML>
        <link rel="stylesheet" type="text/css" href="/assets/application.css"/>
       <HEAD>
          <TITLE>Payrolls Details</TITLE>
       </HEAD>
       <BODY>
        <div class="header">
          <h1>Payrolls Details</h1>
          <img id="logo" src="{payrolls/logo/@src}"></img>
        </div>
        <div class="body">
          <table border="1">
            <tr>
              <th>Pay Date</th>
              <th>Hourly Rate</th>
              <th>Normal Hours</th>
              <th>Allowances</th>
              <th>Deductions</th>
              <th>Netpay</th>
              <th>Status</th>
              <th>Employee</th>
              <th>Department</th>
              <th>Employee Type</th>
              <th>Show</th>
              <th>Edit</th>
              <th>Destory</th>
            </tr>
            <xsl:for-each select="payrolls">
            <tr>
              <td>
                <xsl:value-of select="paydate"/>
              </td>
              <td>
                <xsl:value-of select="hourlyrate"/>
              </td>
              <td>
                <xsl:value-of select="normalhours"/>
              </td>
              <td>
                <xsl:value-of select="allowances"/>
              </td>
              <td>
                <xsl:value-of select="deductions"/>
              </td>
              <td>
                <xsl:value-of select="netpay"/>
              </td>
              <td>
                <xsl:value-of select="status"/>
              </td>
              <td>
                <xsl:value-of select="id"/>
              </td>
              <td>
                <xsl:value-of select="code"/>
              </td>
              <td>
                <xsl:value-of select="type"/>
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
          <a href="{payrolls/new/a/@href}">
                 <xsl:value-of select="payrolls/new"/>
               </a>
        </div>
       </BODY>
     </HTML>
   </xsl:template>
</xsl:stylesheet>