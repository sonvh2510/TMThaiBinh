<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="Zone" mode="Zone1">

		<section class="canhcam-nav-3">
			<div class="container">
				<div class="row">
					<div class="col">
						<ul class="nav justify-content-center nav-pills" data-select="" bg-img="/Data/Sites/1/media/nav-bg.png">
							<xsl:apply-templates select="Zone" mode="ZoneLi"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<!-- <xsl:template match="Zone" mode="Zone2">

	</xsl:template> -->
	<!--Begin Zone Child Gen <li>-->
	<xsl:template match="Zone" mode="ZoneLi">
		<!--item-->
		<li class="nav-item">

			<a class="nav-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<!--End Zone Child  Gen <li>-->






</xsl:stylesheet>