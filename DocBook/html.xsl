<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslthl="http://xslthl.sf.net"
		xmlns:d="http://docbook.org/ns/docbook"
		version="1.0">

	<!-- import Docbook XSL stylesheet -->
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/chunk.xsl"/>
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/highlight.xsl"/>

	<xsl:import href="common-customizations.xsl"/>

	<!-- adjust properties - see http://www.docbook.org/tdg/en/html/docbook.html and http://docbook.sourceforge.net/release/xsl/current/doc/ for a reference-->
	<!--<xsl:param name="base.dir">ADD OUTPUT DIRECTORY HERE/</xsl:param>-->
	<xsl:param name="chunk.tocs.and.lots" select="0"/>
	<xsl:param name="chunk.separate.lots" select="1"/>
	<xsl:param name="chunker.output.encoding">UTF-8</xsl:param>
	<xsl:param name="chunk.section.depth" select="0"/>
	<xsl:param name="use.id.as.filename" select="1"/>
	<xsl:param name="html.stylesheet.type">text/css</xsl:param>
	<xsl:param name="html.stylesheet">TheGuide.css</xsl:param>
	<xsl:param name="ignore.image.scaling" select="1"/>
	<xsl:param name="css.decoration" select="1"/>
	<xsl:param name="toc.section.depth" select="2"/>
	<xsl:param name="section.autolabel" select="1"/>
	<xsl:param name="section.label.includes.component.label" select="1"/>
	<xsl:param name="section.autolabel.max.depth" select="1"/>
	<xsl:param name="generate.id.attributes" select="1"/>


	<!-- the main toc has only chapters -->
	<xsl:template match="d:preface|d:chapter|d:appendix|d:article" mode="toc">
		<xsl:param name="toc-context" select="."/>

		<xsl:call-template name="subtoc">
			<xsl:with-param name="toc-context" select="$toc-context"/>
			<xsl:with-param name="nodes" select="/NOT-AN-ELEMENT"/>
		</xsl:call-template>
	</xsl:template>

	<!-- output class names for programlisting language -->
	<xsl:template match="d:programlisting" mode="class.value">
		<xsl:param name="class" select="local-name(.)"/>
		<xsl:param name="language" select="@language"/>
		<xsl:value-of select="concat($class, ' ', $language)"/>
	</xsl:template>

</xsl:stylesheet>
