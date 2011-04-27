<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:d="http://docbook.org/ns/docbook" xmlns="http://docbook.org/ns/docbook" exclude-result-prefixes="d">

	<xsl:template match="d:para[count(*)=1][count(text())=0][d:code]">
		<programlisting><xsl:apply-templates select="d:code/node()"/></programlisting>
	</xsl:template>

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>