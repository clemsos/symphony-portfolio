<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">

	<xsl:if test="$publication-title = ''">
		<h1><xsl:value-of select="$page-title"/></h1>
		<ul id="series">
			<xsl:apply-templates select="publications/entry"/>
		</ul>
	</xsl:if>

	<xsl:if test="$publication-title != ''">
		<xsl:call-template name="single-publication" />
	</xsl:if>
</xsl:template>

<xsl:template match="publications/entry">
	<li>
		<div class="entry">
			<a href="{$root}/publications/{title/@handle}/">
				<h3><xsl:value-of select="title"/></h3>
			</a>
		</div>
	</li>
</xsl:template>	

<xsl:template name="single-publication">
	<div id="publication">

		<h1><xsl:value-of select="/data/publications/entry/title"/></h1>
		<p><xsl:value-of select="/data/publications/entry/description"/></p>
	</div>
</xsl:template>
</xsl:stylesheet>