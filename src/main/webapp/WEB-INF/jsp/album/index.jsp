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
        align-items: flex-end;
        gap: 24px;

        padding: 24px;

        width: 100%;
        min-height: 100vh;
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
        <p class="loader__label">ALBUM</p>
      </div>
    </div>
    <div class="artist-page">
      <a href="${pageContext.request.contextPath}/add-album" title="Albums">
        <button> Agregar album </button>
      </a>
    </div>
  </body>
</html>
