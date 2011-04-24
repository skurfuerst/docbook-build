<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslthl="http://xslthl.sf.net"
		xmlns:d="http://docbook.org/ns/docbook"
		version="1.0">

	<!-- syntax highlighting -->
	<xsl:param name="highlight.source" select="1"/>

	<xsl:template match='xslthl:keyword' mode="xslthl">
		<span style="color: #007700"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>
	<xsl:template match='xslthl:string' mode="xslthl">
		<span style="color: #dd0000"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>
	<xsl:template match='xslthl:number' mode="xslthl">
		<span style="color: #0000bb"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>

	<xsl:template match='xslthl:comment' mode="xslthl">
		<span style="color: #ff8000"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>
	<xsl:template match='xslthl:doccomment' mode="xslthl">
		<span style="color: #ff8000"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>

	<xsl:template match='xslthl:tag' mode="xslthl">
		<strong><xsl:apply-templates mode="xslthl"/></strong>
	</xsl:template>
	<xsl:template match='xslthl:attribute' mode="xslthl">
		<span style="color: #007700"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>
	<xsl:template match='xslthl:value' mode="xslthl">
		<span style="color: #dd0000"><xsl:apply-templates mode="xslthl"/></span>
	</xsl:template>


</xsl:stylesheet>
