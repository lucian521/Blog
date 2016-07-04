<%--
  Created by IntelliJ IDEA.
  User: You
  Date: 2016/6/23
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/shiro-function.tld" prefix="sf" %>

<c:if test="${post.type=='post'}">
    <div id="bread_crumb">
        <ul class="clearfix">
            <li><a title="首页" href="${g.domain}">首页</a></li>
            <li><a href="${g.domain}/categorys/${post.category.name}">${post.category.name}</a></li>
            <li class="last">${post.title}</li>
        </ul>
    </div>
</c:if>
<div class="post_wrap clearfix">
    <div class="post">
        <h3 class="title"><span>${post.title}</span></h3>
        <div class="post_content">
            <c:choose>
                <c:when test="${!sf:isUser()&&post.pstatus=='secret'}">由于作者设置了权限，你没法阅读此文，请与作者联系</c:when>
                <c:otherwise>
                    ${post.content}

                <h1 class="headline" align="center"> 大爷打赏 </h1><br><br><br>
                <h3 class="headline"> 各位大爷：<br><br>大老爷们，有钱的捧个钱场，没钱的捧个人场，100万不多，8分不少，觉得喜欢随便打赏，不喜欢就踩两脚。
                    <br><br>两种打赏方式：见下图 扫一扫</h3>
                    <div class="lanrenzhijia">
                        <div class="title cf">
                            <h2 class="fl"></h2>
                            <ul class="title-list fr cf ">
                                <li class="on">￥1.22</li>
                                <li>￥2.36</li>
                                <li>￥5.08</li>
                                <li>土豪</li>
                                <p><b></b></p>
                            </ul>
                        </div>
                        <div class="product-wrap">
                            <!--案例1-->
                            <div class="product show">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/wx122.png">
                                        <p class="mt10">打赏 1.22元</p>
                                    </li>
                                </ul>
                            </div>

                            <!--案例2-->
                            <div class="product">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/wx236.png">
                                        <p class="mt10">打赏 2.36元</p>
                                    </li>
                                </ul>
                            </div>
                            <!--案例3-->
                            <div class="product">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/wx508.png">
                                        <p class="mt10">打赏 5.08元</p>
                                    </li>

                                </ul>

                            </div>
                            <!--案例4-->
                            <!--案例5-->
                            <div class="product">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/wxzdy.png">
                                        <p class="mt10">我是土豪，我看心情   </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="pre">
                                <div class="pre1"></div>
                                <div class="pre2"></div>

                            </div>

                            <div class="sao" >
                                <div class="textfont2">扫一扫</div>
                                <div   class="img2">
                                    <img src="${g.domain}/resource/img/reward/wxtitle.png">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="lanrenzhijiazfb">
                        <div class="titlezfb cf">
                            <h2 class="fl"></h2>
                            <ul class="titlezfb-list fr cf ">
                                <li class="on"><h2>￥1.22</h2></li>
                                <li><h2>￥2.36</h2></li>
                                <li><h2>￥5.08</h2></li>
                                <li><h2>土豪</h2></li>
                                <p><b></b></p>
                            </ul>
                        </div>
                        <div class="productzfb-wrap">
                            <!--案例1-->
                            <div class="productzfb show">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/zfb122.png">
                                        <p class="mt10">打赏 1.22元</p>
                                    </li>
                                </ul>
                            </div>

                            <!--案例2-->
                            <div class="productzfb">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/zfb236.png">
                                        <p class="mt10">打赏 2.36元</p>
                                    </li>
                                </ul>
                            </div>
                            <!--案例3-->
                            <div class="productzfb">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/zfb508.png">
                                        <p class="mt10">打赏 5.08元</p>
                                    </li>

                                </ul>

                            </div>
                            <!--案例4-->
                            <!--案例5-->
                            <div class="productzfb">
                                <ul class="cf">
                                    <li class="ml0"> <img src="${g.domain}/resource/img/reward/zfbzdy.png">
                                        <p class="mt10">我是土豪，我看心情   </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="pre">
                                <div class="pre1"></div>
                                <div class="pre2"></div>

                            </div>

                            <div class="sao" >
                                <div class="textfont2">扫一扫</div>
                                <div   class="img2">
                                    <img src="${g.domain}/resource/img/reward/zfbtitle.png">
                                </div>
                            </div>
                        </div>
                    </div>


                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="meta">
        <ul>
            <li class="post_date clearfix">
                <span class="date"><fmt:formatDate value="${post.createTime}" pattern="dd" /></span>
                <span class="month"><fmt:formatDate value="${post.createTime}" pattern="MMM"/></span>
                <span class="year"><fmt:formatDate value="${post.createTime}" pattern="yyyy" /></span>
            </li>

        </ul>
    </div>
</div>
