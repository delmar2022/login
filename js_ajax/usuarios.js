$(document).ready(function () {});

$("#guardar_usuario").submit(function (event) {
  $("#regitro").attr("disabled", true);
  var parametros = $(this).serialize();
  $.ajax({
    type: "POST",
    URL: "registro.php",
    data: parametros,
    beforeSend: function (objeto) {
      $("#resultados_ajax").html(
        '<img src="img/cargando.gif" width="300px" height="200px">'
      );
    },
    success: function (datos) {
      $("#regitro").attr("disabled", false);
      $("#guardar_usuario")[0].reset();
      $("usuario").focus();
    },
  });
});
