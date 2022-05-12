<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/jsp/include-css.jsp" %> <%@include file="/WEB-INF/jsp/include-js.jsp"
    %>
    <style>
      .artist-page {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
        gap: 24px;

        padding: 24px;

        width: 100%;
        min-height: 100vh;
      }

      .artist-buttons {
        display: flex;
        justify-content: space-between;
        align-items: center;

        width: 100%;
      }

      .artist-page a button {
        padding: 8px;
        border-radius: 4px;

        background-color: #e5e7eb;

        cursor: pointer;
      }

      .artist-page a button:hover {
        background-color: #d1d5db;
      }

      .artist-page a {
        color: black;
      }
    </style>
  </head>
  <body class="skin-megna fixed-layout">
    <div class="preloader">
      <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">ARTISTAS</p>
      </div>
    </div>
    <div class="artist-page">
      <div class="artist-buttons">
        <a href="${pageContext.request.contextPath}/" title="Return">
          <button> Regresar </button>
        </a>
        <a href="${pageContext.request.contextPath}/add-artist" title="Artist">
          <button> Agregar artista </button>
        </a>
        <a href="${pageContext.request.contextPath}/delete-artist" title="Delete">
          <button> Eliminar artista </button>
        </a>
        <a href="${pageContext.request.contextPath}/update-artist" title="Update">
          <button> Actualizar artista </button>
        </a>
      </div>
      <table class="table table-striped table-dark">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">G&eacute;nero</th>
            <th scope="col">Pa&iacute;s</th>
            <th scope="col">Discograf&iacute;a</th>
          </tr>
        </thead>
        <tbody id="artistsTableBody">
          <script>
            $(document).ready(function () {
              $.getJSON('/springform/showArtists', function (result) {
                for (item of result) {
                  const tr = document.createElement('tr');
                  const th = document.createElement('th');
                  const td1 = document.createElement('td');
                  const td2 = document.createElement('td');
                  const td3 = document.createElement('td');
                  const td4 = document.createElement('td');

                  const idTextNode = document.createTextNode(item.idArtista);
                  const nameTextNode = document.createTextNode(item.nombre);
                  const genderTextNode = document.createTextNode(item.genero);
                  const countryTextNode = document.createTextNode(item.pais);
                  const discographyTextNode = document.createTextNode(item.discografia);

                  th.appendChild(idTextNode);
                  td1.appendChild(nameTextNode);
                  td2.appendChild(genderTextNode);
                  td3.appendChild(countryTextNode);
                  td4.appendChild(discographyTextNode);

                  tr.appendChild(th);
                  tr.appendChild(td1);
                  tr.appendChild(td2);
                  tr.appendChild(td3);
                  tr.appendChild(td4);

                  $('#artistsTableBody').append(tr);
                }
              });
            });
          </script>
        </tbody>
      </table>
    </div>
  </body>
</html>
