<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/jsp/include-css.jsp" %> <%@include file="/WEB-INF/jsp/include-js.jsp"
    %>
    <style>
      .menu-page {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 24px;

        padding: 24px;

        width: 100%;
        min-height: 100vh;
      }

      .menu-page a button {
        padding: 8px;
        border-radius: 4px;

        background-color: #e5e7eb;

        cursor: pointer;
      }

      .menu-page a button:hover {
        background-color: #d1d5db;
      }

      .menu-page a {
        color: black;
      }
    </style>
  </head>
  <body class="skin-megna fixed-layout">
    <div class="menu-page">
      <a href="${pageContext.request.contextPath}/artists" title="Artistas"
        ><button>Artistas</button></a
      >
      <a href="${pageContext.request.contextPath}/albums" title="Albums">
        <button> Albums </button>
      </a>
    </div>
  </body>
</html>
