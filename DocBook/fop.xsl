<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslthl="http://xslthl.sf.net"
		xmlns:d="http://docbook.org/ns/docbook"
		version="1.0">

	<!-- import Docbook XSL stylesheet -->
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/highlight.xsl"/>

	<xsl:import href="common-customizations.xsl"/>

	<xsl:param name="paper.type" select="'A4'"/>

	<xsl:param name="fop1.extensions" select="1"/>
	<xsl:param name="double.sided" select="1" />
</xsl:stylesheet>
