<%@page isELIgnored="false" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>理工扶贫超市</title>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/sort.js"></script>
  <script src="${pageContext.request.contextPath}/js/holder.js"></script>
  <!-- 	<script>
          $(document).ready(function(){
              $(".list-group-item").hover(function(){
                  $(this).children("div.sort-detail").show();
              },function(){
                  $(this).children("div.sort-detail").hide();
              });
          })
      </script> -->
  <script>
    /*$(document).ready(function () {
        $(".data-item-li").children("div").addClass("to-big");
    });*/
  </script>
</head>
<body>
<div id="main" class="container">
  <div id="header">
    <%@ include file="header.jsp" %>
    <!-- 旋转图 -->
    <div class="header-bottom">
      <div class="sort">
        <div class="sort-channel">
          <ul class="sort-channel-list list-group">
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=地方特产">地方特产</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国">兴国</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国薯粉丝">兴国薯粉丝</a>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国纯天然山茶油">兴国纯天然山茶油</a>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国薯粉">兴国薯粉</a>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国手工鱼丝">兴国手工鱼丝</a>
                    <a href="${pageContext.request.contextPath}/category?cate=兴国南瓜花">兴国南瓜花</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=齐云山">齐云山</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=齐云山酸枣糕">齐云山酸枣糕</a>
                    <a href="${pageContext.request.contextPath}/category?cate=南瓜酱">南瓜酱</a>
                    <a href="${pageContext.request.contextPath}/category?cate=辣椒酱">辣椒酱</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=崇义">崇义</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=崇义自家大米">崇义自家大米</a>

                    <a href="${pageContext.request.contextPath}/category?cate=崇义井冈蜜柚">崇义井冈蜜柚 </a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤">崇贤</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤纯手工豆腐渣干">崇贤纯手工豆腐渣干</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤蒸晒米粉辣椒">崇贤蒸晒米粉辣椒</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤花生饼">崇贤花生饼 </a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤野生蜂蜜">崇贤野生蜂蜜</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇义自家大米">崇贤豆饼</a>

                  </dd>
                </dl>
              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=特产">手工类</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=零食">零食</a>
                  </dt>
                  <dd>

                    <a href="${pageContext.request.contextPath}/category?cate=纯手工杨梅干">纯手工杨梅干</a>

                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=食品">食品</a>
                  </dt>
                  <dd><a href="${pageContext.request.contextPath}/category?cate=河鱼干">河鱼干</a>

                    <a href="${pageContext.request.contextPath}/category?cate=方太手工腐竹">方太手工腐竹</a>
                    <a href="${pageContext.request.contextPath}/category?cate=纯天然花生油">纯天然花生油</a>
                    <a href="${pageContext.request.contextPath}/category?cate=枫边腊鸭">枫边腊鸭</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤野生蜂蜜">崇贤野生蜂蜜</a>
                  </dd>
                </dl>

              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=蔬菜类">蔬菜类</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=覆笥山冬笋">覆笥山冬笋
                    </a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=西红柿">西红柿</a>
                    <a href="${pageContext.request.contextPath}/category?cate=白菜">白菜</a>
                    <a href="${pageContext.request.contextPath}/category?cate=土豆">土豆</a>
                    <a href="">--</a>
                  </dd>
                </dl>
              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=水果类">水果类</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=时令水果">时令水果</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=香蕉">香蕉</a>
                    <a href="${pageContext.request.contextPath}/category?cate=猕猴桃">野生猕猴桃</a>
                    <a href="${pageContext.request.contextPath}/category?cate=桔子">桔子</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=特色水果">特色水果</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=赣南脐橙">赣南脐橙</a>
                    <a href="${pageContext.request.contextPath}/category?cate=柚子">崇义井冈蜜柚 </a>
                  </dd>
                </dl>
              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=农家系列">农家系列</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=自种菜干">自种菜干</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=自种黄豆">自种黄豆</a> <a
                      href="${pageContext.request.contextPath}/category?cate=农家菜干">农家菜干</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=女装">纯手工</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=农家米酒酿">农家米酒酿</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤纯手工豆腐渣干">崇贤纯手工豆腐渣干</a>
                    <a href="${pageContext.request.contextPath}/category?cate=崇贤蒸晒米粉辣椒">崇贤蒸晒米粉辣椒</a>
                    <a href="${pageContext.request.contextPath}/category?cate=农家晒制辣椒酱">农家晒制辣椒酱</a>
                  </dd>
                </dl>


              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=家禽蛋类">家禽蛋类</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=蛋类">蛋类</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=绿壳鸡蛋">绿壳鸡蛋</a> <a
                      href="${pageContext.request.contextPath}/category?cate=鸭蛋">鸭蛋</a> <a
                      href="${pageContext.request.contextPath}/category?cate=农家咸鸭蛋">农家咸鸭蛋</a> <a
                      href="${pageContext.request.contextPath}/category?cate=农家土鸡/鸭蛋">农家土鸡/鸭蛋</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=手表">板鸭</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=枫边腊鸭">枫边腊鸭</a>
                  </dd>
                </dl>
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=饰品">鱼类</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=河鱼干">河鱼干</a>

                    <a href="${pageContext.request.contextPath}/category?cate=兴国手工鱼丝">兴国手工鱼丝</a>

                  </dd>
                </dl>
              </div>
            </li>
            <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=其他">其他</a>
              <div class="sort-detail">
                <dl class="dl-hor">
                  <dt>
                    <a href="${pageContext.request.contextPath}/category?cate=暂无">暂无</a>
                  </dt>
                  <dd>
                    <a href="${pageContext.request.contextPath}/category?cate=--">--</a> <a
                      href="${pageContext.request.contextPath}/category?cate=--">--</a> <a
                      href="${pageContext.request.contextPath}/category?cate=--">--</a>

                  </dd>
                </dl>
              </div>
            </li>

          </ul>
        </div>
      </div>
      <%--轮播图--%>
      <div id="mycarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="item active">
            <img style="margin-left: auto" src="${pageContext.request.contextPath}/image/bar4.png" alt="">
          </div>

          <div class="item">
            <img style="margin-left: auto" src="${pageContext.request.contextPath}/image/bar2.png" alt="">
          </div>
          <div class="item">
            <img style="margin-left: auto" src="${pageContext.request.contextPath}/image/bar1.png" alt="">
          </div>
          <div class="item">
            <img style="margin-left: auto" src="${pageContext.request.contextPath}/image/bar3.png" alt="">
          </div>
        </div>

        <ol class="carousel-indicators">
          <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
          <li data-target="#mycarousel" data-slide-to="1"></li>
          <li data-target="#mycarousel" data-slide-to="2"></li>
          <li data-target="#mycarousel" data-slide-to="3"></li>
        </ol>

        <a class="left carousel-control" href="#mycarousel" role="button"
           data-slide="prev" style="display: none;"> <span
            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a> <a class="right carousel-control" href="#mycarousel" role="button"
                data-slide="next" style="display: none;"> <span
          class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      </div>
      <div class="clear-float"></div>
    </div>
  </div>


  <div class="content">
    <%--内容区域 mainController返回的内容--%>
    <%--//地方特产--%>
    <c:if test="${!empty localGoods}">
      <div class="module">
        <div class="hd">
          <h2>地方特产</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${localGoods}" var="localGoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${localGoods.goodsid}"> <img
                        src="/dataResourceImages/${localGoods.imagePaths[0].path}" alt=""
                        width="200" height="200">
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${localGoods.goodsid}">${localGoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${localGoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${localGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${localGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!localGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${localGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>

              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty manuGoods}">
      <div class="module">
        <div class="hd">
          <h2>手工类</h2>
          <hr>
        </div>
        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${manuGoods}" var="manuGoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${manuGoods.goodsid}"><img
                        src="/dataResourceImages/${manuGoods.imagePaths[0].path}" alt=""
                        width="200" height="200"/>
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${manuGoods.goodsid}">${manuGoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${manuGoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${manuGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${manuGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!manuGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${manuGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>


              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty digGoods}">
      <div class="module">
        <div class="hd">
          <h2>蔬菜类</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${digGoods}" var="goods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}"><img
                        src="/dataResourceImages/${goods.imagePaths[0].path}" alt=""
                        width="200" height="200"/>
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">${goods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${goods.price}</b>
                  </div>
                  <div>
                    <c:if test="${goods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${goods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!goods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${goods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>


              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty houseGoods}">
      <div class="module">
        <div class="hd">
          <h2>水果类</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${houseGoods}" var="housegoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${housegoods.goodsid}"> <img
                        src="/dataResourceImages/${housegoods.imagePaths[0].path}" alt=""
                        width="200" height="200">
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${housegoods.goodsid}">${housegoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${housegoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${housegoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${housegoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!housegoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${housegoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>

              <div class="clear-float" style="clear: both;"></div>
            </ul>

          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty colGoods}">
      <div class="module">
        <div class="hd">
          <h2>农家系列</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${colGoods}" var="colgoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}"> <img
                        src="/dataResourceImages/${colgoods.imagePaths[0].path}" alt=""
                        width="200" height="200">
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}">${colgoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${colgoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${colgoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${colgoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!colgoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${colgoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>

              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty bookGoods}">
      <div class="module">
        <div class="hd">
          <h2>家禽蛋类</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${bookGoods}" var="bookgoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}"> <img
                        src="/dataResourceImages/${bookgoods.imagePaths[0].path}" alt=""
                        width="200" height="200">
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}">${bookgoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${bookgoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${bookgoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${bookgoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!bookgoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${bookgoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                  </div>
                </li>
              </c:forEach>

              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
    <c:if test="${!empty otherGoods}">
      <div class="module">
        <div class="hd">
          <h2>其他</h2>
          <hr>
        </div>

        <div class="bd">
          <div class="data">
            <ul>
              <c:forEach items="${otherGoods}" var="otherGoods">
                <li class="data-item-li">
                  <div class="to-big">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${otherGoods.goodsid}"> <img
                        src="/dataResourceImages/${otherGoods.imagePaths[0].path}" alt=""
                        width="200" height="200">
                    </a>
                  </div>
                  <p class="text-right">
                    <a href="${pageContext.request.contextPath}/detail?goodsid=${otherGoods.goodsid}">${otherGoods.goodsname}</a>
                  </p>
                  <div class="text-right">
                    <b>￥${otherGoods.price}</b>
                  </div>
                  <div>
                    <c:if test="${otherGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart btn btn-default"
                          data-id="${otherGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                    <c:if test="${!otherGoods.fav}">
                      <button
                          class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                          data-id="${otherGoods.goodsid}"
                          style="display: none;"></button>
                    </c:if>
                  </div>
                </li>
              </c:forEach>
              <div class="clear-float" style="clear: both;"></div>
            </ul>
          </div>
        </div>
      </div>
    </c:if>
  </div>
</div>
</body>
</html>


