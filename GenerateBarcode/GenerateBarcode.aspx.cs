using IronBarCode;
using System;
using System.IO;

namespace GenerateBarcode
{
    public partial class GenerateBarcode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGenerateBarcode_Click(object sender, EventArgs e)
        {
            //System.Web.UI.WebControls.Image barcodeImage = new System.Web.UI.WebControls.Image();
            string generatebarcode = txtGenerateBarcode.Text;
            GeneratedBarcode barcode = BarcodeWriter.CreateBarcode(generatebarcode, BarcodeWriterEncoding.Code128);
            barcode.ResizeTo(400, 120);
            barcode.AddBarcodeValueTextBelowBarcode();
            var folder = Server.MapPath("/App_Data/GeneratedBarcode");
            if (!Directory.Exists(folder))
            {
                Directory.CreateDirectory(folder);
            }
            string filePath = Server.MapPath("GeneratedBarcode/barcode.png");
            barcode.SaveAsPng(filePath);
            ImageGeneratedBarcode.ImageUrl = "~/GeneratedBarcode/" + Path.GetFileName(filePath);
        }
    }
}