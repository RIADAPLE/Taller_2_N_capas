<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/jsp/include-css.jsp" %> <%@include file="/WEB-INF/jsp/include-js.jsp"
    %>
    <script>
      (function (window, document, $, undefined) {
        $(function () {
          var formUpdateAlbum = $('#formUpdateAlbum');

          formUpdateAlbum.submit(function (event) {
            swal(
              {
                title: '¿Esta seguro?',
                text: '¡Se ingresara un nuevo registro!',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#5D9CEC',
                confirmButtonText: 'Sí, guardar registro!',
                cancelButtonText: 'No, cancelar!',
                closeOnConfirm: false,
                closeOnCancel: false,
              },
              function (isConfirm) {
                console.log(formUpdateAlbum.serialize());
                if (isConfirm) {
                  $.ajax({
                    data: formUpdateAlbum.serialize(),
                    url: '${pageContext.request.contextPath}/saveAlbum', /*Se debe cambiar en el Controller respectivo*/
                    type: 'PUT',
                    success: function (response) {
                      swal('Guardado!', 'Su registro se guardo exitosamente.', 'success');
                      $("button[data-dismiss='modal']").click();
                      formUpdateAlbum.trigger('reloadGrid');
                      return false;
                    },
                    error: function (x, e) {
                      alert('Ocurrio un error');
                    },
                  });
                } else {
                  swal('Cancelado', 'Su petición ha sido cancelada.', 'error');
                  $("button[data-dismiss='modal']").click();
                }
              },
            );
            return false;
          });
        });
      })(window, document, window.jQuery);
    </script>
    <style>
      .album-page {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 24px;
      }
      .album-title {
        padding: 10px;
      }
    </style>
  </head>
  <body class="skin-megna fixed-layout">
    <div class="preloader">
      <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">Actualizar Album</p>
      </div>
    </div>
    <div id="main-wrapper">
      <div class="container album-page">
        <div class="row align-items-center">
          <form role="form" id="formUpdateAlbum" data-toggle="validator">
            <div class="row album-title">
              <h2>Formulario de actualizar album</h2>
            </div>
            <div class="row">
                <div class="col-md-12">
                  <label class="control-label">ID Album</label>
                  <input class="form-control" required="true" type="text" name="album-id" id="album-id" />
                </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label class="control-label">Nuevo nombre</label>
                <input class="form-control" required="true" type="text" name="nuevoNombre" id="nuevoNombre" />
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label class="control-label">Nueva canci&oacute;n m&aacute;s popular</label>
                <input class="form-control" type="text" name="nuevaCancionPopular" id="nuevaCancionPopular" />
              </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                  <label class="control-label">Nuevo a&ntilde;o de publicaci&oacute;n</label>
                  <input class="form-control" type="date" name="nuevaFecPublicacion" id="nuevaFecPublicacion" />
                </div>
            </div>
              <div class="row">
                <div class="col-md-12">
                  <label>Nuevo artista</label>
                  <select
                    id="catArtistaDelegate"
                    name="artista"
                    required="true"
                    class="form-control"
                    style="width: 100%"
                  ></select>
                  <script>
                    $(document).ready(function () {
                      $('#catArtistaDelegate').select2({ allowClear: false });
                      $.getJSON('/springform/artistaFilter', function (result) {
                        $.each(result, function () {
                          $('#catArtistaDelegate').append(
                            new Option(this.name, this.value),
                          );
                        });
                        $('#catArtistaDelegate').val('null').trigger('change');
                      });
                    });
                  </script>                  
                </div>
            
            <div class="modal-footer">
              <a href="${pageContext.request.contextPath}/albums" title="Albums"
                ><button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal"
                  >Cancelar</button
                ></a
              >
              <button
                id="btn-update"
                type="submit"
                class="btn btn-success waves-effect waves-light save-category"
                >Actualizar</button
              >
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
