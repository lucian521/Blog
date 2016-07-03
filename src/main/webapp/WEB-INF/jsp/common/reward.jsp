<%--
  Created by IntelliJ IDEA.
  User: You
  Date: 2016/6/22
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE Html>
<html>
<head>
    <jsp:include page="head.jsp" flush="false" />
</head>
<body>
<%@include file="header.html" %>
<div id="content" class="clearfix">
    <div id="left_col" class="clearfix">
        <jsp:include page="rewardcontent.jsp" flush="false" />

        <div id="comments_wrapper">
            <div id="comment_header" class="clearfix">
                <span class="comments_right">评论 (${post.ccount})</span>
            </div>
            <div id="comments">
                <div id="comment_area">
                    <c:choose>
                        <c:when test="${comments==null || fn:length(comments)==0}">
                            <ol class="commentlist"><li id="nocomment" class="comment"><div class="comment-content"><p>暂无评论</p></div></li></ol>
                        </c:when>
                        <c:otherwise>
                            <jsp:include page="comments_list.jsp" flush="false" />
                        </c:otherwise>
                    </c:choose>
                </div>
                <jsp:include page="comments_form.jsp" flush="false" />
            </div>
        </div>
        <div id="previous_next_post">
            <div class="clearfix">
                <c:if test="${prev!=null}"><p id="prev_post"><a href="${prev.id}">${prev.title}</a></p></c:if>
                <c:if test="${next!=null}"><p id="next_post"><a href="${next.id}">${next.title}</a></p></c:if>
            </div>
        </div>
    </div>
    <div id="post_mask"></div>
    <div id="right_col">
        <div id="introduction_widget" class="side_widget clearfix">
            <h3 class="headline">About</h3>
            <ul id="social_link">
                <li class="rss_button"><a target="_blank" href="${g.domain}/feed"></a></li>
                <li class="github_button"><a target="_blank" href="https://github.com/lucian521"></a></li>
            </ul>
            <p>You can show your site introduction by using Site Introduction Widget.
                You also can show Social Icon on upper part, and search form at bottom. </p>
            <div id="search_area" class="clearfix">
                <form method="get" action="${g.domain}">
                    <div class="search_input">
                        <input type="text" autocomplete="off" name="word" placeholder="搜索一下" />
                    </div>
                    <div class="search_button">
                        <input type="submit" value="Search" />
                    </div>
                </form>
            </div>
        </div>
        <%@include file="recent.html" %>
        <%@include file="tagcloud.html" %>
        <%@include file="archive.html" %>
        <%@include file="link.html" %>
    </div>
    <jsp:include page="footer.jsp" flush="false" />
</div>
</body>
</html>

