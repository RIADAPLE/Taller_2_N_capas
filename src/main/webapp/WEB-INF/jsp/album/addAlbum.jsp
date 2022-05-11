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
          var formAlbum = $('#formAlbum');

          formAlbum.submit(function (event) {
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
                console.log(formAlbum.serialize());
                if (isConfirm) {
                  $.ajax({
                    data: formAlbum.serialize(),
                    url: '${pageContext.request.contextPath}/saveAlbum',
                    type: 'POST',
                    success: function (response) {
                      swal('Guardado!', 'Su registro se guardo exitosamente.', 'success');
                      $("button[data-dismiss='modal']").click();
                      formAlbum.trigger('reloadGrid');
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
        <p class="loader__label">Album</p>
      </div>
    </div>
    <div id="main-wrapper">
      <div class="container album-page">
        <div class="row align-items-center">
          <form role="form" id="formAlbum" data-toggle="validator">
            <div class="row album-title">
              <h2>Formulario de album</h2>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label class="control-label">Nombre</label>
                <input class="form-control" required="true" type="text" name="nombre" id="nombre" />
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label class="control-label">Canci&oacute;n m&aacute;s popular</label>
                <input class="form-control" type="text" name="cancion" id="cancion" />
              </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                  <label class="control-label">A&ntilde;o de publicaci&oacute;n</label>
                  <input class="form-control" type="date" name="anio" id="anio" />
                </div>
            </div>
              <div class="row">
                <div class="col-md-6">
                  <label>Artista</label>
                  <select
                    id="catArtistaDelegate"
                    name="artista.idArtista"
                    required="true"
                    class="form-control"
                    style="width: 100%"
                  ></select>
                  <script>
                    $(document).ready(function () {
                      $('#catArtistaDelegate').select2({ allowClear: false });
                      $.getJSON('/springform/cbofilterArtista', function (result) {
                        $.each(result, function () {
                          $('#catArtistaDelegate').append(
                            new Option(this.description, this.value),
                          );
                        });
                        $('#catArtistaDelegate').val('null').trigger('change');
                      });
                    });
                  </script>                  
                </div>
            
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal"
                >Cancelar</button
              >
              <button
                id="btn-save"
                type="submit"
                class="btn btn-success waves-effect waves-light save-category"
                >Guardar</button
              >
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
