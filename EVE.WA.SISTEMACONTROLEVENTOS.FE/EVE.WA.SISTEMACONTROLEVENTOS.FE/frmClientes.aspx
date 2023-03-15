<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="EVE.WA.SISTEMACONTROLEVENTOS.FE.frmClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%--APARTADO DE LIBRERIAS HTML--%>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clientes</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-6.2.1-web/css/fontawesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.6.3.min.js"></script>
    <script src="fontawesome-free-6.2.1-web/js/fontawesome.min.js"></script>
</head>



<%--LA ESTRUCTURA DEL BODY PRINCIPAL--%>
<body>
    <form id="form1" runat="server">

        <%--GIF CARGANDO CUANDO SE REALIZA UN PROCESO--%>
        <asp:UpdateProgress ID="UpdateProgress3" runat="server">
            <ProgressTemplate>
                <div class="modalcargando">
                    <div class="center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/loader.gif" />
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>


        <%--SCRIPT MANAGER--%>
        <asp:ScriptManager runat="server"></asp:ScriptManager>


        <%--//FORMATO PRINCIPAL--%>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>

                <div class="container-fluid" style="margin-top: 15px">
                    <div class="card">

                        <%--HEADER PRINCIPAL DEL PROYECTO--%>
                        <h5 class="card-header">Clientes</h5>

                        <%-- <<%--BODDY PRINCIPAL DEL PROYECTO--%>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                </div>
                                <div class="col-sm-12 col-lg-6 text-end">
                                    <asp:LinkButton ID="btnNuevoCliente" runat="server" OnClick="btnNuevoCliente_Click" CssClass="btn btn-success" Style="margin-bottom: 15px">Nuevo Cliente <i class="fa-solid fa-square-plus"></i></asp:LinkButton>
                                </div>
                            </div>
                            <br />                         
                        </div>


                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>



                        <%--DATA GRIDVIEW PRINCIPAL DEL PROYECTO--%>
                        <div class="row table-responsive">
                            <asp:GridView ID="gvImpresionGarantia" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover table-sm"
                                EmptyDataText="***No se encontraron datos***" OnRowCommand="gvBusquedaDatosGarantia_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Compañia" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center" Visible="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCompañia" runat="server" Text='<%# Bind("COMPANIA")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Marca" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Label ID="lblMarca" runat="server" Text='<%# Bind("MARCA") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Chasis" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Label ID="lblChasis" runat="server" Text='<%# Bind("CHASIS") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Factura" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Label ID="lblFactura" runat="server" Text='<%# Bind("FACTURA") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Garantía" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Label ID="lblGarantia" runat="server" Text='<%# Bind("GARANTIA") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Vendedor" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: left">
                                                <asp:Label ID="lblVendedor" runat="server" Text='<%# Bind("VENDEDOR") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cliente" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: left">
                                                <asp:Label ID="lblCliente" runat="server" Text='<%# Bind("CLIENTE") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Correo" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: left">
                                                <asp:Label ID="lblCorreoCliente" runat="server" Text='<%# Bind("CORREO_CLIENTE") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Fecha" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: left">
                                                <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("FECHA") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Usuario" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <asp:Label ID="lblUsuario" runat="server" Text='<%# Bind("USUARIO") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Correo Cliente" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="5%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnCorreoCliente" CssClass="btn btn-primary" ToolTip="Envió garantía cliente" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="CorreoCliente" runat="server"><i class="fa-solid fa-envelopes-bulk"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Imprimir" HeaderStyle-CssClass="text-center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="5%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnImprimirGarantia" CssClass="btn btn-warning" ToolTip="Impresión de garantía" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Imprimir" runat="server"><i class="fa-solid fa-print"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>

                    <%-- PARTE DEL FOOTER PRINCIPAL DEL PROYECTO --%>
                    <div class="card-footer text-muted">
                        <div class="row">
                            <h5>Formulario permite la creación de nuevos clientes</h5>
                        </div>
                    </div>
                </div>               


            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>
