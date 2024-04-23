<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="${rootPath }/static/css/gallery.css?2024-04-22-002" />
<link rel="stylesheet"
	href="${rootPath }/static/css/gallery_list.css?2024-04-23-002" />

<section class="gallery">
	<article class="gallery">
		<a href="${rootPath }/gallery/insert">이미지 업로드</a>
	</article>

	<article class="gallery">

		<c:forEach items="${GALLERYS }" var="GA">
			<div class="gallery card">
				<img src="${GA.g_image} "
					alt="${GA.g_subject }" width="200px" />
				<div>
					<p>${GA.g_subject}</p>
				</div>
			</div>
		</c:forEach>

	</article>


</section>