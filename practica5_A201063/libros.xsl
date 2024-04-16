<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
          }
          h1 {
            color: #333;
            text-align: center;
          }
          table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
          }
          th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
          }
          th {
            background-color: #4CAF50;
            color: white;
          }
          tr:hover {
            background-color: #f5f5f5;
          }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>
        <table>
          <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>Género</th>
            <th>Páginas</th>
          </tr>
          <xsl:for-each select="biblioteca/libro">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="genero"/></td>
              <td><xsl:value-of select="paginas"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>