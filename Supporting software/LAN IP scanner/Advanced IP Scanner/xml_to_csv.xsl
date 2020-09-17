<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
	{{{XslVars}}}
	<xsl:template match="/">
		<xsl:value-of select="$colname_status"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_name"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_type"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_os"/>
		<xsl:text>&#09;IP&#09;Radmin&#09;Http&#09;Https&#09;Ftp&#09;Rdp&#09;</xsl:text>
		<xsl:value-of select="$colname_shares"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_nbname"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_nbgroup"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_manufacturer"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_mac"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_user"/>
		<xsl:text>&#09;</xsl:text>
		<xsl:value-of select="$colname_comments"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:for-each select="Advanced_IP_scanner/row | Advanced_Port_scanner/row">
			<xsl:if test="@status = 'alive'"><xsl:value-of select="$status_alive"/></xsl:if>
			<xsl:if test="@status = 'dead'"><xsl:value-of select="$status_dead"/></xsl:if>
			<xsl:if test="@status = 'unknown'"><xsl:value-of select="$status_unknown"/></xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@name"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@device_type"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@os_version"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@ip"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="radmin">
				<xsl:for-each select="radmin">
					<xsl:choose>
                      <xsl:when test="substring(@port,1,5) = '4899 '">
						<xsl:value-of select="substring(@port,7,string-length(@port)-7)"/>
                      </xsl:when>
                      <xsl:otherwise>
					    <xsl:value-of select="@port"/>
                      </xsl:otherwise>
                    </xsl:choose>
					<xsl:if test="not(position()=last())">, </xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="@has_http = 1">
				<xsl:choose>
					<xsl:when test="@http_title">
						<xsl:value-of select="@http_title"/>
					</xsl:when>
					<xsl:otherwise>?</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="@has_https = 1">
				<xsl:choose>
					<xsl:when test="@https_version">
						<xsl:value-of select="@https_version"/>
					</xsl:when>
					<xsl:otherwise>?</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="@has_ftp = 1">
				<xsl:choose>
					<xsl:when test="@ftp_version">
						<xsl:value-of select="@ftp_version"/>
					</xsl:when>
					<xsl:otherwise>?</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="@has_rdp = 1">
				<xsl:choose>
					<xsl:when test="@rdp_version">
						<xsl:value-of select="@rdp_version"/>
					</xsl:when>
					<xsl:otherwise>?</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:if test="share">
				<xsl:for-each select="share">
					<xsl:value-of select="@name"/>
					<xsl:if test="not(position()=last())">, </xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@netbiosname"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@netbiosgroup"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@manufacturer"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@mac"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@user"/>
			<xsl:text>&#9;</xsl:text>
			<xsl:value-of select="@comments"/>
			<xsl:text>&#10;</xsl:text>
			<xsl:if test="service">
				<xsl:for-each select="service">
					<xsl:text>&#9;</xsl:text>
					<xsl:choose>
                        <xsl:when test="not(contains('uU', substring(@port,1,1)))">
					      <xsl:value-of select="@port"/>
						  <xsl:text>&#9;</xsl:text>
						  <xsl:text>TCP</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
						  <xsl:value-of select="substring(@port,2)"/>
						  <xsl:text>&#9;</xsl:text>
						  <xsl:text>UDP</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
					<xsl:text>&#9;</xsl:text>
					<xsl:choose>
						<xsl:when test="@version != ''">
							<xsl:value-of select="translate(@version, '&#9;', '')" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>?</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:text>&#10;</xsl:text>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
