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
          var formDeleteAlbum = $('#formDeleteAlbum');

          formDeleteAlbum.submit(function (event) {
            const albumId = formDeleteAlbum.serialize().toString().substring(6);
            const newUrl = '/deleteAlbum/' + albumId;

            swal(
              {
                title: '¿Esta seguro?',
                text: '¡Se borrara un registro!',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#5D9CEC',
                confirmButtonText: 'Sí, borrar registro!',
                cancelButtonText: 'No, cancelar!',
                closeOnConfirm: false,
                closeOnCancel: false,
              },
              function (isConfirm) {
                if (isConfirm) {
                  $.ajax({
                    data: albumId,
                    url: '${pageContext.request.contextPath}'+newUrl,
                    type: 'DELETE',
                    success: function (response) {
                      swal('Eliminado!', 'El registro se elimino exitosamente.', 'success');
                      $("button[data-dismiss='modal']").click();
                      formDeleteAlbum.trigger('reloadGrid');
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
        <p class="loader__label">Eliminar Album</p>
      </div>
    </div>
    <div id="main-wrapper">
      <div class="container album-page">
        <div class="row align-items-center">
          <form role="form" id="formDeleteAlbum" data-toggle="validator">
            <div class="row album-title">
              <h2>Formulario eliminar album</h2>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label>Album</label>
                <select
                  id="catAlbumDelegate"
                  name="album"
                  required="true"
                  class="form-control"
                  style="width: 100%"
                ></select>
                <script>
                  $(document).ready(function () {
                    $('#catAlbumDelegate').select2({ allowClear: false });
                    $.getJSON('/springform/albumFilter', function (result) {
                      $.each(result, function () {
                        $('#catAlbumDelegate').append(new Option(this.name, this.value));
                      });
                      $('#catAlbumDelegate').val('null').trigger('change');
                    });
                  });
                </script>
              </div>
            </div>
            <div class="modal-footer">
              <a href="${pageContext.request.contextPath}/albums" title="Albums"
                ><button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal"
                  >Cancelar</button
                ></a
              >
              <button
                id="btn-delete"
                type="submit"
                class="btn btn-success waves-effect waves-light save-category"
                >Eliminar</button
              >
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
