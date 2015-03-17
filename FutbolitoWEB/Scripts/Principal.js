$(document).ready(function () {
    var ruta = "http://localhost:8025/api/";
    $('#BtnCancelar').click(function (evento) {
        alert("Sadainer");

    });
    $('#FormLogin').validator()
    //$.ajax({
    //    type: "GET",
    //    url: ruta + "dpto/listado",
    //    contentType: "application/json; charset=utf-8",
    //    dataType: "json",
    //    async: true,
    //    success: function (result) {
    //        $("#DropDownDpto").byaCombo({ DataSource: result, Value: "idDepartamento", Display: "Departamento", placeHolder: "Seleccione un departamento" });
    //    },
    //    error: function (result) {
    //        alert(JSON.stringify(result));
    //        $("#DropDownDpto").empty();
    //    }
    //});
    
    //$('#DropDownDpto').change(function () {
    //    $.ajax({
    //        type: "GET",
    //        url: ruta + "ciudades/" + $('#DropDownDpto').val(),
    //        contentType: "application/json; charset=utf-8",
    //        dataType: "json",
    //        async: true,
    //        success: function (result) {
    //            $("#DropDownCiudad").byaCombo({ DataSource: result, Value: "IdCiudad", Display: "Ciudad", placeHolder: "Seleccione una Ciudad" });
               
    //        },
    //        error: function (result) {
    //            alert(JSON.stringify(result));
    //            $("#DropDownCiudad").empty();
    //        }
    //    });
    //});
    //$('#DropDownCiudad').change(function () {
    //    alert($('#DropDownCiudad').Val());
    //});
});