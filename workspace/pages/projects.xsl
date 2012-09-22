<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">

	<xsl:if test="$project-title = ''">
		<h1><xsl:value-of select="$page-title"/></h1>
		<ul id="series">
			<xsl:apply-templates select="projects-all/entry"/>
		</ul>
	</xsl:if>

	<xsl:if test="$project-title != ''">
		<xsl:call-template name="single-project" />
	</xsl:if>
</xsl:template>

<xsl:template match="projects-all/entry">
	<li>
		<div class="entry">
			
			<a href="{$root}/projects/{title/@handle}/">
			<h3><xsl:value-of select="title"/></h3>
			</a>
			
		</div>
	</li>
</xsl:template>	

<xsl:template name="single-project">
	<div id="project">

		<h1><xsl:value-of select="/data/projects-all/entry/title"/></h1>
		<p><xsl:value-of select="/data/projects-all/entry/description"/></p>
	</div>
</xsl:template>



</xsl:stylesheet>