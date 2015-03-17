<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FutbolitoWEB.Formularios.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .blanco {
            position: absolute;
            height: 100px;
            width: 100%;
            border-radius: 0px;
             border: 1px solid #fff;
            padding: 10px;
            z-index: 2;
            background: rgb(5, 182, 3);
        }
    </style>
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />

</head>
<body>
     <nav class="blanco">
            <div class="navbar-header container">
                
                <a class="navbar-brand" href="index.html">SB Admin v2.4</a>

            </div>
     </nav>
    <br />
    <br />
    <br />
    <br />
    <form id="FormLogin" runat="server">
    <div id="page-wrapper" class="container"/>
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                   
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6" runat="server" id="Registro">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h1 class="page-header">Registro su establecimiento</h1>
                                        </div>
                                        <!-- /.col-lg-12 -->
                                    </div>
                                    <br />
                                    <br />
                                    <%--<form role="form" runat="server">--%>
                                        <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:DropDownList ID="DropDownDpto" class="form-control" runat="server" AutoPostBack="True" 
                                                        DataSourceID="ObjectDataSourceDpto" DataTextField="Departamento" DataValueField="idDepartamento" AppendDataBoundItems="True">
                                                        <asp:ListItem Value="0" Text="Choose Your Division">Seleccione un departamento</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:ObjectDataSource ID="ObjectDataSourceDpto" runat="server" SelectMethod="GetDptos" TypeName="BLL.CiudadesBLL"></asp:ObjectDataSource>
                                                        
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <asp:DropDownList ID="DropDownCiudades" runat="server" class="form-control" AutoPostBack="True" 
                                                    DataSourceID="ObjectDataSourceCiudades" DataTextField="Ciudad" DataValueField="IdCiudad">
                                                    </asp:DropDownList>
                                                    <asp:ObjectDataSource ID="ObjectDataSourceCiudades" runat="server" SelectMethod="GetCiudades" TypeName="BLL.CiudadesBLL">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownDpto" Name="Nit" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                 </div>
                                            </div>
                                        </div>
                                      
                                        <div class="form-group">
                                            <input id="txtEstablecimiento" class="form-control" placeholder="Nombre establecimiento" runat ="server"/>
                                        </div>
                                        <div class="form-group">
                                            <input id="txtDireccion" class="form-control" placeholder="Dirección" runat ="server"/>
                                        </div>
                                       <div class="form-group" id="Div2">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input id="txtTelefono" class="form-control" maxlength="10" runat ="server" placeholder="Teléfono" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" id="Div3">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input id="txtCelular" class="form-control" maxlength="10" runat ="server" placeholder="Celular" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="inputEmail" runat ="server" placeholder="Correo electrónico" data-error="Correo electrónico invalido"/>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <br />
                                        <br />
                                        <div class="col-lg-12">
                                            <div class="form-group"/>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="BtnGuardar_Click"/>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" class="btn btn-danger"/>
                                                    </div>
                                                </div>
                                            </div>
                                </div>

                                <div class="form-group" id="claves" runat="server">
                                    <div class="form-group" >
                                        <div class="row">
                                                <div class="col-lg-6">
                                                    <input id="txtUsuario" class="form-control" placeholder="Nombre de Usuario" runat ="server"/>
                                                </div>
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">
                                              <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Contraseña" required>
                                            </div>
                                            <div class="col-lg-6">
                                              <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Contraseñas no concuerdan" placeholder="Confirme su contraseña" required>
                                              <div class="help-block with-errors"></div>
                                            </div>
                                      </div>      
                                    </div>
                                </div>
                              </div>
                            </div>
                            <!-- /.row (nested) -->
                       
                        <!-- /.panel-body -->
                </div>
            </div>        
             </form>
    <script src="../Scripts/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/validator.js"></script>
    <script src="../Scripts/Principal.js"></script>
    
    
</body>
</html>

