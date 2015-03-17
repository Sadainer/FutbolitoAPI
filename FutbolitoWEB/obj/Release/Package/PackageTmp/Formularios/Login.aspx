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
                                <div class="col-lg-6">
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
                                                    <asp:DropDownList ID="DropDownDpto" runat="server" AutoPostBack="True" CssClass="form-control"
                                                      DataSourceID="EntityDpto" DataTextField="Departamento" DataValueField="IdDepartamento" AppendDataBoundItems="True">
                                                      <asp:ListItem Value="0" Text="Choose Your Division">Seleccione un departamento</asp:ListItem>
                                                  </asp:DropDownList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <select class="form-control" id="DropDownCiudad">
                                                       </select>
                                                    </div>
                                                </div>
                                        </div>
                                      
                                        <div class="form-group">
                                            <input id="Text2" class="form-control" placeholder="Nombre establecimiento"/>
                                        </div>
                                        <div class="form-group">
                                            <input id="Text3" class="form-control" placeholder="Dirección"/>
                                        </div>
                                       <div class="form-group" id="Div2">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input id="Text4" class="form-control" maxlength="10" placeholder="Teléfono" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" id="Div3">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input id="Text8" class="form-control" maxlength="10" placeholder="Celular" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Correo electrónico" data-error="Correo electrónico invalido"/>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <br />
                                        <br />
                                        <div class="col-lg-12">
                                            <div class="form-group"/>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <button type="button" id= "BtnGuardar" class="btn btn-primary">Guardar</button>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <button type="button" id= "BtnCancelar" class="btn btn-danger">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                       
                        <!-- /.panel-body -->
                </div>
            </div>        
             <asp:EntityDataSource ID="EntityDpto" runat="server" ConnectionString="name=tucanchaappEntities" DefaultContainerName="tucanchaappEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="departamentos"></asp:EntityDataSource>   
    </form>
    <script src="../Scripts/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/Principal.js"></script>
    <script src="../Scripts/validator.js"></script>
    <script src="../Scripts/LibScripts/jquery_ext.js"></script>
</body>
</html>

