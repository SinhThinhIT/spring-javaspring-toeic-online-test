<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>${postView.title}</title>
    <%@ include file="template/toeic/head.jsp"%>
    <link rel="stylesheet" href="/web/css/details.css">
</head>
<body>
<!-- Header -->
<%@ include file="template/toeic/header.jsp"%>
<!-- End Header -->
<!-- Blog Details Hero Section Begin -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 posts-list">
            <div class="comment-form">
                <h4>Comment Post: </h4>
                <form:form cssClass="form-contact comment_form" action="/users/edit?success" method="post"
                           modelAttribute="commentEdit">
                    <input name="id_comment" type="hidden" value="${commentEdit.id_comment}"/>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <form:textarea cssClass="form-control w-100" path="paragraph" cols="30" rows="9"
                                               placeholder="Write Comment"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">Comment</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>