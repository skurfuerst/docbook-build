<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:d="http://docbook.org/ns/docbook" xmlns="http://docbook.org/ns/docbook" exclude-result-prefixes="d">

	<xsl:template match="d:programlisting">
		<xsl:variable name="name" select="local-name()"/>

		<!-- If the current element is the first element in a sequence -->
		<xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name">
			<xsl:copy>
				<!-- we process the element -->
				<xsl:apply-templates />
				 <!-- Match the next sibling if it has the same name -->
				<xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
			</xsl:copy>
		</xsl:if>
	</xsl:template>

	<!-- Recursive template used to match the next sibling if it has the same name -->
	<xsl:template match="*" mode="next">
		<xsl:text>&#10;</xsl:text>
		<xsl:variable name="name" select="local-name()"/>
		<xsl:apply-templates />
		<xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
	</xsl:template>

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>