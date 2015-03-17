$(document).ready(function () {
    var ruta = "http://localhost:59513/api/Ciudades/listado";
    //$('#FormLogin').validator()
    $('#DropDownDpto').change(function () {
        alert(ruta);
        $.ajax({
            type: "GET",
            url: ruta,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (result) {
                alert("Funciona" + JSON.stringify(result));
                //$("#DropDownCiudad").byaCombo({ DataSource: result, Value: "idCiudad", Display: "Ciudad", placeHolder: "Seleccione una Ciudad" });
               
            },
            error: function (result) {
                alert(JSON.stringify(result));
                alert(ruta);
                //$("#DropDownCiudad").empty();
                //alert(result);
                //alert(ruta + "ciudades/" + $("#DropDownDpto").val());
            }
        });
    });
});