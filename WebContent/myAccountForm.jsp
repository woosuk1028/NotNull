<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        #_next{margin-left: 10%;margin-top: 15px;}
        #menu{
           width: 15% ;height: 300px;
       }
       #myAcoount{width: 100px;height: 30px;}
       #_next .sc{text-align: center;}
       .list{font-size: 13px;}
       li{list-style: none;}
       
       .list .list_text{padding-bottom: 40px;}
       .sc{padding-bottom: 20px;}
        #_next{padding-top:100px; padding-left:50px;}
        .list{padding-top:50px;}
        .list .libox{width:150px;}
        
                /*구매리스트*/
        .wrap {
            width: 900px;
            height: 270px;
            border: 2px solid black;
            position: absolute;
            border-radius: 8px;
            top: 260px;
            right: 450px;
           
        }

        .img {
            width: 180px;
            height: 180px;
            position: absolute;
            left: 60px;
            top: 60px;
            border: 1px solid gray;
        }

        .orderDate {
            width: 180px;
            height: 30px;
            position: absolute;
            background-color: white;
            top: 20px;
            left: 60px;
            border: 1px solid gray;
        }

        .productName {
            width: 400px;
            height: 150px;
            background-color: white;
            position: absolute;
            top: 80px;
            left: 280px;
            border: 1px solid gray;
        }

        .shipCheck {
            width: 140px;
            height: 25px;
            background-color: black;
            position: absolute;
            top: 77.5px;
            right: 40px;
            text-align: center;
            color: white;
        }

        .refund {
            width: 140px;
            height: 25px;
            position: absolute;
            top: 127.5px;
            right: 40px;
            text-align: center;
            background-color: black;
            color: white;
        }

        .review {
            width: 140px;
            height: 25px;
            position: absolute;
            top: 177.5px;
            right: 40px;
            text-align: center;
            background-color: black;
            color: white;
        }
        .wrap div a{color: white;}
    </style>
</head>
<body>
   <jsp:include page="top.jsp"></jsp:include>
    <section id="contents" class="contents">
        <div class="_next-wrap">
            <div id="_next">
                <h1 id="myAccount">My Account</h1>
                <div id="my_left-menu">
                    <div id="myMenu" class="left-menu">
                        <nav>
                            <div id="menu">
                                <div class="list">
                                    <ul>
                                        <div class="libox"><li class="list_text"><a href="#">주문목록/배송조회</a></li></div>
                                        <div class="libox"><li class="list_text"><a href="#">취소/반품/교환/활불 내역</a></li></div>
                                        <div class="libox"><li class="list_text"><a href="#">찜리스트</a></li></div>
                                        <div class="libox"><li class="list_text"><a href="#">할인쿠폰</a></li></div>
                                        <div class="libox"><li class="list_text"><a href="#">개인정보확인/수정</a></li></div>
                                        <div class="libox"><li class="list_text"><a href="#">문의하기</a></li></div>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>

            </div>
        </div>


<div></div>
    </section>
    <section id="contents">
        <div class="myOrderList">
            <div class="wrap">
                <div class="img"><img src="#" alt=""></div>
                <div class="orderDate">주문일</div>
                <div class="productName">상품명</div>
                <div class="shipCheck"><a href="checkShopping.jsp">배송조회</a></div>
                <div class="refund"><a href="requestRefund.jsp">교환환불신청</a></div>
                <div class="review"><a href="writeReview.jsp">리뷰작성</a></div>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>