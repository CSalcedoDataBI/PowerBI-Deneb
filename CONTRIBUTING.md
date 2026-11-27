# Cómo se publica un visual

Cada visual entra con su carpeta, su fila en la galería del README y su foto. Lo comprueba `tools/check-gallery.ps1`, que falla si falta algo.

## La foto (`preview.png`)

- **Solo el visual**, con su título y subtítulo, sobre fondo blanco. Sin la interfaz de Power BI Desktop.
- **A 2x**: 1200 px de ancho como mínimo (el check lo exige). PNG o WebP.
- Datos del modelo maestro Contoso-Retail, nunca de un cliente. Sin logos ni fotos de personas.

**Cómo se saca:** con el mismo motor de la galería de csalcedodatabi.com: `npx tsx scripts/render-deneb-one.ts <slug> preview.png --scale 2` dibuja el spec sin Desktop. Un visual que no esté en la web se captura del PBIP abierto con `pbi-captura.ps1` y se recorta exacto al visual.

## La carpeta

`Nombre_Con_Guiones_Bajos/` con `README.md`, `Nombre_Con_Guiones_Bajos.zip`, la pieza suelta (`<slug>.json`) y `pbip/Nombre_Con_Guiones_Bajos.pbip`.