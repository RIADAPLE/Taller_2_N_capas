<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/jsp/include-css.jsp" %> <%@include file="/WEB-INF/jsp/include-js.jsp"
    %>
    <style>
      .album-page {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
        gap: 24px;

        padding: 24px;

        width: 100%;
        min-height: 100vh;
      }

      .album-buttons {
        display: flex;
        justify-content: space-between;
        align-items: center;

        width: 100%;
      }

      .album-page a button {
        padding: 8px;
        border-radius: 4px;

        background-color: #e5e7eb;

        cursor: pointer;
      }

      .album-page a button:hover {
        background-color: #d1d5db;
      }

      .album-page a {
        color: black;
      }
    </style>
  </head>
  <body class="skin-megna fixed-layout">
    <div class="preloader">
      <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">ALBUM</p>
      </div>
    </div>
    <div class="album-page">
      <div class="album-buttons">
        <a href="${pageContext.request.contextPath}/" title="Return">
          <button> Regresar </button>
        </a>
        <a href="${pageContext.request.contextPath}/add-album" title="Albums">
          <button> Agregar album </button>
        </a>
        <a href="${pageContext.request.contextPath}/delete-album" title="Delete">
          <button> Eliminar album </button>
        </a>
        <a href="${pageContext.request.contextPath}/update-album" title="Update">
          <button> Actualizar album </button>
        </a>
      </div>
      <table class="table table-striped table-dark">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Canci&oacute;n m&aacute;s popular</th>
            <th scope="col">Fecha de publicaci&oacute;n</th>
            <th scope="col">Nombre del artista</th>
          </tr>
        </thead>
        <tbody id="albumTableBody">
          <script>
            $(document).ready(function () {
              $.getJSON('/springform/showAlbums', function (result) {
                for (item of result) {
                  const tr = document.createElement('tr');
                  const th = document.createElement('th');
                  const td1 = document.createElement('td');
                  const td2 = document.createElement('td');
                  const td3 = document.createElement('td');
                  const td4 = document.createElement('td');

                  const idTextNode = document.createTextNode(item.id);
                  const nameTextNode = document.createTextNode(item.name);
                  const popularSongTextNode = document.createTextNode(item.mostPopularTrack);
                  const publicationDateTextNode = document.createTextNode(item.dateOfRelease);
                  const artistTextNode = document.createTextNode(item.artistName);

                  th.appendChild(idTextNode);
                  td1.appendChild(nameTextNode);
                  td2.appendChild(popularSongTextNode);
                  td3.appendChild(publicationDateTextNode);
                  td4.appendChild(artistTextNode);

                  tr.appendChild(th);
                  tr.appendChild(td1);
                  tr.appendChild(td2);
                  tr.appendChild(td3);
                  tr.appendChild(td4);

                  $('#albumTableBody').append(tr);
                }
              });
            });
          </script>
        </tbody>
      </table>
    </div>
  </body>
</html>
