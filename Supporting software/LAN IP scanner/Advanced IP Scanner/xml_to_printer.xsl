<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
  {{{XslVars}}}
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Favorites list</title>
      </head>
      <body>
        <table cellpadding="0" cellspacing="0" border="1" width="100%">
          <tr>
			<xsl:if test="contains($use_column_status, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_status, '-'))">
			      <th width="{$width_column_status}%">
				    <xsl:value-of select="$colname_status"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_status"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_name, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_name, '-'))">
			      <th width="{$width_column_name}%">
				    <xsl:value-of select="$colname_name"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_name"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_type, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_type, '-'))">
			      <th width="{$width_column_type}%">
				    <xsl:value-of select="$colname_type"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_type"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_os, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_os, '-'))">
			      <th width="{$width_column_os}%">
				    <xsl:value-of select="$colname_os"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_os"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_ip, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_ip, '-'))">
			      <th width="{$width_column_ip}%">
				    <xsl:value-of select="$colname_ip"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_ip"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_nbname, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_nbname, '-'))">
			      <th width="{$width_column_nbname}%">
				    <xsl:value-of select="$colname_nbname"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_nbname"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_nbgroup, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_nbgroup, '-'))">
			      <th width="{$width_column_nbgroup}%">
				    <xsl:value-of select="$colname_nbgroup"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_nbgroup"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_manufacturer, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_manufacturer, '-'))">
			      <th width="{$width_column_manufacturer}%">
				    <xsl:value-of select="$colname_manufacturer"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_manufacturer"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
			<xsl:if test="contains($use_column_mac, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_mac, '-'))">
			      <th width="{$width_column_mac}%">
				    <xsl:value-of select="$colname_mac"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_mac"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
            <xsl:if test="contains($use_column_user, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_user, '-'))">
			      <th width="{$width_column_user}%">
				    <xsl:value-of select="$colname_user"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_user"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
            <xsl:if test="contains($use_column_comments, 'y')">
			  <xsl:choose>
				<xsl:when test="not(contains($width_column_comments, '-'))">
			      <th width="{$width_column_comments}%">
				    <xsl:value-of select="$colname_comments"/>
				  </th>
				</xsl:when>
				<xsl:otherwise>
				  <th>
				    <xsl:value-of select="$colname_comments"/>
				  </th>
				</xsl:otherwise>
			  </xsl:choose>
			</xsl:if>
          </tr>
          <xsl:for-each select="Advanced_IP_scanner/row | Advanced_Port_scanner/row">
            <tr class="r1">
              <td class="head">
			      <xsl:if test="@status = 'alive'"><xsl:value-of select="$status_alive"/></xsl:if>
                  <xsl:if test="@status = 'dead'"><xsl:value-of select="$status_dead"/></xsl:if>
                  <xsl:if test="@status = 'unknown'"><xsl:value-of select="$status_unknown"/></xsl:if>
			  </td>
			  <xsl:if test="contains($use_column_name, 'y')">
                <td class="head"><xsl:value-of select="@name"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_type, 'y')">
			    <td class="head"><xsl:value-of select="@device_type"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_os, 'y')">
			    <td class="head"><xsl:value-of select="@os_version"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_ip, 'y')">
                <td class="head"><xsl:value-of select="@ip"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_nbname, 'y')">
                <td class="head"><xsl:value-of select="@netbiosname"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_nbgroup, 'y')">
                <td class="head"><xsl:value-of select="@netbiosgroup"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_manufacturer, 'y')">
                <td class="head"><xsl:value-of select="@manufacturer"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_mac, 'y')">
                <td class="head"><xsl:value-of select="@mac"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_user, 'y')">
                <td class="head"><xsl:value-of select="@user"/></td>
			  </xsl:if>
			  <xsl:if test="contains($use_column_comments, 'y')">
                <td class="head"><xsl:value-of select="@comments"/></td>
			  </xsl:if>
            </tr>
            <xsl:if test="@has_http = 1">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead">HTTP:</div>
                  <div class="res">
                    <xsl:choose>
                      <xsl:when test="@http_title">
                        <xsl:value-of select="@http_title"/>
                      </xsl:when>
                      <xsl:otherwise>?</xsl:otherwise>
                    </xsl:choose>
                  </div>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="@has_https = 1">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead">HTTPS:</div>
                  <div class="res">
                    <xsl:choose>
                      <xsl:when test="@https_version">
                        <xsl:value-of select="@https_version"/>
                      </xsl:when>
                      <xsl:otherwise>?</xsl:otherwise>
                    </xsl:choose>
                  </div>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="@has_ftp = 1">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead">FTP:</div>
                  <div class="res">
                    <xsl:choose>
                      <xsl:when test="@ftp_version">
                        <xsl:value-of select="@ftp_version"/>
                      </xsl:when>
                      <xsl:otherwise>?</xsl:otherwise>
                    </xsl:choose>
                  </div>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="@has_rdp = 1">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
				  <div class="rhead">RDP:</div>
				  <div class="res">
				    <xsl:choose>
					  <xsl:when test="@rdp_version">
					    <xsl:value-of select="@rdp_version"/>
					  </xsl:when>
					  <xsl:otherwise>?</xsl:otherwise>
			        </xsl:choose>
			      </div>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="share">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead"><xsl:value-of select="$label_shares"/></div>
				  <div class="res">
                    <xsl:for-each select="share">
                        <xsl:value-of select="@name"/>
                        <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                    </xsl:for-each>
				  </div>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="radmin">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead">Radmin:</div>
                  <xsl:for-each select="radmin">
                    <div class="res">
					  <xsl:choose>
                        <xsl:when test="substring(@port,1,5) = '4899 '">
						  <xsl:value-of select="substring(@port,7,string-length(@port)-7)"/>
                        </xsl:when>
                        <xsl:otherwise>
						  <xsl:value-of select="@port"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </div>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="service">
              <tr class="r2">
                <td></td>
                <td colspan="{$bigrow_colspan}">
                  <div class="rhead"><xsl:value-of select="$label_ports"/></div>
                  <xsl:for-each select="service">
                    <div class="res">
                      <xsl:choose>
                        <xsl:when test="not(contains('uU', substring(@port,1,1)))">
					      <xsl:value-of select="@port"/>
						  <xsl:text> (TCP): </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
						  <xsl:value-of select="substring(@port,2)"/>
						  <xsl:text> (UDP): </xsl:text>
                        </xsl:otherwise>
                      </xsl:choose>
					  <xsl:choose>
						<xsl:when test="@version != ''">
							<xsl:value-of select="@version" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>?</xsl:text>
						</xsl:otherwise>
					  </xsl:choose>
                    </div>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
