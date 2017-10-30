<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
        <link rel="stylesheet" href="<c:url value='styles/notes.css' />" />
    </head>
    <body>
        <h1>Manage Note</h1>
        <h2>Note</h2>
        <p>${errorMessage}</p>
        <table>
            <tr>
                <th>Note ID</th>
                <th>Date Created</th>
                <th>Contents</th>
            </tr>
            <%--change to notes--%>
            <c:forEach var="note" items="${notes}">
                <tr>
                    <td>${note.noteId}</td>
                    <td>${note.dateCreated}</td>
                    <td>${note.contents}</td>
                    <td>
                        <form action="Note" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="noteId" value="${note.noteId}">
                        </form>
                    </td>
                    <td>
                        <form action="Note" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="noteId" value="${note.noteId}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <c:if test="${noteId == null}">
            <h3>Add Note</h3>
            <form action="Note" method="POST">
                Contents: <input type="text" name="contents"><br>
                <input type="hidden" name="action" value="add">
                <input type="submit" value="Add">
            </form>
        </c:if>
        <c:if test="${noteId != null}">
            <h3>Edit User</h3>
            <form action="Note" method="POST">
                Contents: <input type="text" name="contents" value="${noteId.contents}"><br>
                        <input type="hidden" name="action" value="edit">
                        <input type="hidden" name="noteId" value="${noteId.noteId}">
                <input type="submit" value="Save">
            </form>
        </c:if>
    </body>
</html>
