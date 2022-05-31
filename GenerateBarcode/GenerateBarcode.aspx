<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateBarcode.aspx.cs" Inherits="GenerateBarcode.GenerateBarcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Generate Barcode Images in C#</h2>
            <div class="row">
                <div class="col-4">
                    <div class="form-group">
                        <label>Enter a value to generate barcode:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtGenerateBarcode" runat="server" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <asp:Button ID="BtnGenerateBarcode" runat="server" Text="Generate Barcode" CssClass="btn btn-primary" OnClick="BtnGenerateBarcode_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Image ID="ImageGeneratedBarcode" runat="server" CssClass="img-thumbnail" />
        </div>
    </form>
</body>

</html>
