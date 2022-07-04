<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Curriculum Vitae</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <style>
          div{
            border: 1px solid black;
          }
        </style>
        <link type="text/css" rel="stylesheet" href="layout.css" />
        <link type="text/css" rel="stylesheet" href="styles.css" />
        <link type="text/css" rel="stylesheet" href="print.css" />
      </head>
      <body>
        <div class="page1 page A4">
          <div class="row">
            <div class="col-3">&#160;</div>
            <div class="col-9">&#160;</div>
          </div>
          <div class="row">
            <div class="col-9">&#160;</div>
            <div class="col-3">&#160;</div>
          </div>
          <div class="row">
            <div class="col-3">&#160;</div>
            <div class="col-9">&#160;</div>
          </div>
        </div>
        <div class="page2 page A4">
          <div class="row">
            <div class="col-9">&#160;</div>
            <div class="col-3">&#160;</div>
          </div>
          <div class="row">
            <div class="col-3">&#160;</div>
            <div class="col-9">&#160;</div>
          </div>
          <div class="row">
            <div class="col-9">&#160;</div>
            <div class="col-3">&#160;</div>
          </div>
          <div class="row">
            <div class="col-12">
              <xsl:value-of select="/data/a"/>
              <xsl:value-of select="/data/b"/>
              <xsl:value-of select="/data/c/@name"/>
              <xsl:for-each select="/data/c/d">
                <xsl:value-of select="d"/>
              </xsl:for-each>
            </div>
          </div>
        </div>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
