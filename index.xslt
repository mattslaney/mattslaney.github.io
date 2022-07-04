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
        <link type="css" rel="stylesheet" href="layout.css" />
        <link type="css" rel="stylesheet" href="styles.css" />
        <link type="css" rel="stylesheet" href="print.css" />
      </head>
      <body>
        <div class="page1 page A4">
          <p>This is some content</p>
        </div>
        <div class="page2 page A4">
          <p>This is some content</p>
        </div>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
