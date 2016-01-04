<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
		
	<head>
		<title>강릉원주대학교 중앙도서관 - 통합검색</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
		<link type="text/css" href="../css/default.css" rel="stylesheet"/>
<link type="text/css" href="../css/mac_os_x.css" rel="stylesheet"/>
<link type="text/css" href="../css/google.css" rel="stylesheet" />
<link type="text/css" href="../css/modalbox.css" rel="stylesheet" />
<link type="text/css" href="../css/xq_contents.css" rel="stylesheet"/>
<link type="text/css" href="../css/protoFlow.css" rel="stylesheet"/>
<link type="text/css" href="../css/xq_ui.css" rel="stylesheet"/>
<link type="text/css" href="../css/etcUnity.css" rel="stylesheet"/>
<link type="text/css" href="../css/search.css" rel="stylesheet"/>
<link type="text/css" href="../css/dx3.css" rel="stylesheet"/>
<link type="text/css" href="../css/skin/blue/pyxis.css" rel="stylesheet"/>

<link rel="stylesheet" href="../site/gwnu/css/reset.css" type="text/css"/>
<link rel="stylesheet" href="../site/gwnu/css/common.css" type="text/css"/>
<link rel="stylesheet" href="../site/gwnu/css/sub.css" type="text/css"/>
	<link rel="stylesheet" href="../site/gwnu/css/pyxis.css" type="text/css"/>		<script language="javascript" type="text/javascript" src="../js/prototype.js"></script>
<script language="javascript" type="text/javascript" src="../js/scriptaculous.js"></script>
<script language="javascript" type="text/javascript" src="../js/builder.js"></script>
<script language="javascript" type="text/javascript" src="../js/effects.js"></script>
<script language="javascript" type="text/javascript" src="../js/dragdrop.js"></script>
<script language="javascript" type="text/javascript" src="../js/include.js"></script>
<script language="javascript" type="text/javascript" src="../js/pyxis.js"></script>
<script language="javascript" type="text/javascript" src="../js/common.js"></script>
<script language="javascript" type="text/javascript" src="../js/control.js"></script>
<script language="javascript" type="text/javascript" src="../js/modalbox.js"></script>
<script language="javascript" type="text/javascript" src="../js/window.js"></script>
<script language="javascript" type="text/javascript" src="../js/protoFlow.js"></script>
<script language="javascript" type="text/javascript" src="../js/search-detail.js"></script>
<script language="javascript" type="text/javascript" src="../js/lang/ko.js"></script>

<script type="text/javascript" src="../site/gwnu/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">var JQ = jQuery.noConflict();</script>
<script type="text/javascript" src="../site/gwnu/js/jquerySub.js"></script>
<script type="text/javascript" src="../site/gwnu/js/ui_search.js"></script>
<script type="text/javascript" src="../site/gwnu/js/ui.js"></script>	</head>
	
	<body>
		
		<div id="useKeyboard">
			<ul>
				<li><a href="#gnb">메뉴 바로가기</a></li>
				<li><a href="#containerWrap">내용 바로가기</a></li>
				<li><a href="#searchWrap">검색바로가기</a></li>
			</ul>
		</div> 
		
		<div id="Wrap">
			<div id="Header">
	<div class="top">
		<h1><a href="../index.ax">강릉원주대학교 도서관</a></h1>
		<ul>
			<li class="home first"><a href="../index.ax">HOME</a></li>
			<li class="alogin"><a href="http://sso.gwnu.ac.kr" target="_blank">통합로그인</a></li>
			<li class="hlink"><a href="https://www.gwnu.ac.kr" target="_blank">강릉원주대학교</a></li>
			<li class="oneju"><a href="http://iskul.gwnu.ac.kr/wonju/index.ax" target="_blank">원주캠퍼스 도서관</a></li>
			<li class="sitemap"><a href="../guide/Static.ax?page=Sitemap">SITEMAP</a></li>
											<li class="logout"><a href="../identity/Logoff.ax">로그아웃</a></li>
										
		</ul>
	</div>
</div>

<div id="Gnb">
	<div class="gnbWrap">
		<ul>
			<li class="m1"><a href="../search/Search.ax?sid=1">소장자료검색</a>
				<ul class="subm">
					<li class="mt10"><a href="../search/Search.ax?sid=1">통합검색</a></li>
					<li><a href="../search/Search.ax?sid=2">단행본</a></li>
					<li><a href="../search/Search.ax?sid=3">연속간행물</a></li>
					<li><a href="../search/Search.Result.ax?sid=4&mf=true&nd=30">신착자료</a></li>
					<li><a href="../search/Search.ax?sid=5">학위논문</a></li>
					<li><a href="../search/Search.ax?sid=6">비도서</a></li>
					<li><a href="../search/Search.Result.ax?sid=7">DVD &amp; 블루레이</a></li>
				</ul>
			</li>
			<li class="m2"><a href="../guide/Static.ax?page=Sub0202_01">전자정보검색</a>
				<ul class="subm">
					<li><a href="../guide/Static.ax?page=MetaSearch">메타검색</a></li>
					<li><a href="../guide/Static.ax?page=Sub0202_01">학술DB</a></li>
					<li><a href="../guide/Static.ax?page=Sub0203_01">e-Journal</a></li>
					<li><a href="../guide/Static.ax?page=Sub0204_01">e-Book</a></li>
					<li><a href="../guide/Static.ax?page=Sub0205">AudioBook</a></li>
					<li><a href="../guide/Static.ax?page=Sub0206">e-Learning</a></li>
					<li><a href="../guide/Static.ax?page=Sub0207">전자잡지</a></li>
					<li><a href="../guide/Static.ax?page=Sub0208">Newspaper</a></li>
					<li><a href="../guide/Static.ax?page=Trial">Trial</a></li>
					<li><a href="../guide/Static.ax?page=Sub0210">전자자료교외접속</a></li>
				</ul>
			</li>
			<li class="m3"><a href="../mylibrary/Circulation.ax">MY LIBRARY</a>
				<ul class="subm">
					<li><a href="../mylibrary/Circulation.ax">대출조회/연장</a></li>
					<li><a href="../mylibrary/MyCollection.ax">나의폴더</a></li>
					<li><a href="../mylibrary/SDI.Main.ax">SDI 서비스</a></li>
					<li><a href="../mylibrary/Request.ax">희망도서신청</a></li>
					<li><a href="../mylibrary/Libmail.ax">개인연락사항</a></li>
					<li><a href="../mylibrary/UserDetail.ax">개인정보관리</a></li>
					<li><a href="../mylibrary/PreReq.Main.ax">우선정리 신청조회</a></li>
					<li><a href="../mylibrary/CampusInterlibLoan.ax">캠퍼스간 상호대차조회</a></li>
				</ul>	
			</li>
			<li class="m4"><a href="../bbs/Bbs.ax?bbsID=1">게시판</a>
				<ul class="subm">
					<li><a href="../bbs/Bbs.ax?bbsID=1">공지사항</a></li>
					<li><a href="../bbs/Bbs.ax?bbsID=2">공개자료실</a></li>
					<li><a href="../bbs/Bbs.ax?bbsID=3">자주하는 질문</a></li>
					<li><a href="../bbs/Bbs.ax?bbsID=4">도서관의견함</a></li>
					<li><a href="../bbs/Bbs.ax?bbsID=5">취업정보</a></li>
				</ul>
			</li>
			<li class="m5"><a href="../guide/Static.ax?page=Sub0501_01">이용자서비스</a>
				<ul class="subm">
					<li><a href="../guide/Static.ax?page=Sub0501_01">상호대차</a></li>
					<li><a href="../guide/Static.ax?page=Sub0502">교수연구지원</a></li>
					<li><a href="../guide/Static.ax?page=Sub0503">도서관열람증발급</a></li>
					<li><a href="../guide/Static.ax?page=Sub0504_01">시설물예약</a></li>
					<li><a href="../guide/Static.ax?page=Sub0505">타기관열람신청</a></li>
					<li><a href="../guide/Static.ax?page=Sub0506">복사/스캔/프린트이용</a></li>
				</ul>
			</li>
			<li class="m6"><a href="../guide/Static.ax?page=Sub0601_01">도서관안내</a>
				<ul class="subm">
					<li><a href="../guide/Static.ax?page=Sub0601_01">도서관소개</a></li>
					<li><a href="../guide/Static.ax?page=Sub0602_01">도서관이용</a></li>
					<li><a href="../guide/Static.ax?page=Sub0603">실별안내</a></li>
					<li><a href="../guide/Static.ax?page=Sub0604">자료기증</a></li>
					<li><a href="../guide/Static.ax?page=Sub0606">모바일도서관</a></li>
					<li><a href="../guide/Static.ax?page=Sub0605">찾아오시는길</a></li>
				</ul>	
			</li>
		</ul>
		<div class="menu_arrow"></div>
		<a href="javascript:allMenuView()" class="all">전체메뉴</a>
		<div id="Overview" style="display:none;">	
			<ul class="a_search">
				<li><a href="../search/Search.ax?sid=1">통합검색</a></li>
				<li><a href="../search/Search.ax?sid=2">단행본</a></li>
				<li><a href="../search/Search.ax?sid=3">연속간행물</a></li>
				<li><a href="../search/Search.Result.ax?sid=4&mf=true&nd=30">신착자료</a></li>
				<li><a href="../search/Search.ax?sid=5">학위논문</a></li>
				<li><a href="../search/Search.ax?sid=6">비도서</a></li>
				<li><a href="../search/Search.ax?sid=7">DVD &amp; 블루레이</a></li>
			</ul>
			<ul class="a_eres">
				<li><a href="#">메타검색</a></li>
				<li><a href="../guide/Static.ax?page=Sub0202_01">학술DB</a>
					<ul class="dep3">
						<li><a href="#">국내DB</a></li>
						<li><a href="#">국외DB</a></li>
					</ul>
				</li>
				<li><a href="../guide/Static.ax?page=Sub0203_01">e-Journal</a></li>
				<li><a href="../guide/Static.ax?page=Sub0204_01">e-Book</a></li>
				<li><a href="../guide/Static.ax?page=Sub0205">AudioBook</a></li>
				<li><a href="../guide/Static.ax?page=Sub0206">e-Learning</a></li>
				<li><a href="../guide/Static.ax?page=Sub0207">전자잡지</a></li>
				<li><a href="../guide/Static.ax?page=Sub0208">Newspaper</a></li>
				<li><a href="../guide/Static.ax?page=Sub0209">Trial</a></li>
				<li><a href="../guide/Static.ax?page=Sub0210">전자자료교외접속</a></li>
			</ul>
			<ul class="a_my">
				<li><a href="../mylibrary/Circulation.ax">대출조회/연장</a></li>
				<li><a href="../mylibrary/MyCollection.ax">나의폴더</a></li>
				<li><a href="../mylibrary/SDI.Main.ax">SDI 서비스</a></li>
				<li><a href="../mylibrary/Request.ax">희망도서신청</a></li>
				<li><a href="../mylibrary/Libmail.ax">개인연락사항</a></li>
				<li><a href="../mylibrary/UserDetail.ax">개인정보관리</a></li>
				<li><a href="../mylibrary/PreReq.Main.ax">우선정리 신청조회</a></li>
				<li><a href="../mylibrary/CampusInterlibLoan.ax">캠퍼스간 상호대차조회</a></li>
			</ul>
			<ul class="a_bbs">
				<li><a href="../bbs/Bbs.ax?bbsID=1">공지사항</a></li>
				<li><a href="../bbs/Bbs.ax?bbsID=2">공개자료실</a></li>
				<li><a href="../bbs/Bbs.ax?bbsID=3">자주하는 질문</a></li>
				<li><a href="../bbs/Bbs.ax?bbsID=4">도서관의견함</a></li>
				<li><a href="../bbs/Bbs.ax?bbsID=5">취업정보</a></li>				
			</ul>
			<ul class="a_service">
				<li><a href="../guide/Static.ax?page=Sub0501_01">상호대차</a></li>
				<li><a href="../guide/Static.ax?page=Sub0502">교수연구지원</a></li>
				<li><a href="../guide/Static.ax?page=Sub0503">도서관열람증발급</a></li>
				<li><a href="../guide/Static.ax?page=Sub0504_01">시설물예약</a></li>
				<li><a href="../guide/Static.ax?page=Sub0505">타기관열람신청</a></li>
				<li><a href="../guide/Static.ax?page=Sub0506">복사/스캔/프린트이용</a></li>	
			</ul>
			<ul class="a_info">
				<li><a href="../guide/Static.ax?page=Sub0601_01">도서관소개</a></li>
				<li><a href="../guide/Static.ax?page=Sub0602_01">도서관이용</a></li>
				<li><a href="../guide/Static.ax?page=Sub0603_01">실별안내</a></li>
				<li><a href="../guide/Static.ax?page=Sub0604">자료기증</a></li>
				<li><a href="../guide/Static.ax?page=Sub0606">모바일도서관</a></li>
				<li><a href="../guide/Static.ax?page=Sub0605">찾아오시는길</a></li>
			</ul>																							
		</div>	
		<script>					
					function allMenuView(){
					if(jQuery("#Overview").css("display")=="none")
						jQuery("#Overview").css("display","block")
					else
						jQuery("#Overview").css("display","none")
					}
	 </script>		
	</div>
	
	<script>
		jQuery(document).ready(function(){
			jQuery(".gnbWrap > ul> li").hover(function(){
				
				jQuery(this).children("ul").stop().clearQueue().slideDown(300);
				jQuery(".menu_arrow").css("display","block")						
				if(jQuery(this).index()==0){
					jQuery(".menu_arrow").clearQueue().animate({"left":"93px"})
				}else if(jQuery(this).index()==1){
					jQuery(".menu_arrow").clearQueue().animate({"left":"286px"})
				}else if(jQuery(this).index()==2){
					jQuery(".menu_arrow").clearQueue().animate({"left":"465px"})
				}else if(jQuery(this).index()==3){
					jQuery(".menu_arrow").clearQueue().animate({"left":"635px"})
				}else if(jQuery(this).index()==4){
					jQuery(".menu_arrow").clearQueue().animate({"left":"815px"})
				}else {
					jQuery(".menu_arrow").clearQueue().animate({"left":"1000px"})
				}
			}, function(){
				jQuery(this).children("ul").stop().clearQueue().slideUp(300);
				jQuery(".menu_arrow").css("display","none")
			})

		})
	</script>
		
</div>				<div id="Contents">
					<div class="main2"></div>
					
					<div class="subcontentsWrap">
							









<div class="location">
	<span class="loca">HOME &gt; 소장자료검색 &gt; <span class="pink">통합검색</span></span>
</div>						<div class="subconWrap">
							<div class="left01">
	<h3 class="search">통합검색</h3>
	<ul>
		<li class=""><a href="../search/Search.ax?sid=1"><img src="../site/gwnu/images/left/lstit_0101_over.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.ax?sid=2"><img src="../site/gwnu/images/left/lstit_0102.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.ax?sid=3"><img src="../site/gwnu/images/left/lstit_0103.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.Result.ax?sid=4&mf=true&nd=30"><img src="../site/gwnu/images/left/lstit_0104.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.ax?sid=5"><img src="../site/gwnu/images/left/lstit_0105.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.ax?sid=6"><img src="../site/gwnu/images/left/lstit_0106.gif" alt=""/></a></li>
		<li class=""><a href="../search/Search.Result.ax?sid=7"><img src="../site/gwnu/images/left/lstit_0107.gif" alt=""/></a></li>
	</ul>	
</div>							<div class="subContents">
										









<image src="../site/gwnu/images/left/stit_0101.gif"/>								<div class="subcon">
									
<noscript>
<p>스크립트가 작동하지 않으면 사이트 일부 기능을 사용할수 없습니다.</p>
</noscript> 
<script language="javascript" type="text/javascript" src="../js/slider.js"></script>


	

<form name="frmSearch" id="frmSearch" method="get" action="../search/Search.Result.ax">
	<input type="hidden" id="sid" name="sid" value="1" /><!-- 서비스 ID -->
	<input type="hidden" id="q" name="q" value="" /><!-- 질의어 -->
	<input type="hidden" id="eq" name="eq" value="" /><!-- 질의어 EngineQuery -->
	<input type="hidden" id="mf" name="mf" value="false" /><!-- 멀티필드 여부 -->
	<input type="hidden" id="qt" name="qt" value="" /><!-- 질의어 텍스트 -->
	<input type="hidden" id="qf" name="qf" value="" /><!-- 이용자 입력 질의어 -->
	<input type="hidden" id="f" name="f" value='' /><!-- 필터 -->
	<input type="hidden" id="br" name="br" value="" /><!-- 기관코드 -->	
	<input type="hidden" id="cl" name="cl" value="" /><!-- 컨텐츠 유형 -->	
	<input type="hidden" id="gr" name="gr" value="" /><!-- 그룹ID(컨텐츠 유형) -->
	<input type="hidden" id="rl" name="rl" value="" /><!-- 수록정보 -->
	<input type="hidden" id="page" name="page" value="0" /><!-- 현재 페이지 -->
	<input type="hidden" id="pageSize" name="pageSize" value="0" /><!-- 페이지 크기 -->
	<input type="hidden" id="s" name="s" value="" /><!-- 정렬 필드 -->
	<input type="hidden" id="st" name="st" value="" /><!-- 정렬 방법-->
	<input type="hidden" id="h" name="h" value="" /><!-- 가나다 머릿글자 -->
	<input type="hidden" id="cr" name="cr" value="" /><!-- 생성일자 -->
	<input type="hidden" id="py" name="py" value="" /><!-- 발행년도 --> 
	<input type="hidden" id="subj" name="subj" value="" /><!-- 주제 -->	
	<input type="hidden" id="facet" name="facet" value="Y" /><!--Facet사용유무-->
	<input type="hidden" id="nd" name="nd" value="" /><!-- 신착자료 유형일때 기간선택으로 조회-->
	<input type="hidden" id="vid" name="vid" value="0" /><!-- 현재 보고 있는 보기유형 ID-->
	<input type="hidden" name="tabID" id="tabID" value="" />
	<input type="hidden" name="fv" id="fv" value="" />
	
	<input type="image" value="" alt="" style="display:none" />
</form>
<form name="frmOrg" id="frmOrg" action="Search.Result.ax" method="post" onsubmit="return goSubmitSearch();">
	<input type="hidden" name="sid" value="1" />
	<input type="hidden" name="tabID" value="" />
	<input type="hidden" name="mf" value="true" />
                    	        	    

    	<div class="width-full">
    	<div id="pageTab">
			<ul>
            									<li><a href="../search/Search.ax?sid=1&amp;interface_type=SIMPLE">간략</a></li> 
				                        									<li class="activeTab">상세</li>
				            
            			
												<li><a href="../search/Search.ax?sid=1&amp;interface_type=ABC">가나다</a></li> 
				            
            
						</ul>
		</div>
	</div>
	
   	<div class="width-full">
			

	<div align="left">
		<div class="searchDetail">
			
                        

<ul class="limit padding">
	<li class="noarrow">
    <span class="branch">소장기관 :  
		<select name="br" id="br" class="designBox" style="width:220px;" title="소장기관">
        	<option value="" >전체</option>
        	        		        			        			<option value="01"  selected="selected" >중앙도서관</option>
        			        		        			        			<option value="02" >원주캠퍼스</option>
        			        		        			        			<option value="03" >치의학분관</option>
        			        		        			</select>
	</span>
</li>
</ul>
			
			<ul class="limit padding">
                <li class="searchWord">
                    <span class="inputArea">
						<select name="item" class="designBox" title="검색항목">
                        	<option value="ALL">전체</option>
							                        																		<option value="TITL"  selected="selected" >서명</option>
								                        																		<option value="AUTH" >저자</option>
								                        																		<option value="PUBN" >출판사</option>
								                        																		<option value="CID" >컨텐츠번호</option>
								                        																		<option value="IDID" >등록번호</option>
								                        																		<option value="CA" >청구기호</option>
								                        																		<option value="ISSN" >ISSN</option>
								                        																		<option value="ISBN" >ISBN</option>
								                        	                          </select>
                          <input type="text" name="value" id="value1" onfocus="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" onmouseover="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" value="'검색어를 입력해 주시기 바랍니다.'" class="w350" title="검색어입력"/>
    					  <span class="operator">
        					  <select name="op" class="designBox" title="검색옵션">
                                	<option value="AND">AND</option>
                                	<option value="OR">OR</option>
                                	<option value="NOT">NOT</option>
                              </select>
    					  </span>
					</span>
        		  <div class="track" id="track11" title="검색가중치">
                        <div class="handle" id="handle11"></div>
                  </div>
				  <input type="text" name="weight" id="weight11" value="1" style='border:0; background-color:#ffffff;color:#ffffff' size="1" readonly="readonly" title="검색가중치"/>
                </li>
                <li class="slave">
                    <span class="inputArea"><select name="item" class="designBox" title="검색항목">
                        	<option value="ALL">전체</option>
							                        																		<option value="TITL" >서명</option>
								                        																		<option value="AUTH"  selected="selected" >저자</option>
								                        																		<option value="PUBN" >출판사</option>
								                        																		<option value="CID" >컨텐츠번호</option>
								                        																		<option value="IDID" >등록번호</option>
								                        																		<option value="CA" >청구기호</option>
								                        																		<option value="ISSN" >ISSN</option>
								                        																		<option value="ISBN" >ISBN</option>
								                        	                        </select>
                      <input type="text" name="value" id="value2"  class="w350" onfocus="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" onmouseover="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" value="'검색어를 입력해 주시기 바랍니다.'" title="검색어입력" />
					  <span class="operator">
						  <select name="op" class="designBox" title="검색옵션">
	                        	<option value="AND">AND</option>
	                        	<option value="OR">OR</option>
	                        	<option value="NOT">NOT</option>
	                      </select>
					  </span>
					 </span>
					 <div class="track" id="track22" title="검색가중치">
                     	<div class="handle" id="handle22">
                     </div>
                  </div>
				  <input type="text" name="weight" id="weight22" value="1" style='border:0; background-color:#ffffff;color:#ffffff;' size="1" readonly="readonly" title="검색가중치"/>
                </li>
                <li class="slave">
                    <span class="inputArea"><select name="item" class="designBox" title="검색옵션">
							<option value="ALL">전체</option>
							                        																		<option value="TITL" >서명</option>
								                        																		<option value="AUTH" >저자</option>
								                        																		<option value="PUBN"  selected="selected" >출판사</option>
								                        																		<option value="CID" >컨텐츠번호</option>
								                        																		<option value="IDID" >등록번호</option>
								                        																		<option value="CA" >청구기호</option>
								                        																		<option value="ISSN" >ISSN</option>
								                        																		<option value="ISBN" >ISBN</option>
								                        	                      </select>
                      <input type="text" name="value" id="value3" class="w350" onfocus="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" onmouseover="clearDefaultData(this, '검색어를 입력해 주시기 바랍니다.');" value="'검색어를 입력해 주시기 바랍니다.'" title="검색어입력"/>
                	  <span class="operator">
                	  	<img src="../images/spacer.gif" width="50" height="1" alt="검색" />
                	  </span>
					</span>
					<div class="track" id="track33" title="검색가중치">
                        <div class="handle" id="handle33"></div>
                  	</div>
				  <input type="text" name="weight" id="weight33" value="1" style='border:0; background-color:#ffffff;color:#ffffff;' size="1" readonly="readonly" title="검색가중치"/>
                </li>
			</ul>
			            
        		    		    		    					<input type="hidden" name="gr" id="gr" value="1 3 12 2 4 5 6 7 8 9 10 11 13 14 15 16 17 " />
	        	        	        	        							<div class="line"></div>
			<ul class="limit">
				<li>
					<!-- 수록정보 -->
					<span class="title">수록정보</span>
            		<span class="inputLimitArea">
            			<span class="searchLimitCheck">
            				<input type="checkbox" name="rl" id="rla" value="" checked="checked" onclick="selectCheck(this, true);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - 전체"/><label for="rla">전체</label>
						</span>
            								<span class="searchLimitCheck">	
            				<input type="checkbox" name="rl" id="rl1" value="1" onclick="selectCheck(this, false);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - 초록"/><label for="rl1">초록</label>
						</span>
											<span class="searchLimitCheck">	
            				<input type="checkbox" name="rl" id="rl2" value="2" onclick="selectCheck(this, false);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - 해제"/><label for="rl2">해제</label>
						</span>
											<span class="searchLimitCheck">	
            				<input type="checkbox" name="rl" id="rl3" value="3" onclick="selectCheck(this, false);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - 목차"/><label for="rl3">목차</label>
						</span>
											<span class="searchLimitCheck">	
            				<input type="checkbox" name="rl" id="rl4" value="4" onclick="selectCheck(this, false);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - URL"/><label for="rl4">URL</label>
						</span>
											<span class="searchLimitCheck">	
            				<input type="checkbox" name="rl" id="rl5" value="5" onclick="selectCheck(this, false);" onkeypress="if(event.keyCode == 13) {selectCheck(this, true)}" title="수록정보 - 원문"/><label for="rl5">원문</label>
						</span>
										</span>
        							</li>
			</ul>
			    	        	
			<div class="line"></div>
		    <ul class="limit">
				<li>
					<!-- 제한조건 -->
					<span class="title">제한조건</span>
					<div class="inputLimitArea">
        				
    								<span class="largeBlock">
			    			<span class="subTitle"><label for="pyb">발행년도</label></span>
							<span class="inputArea">
								<input type="text" name="pyb" id="pyb" class="w50" maxlength="4" title="발행년도"/> - <input type="text" name="pye" id="pye" class="w50" maxlength="4" title="발행년도"/>
							</span>
						</span>
    		    		    		
    		    		
    		    		    				
    		    								<span class="largeBlock">
			    			<span class="subTitle"> 언어</span>
			    			<span class="inputArea">
							<select name="lang" id="lang" class="designBox" title="언어">
			    				<option value="">전체</option>
								<option value="kor">한국어</option>
								<option value="eng">영어</option>
								<option value="jpn">일본어</option>
								<option value="chi">중국어</option>
								<option value="fre">프랑스어</option>
								<option value="ger">독일어</option>
								<option value="rus">러시아어</option>
								<option value="spa">스페인어</option>
								<option value="ara">아랍어</option>
								<option value="ita">이태리어</option>
								<option value="dan">덴마크어</option>
								<option value="dut">네덜란드어</option>
								<option value="heb">히브리어 </option>
			    			</select>
							</span>
						</span>
    		    		
    		    		
    		    		    				
    		    		    		
    		    		
    								<span class="largeBlock">
		    			<span class="subTitle"><label for="subjName">주제분류</label></span>
						<span class="inputArea">
		    				<input type="text" name="subjName" id="subjName" class="" readonly="readonly" style="backgroundColor:#aaaaaa !important;width:120px;display:none;" title="주제명 입력창"/>
							<input type="text" name="subj" id="subjOrg" style="backgroundColor:#aaaaaa !important;width:100px;" title="subj 입력창"/>
							<img src="../images/btn/btn_seek.gif" alt="주제분류 조회 새창보기" name="btnSubjSearch" id="btnSubjSearch" style="display:none"/>							
						</span>
						<noscript>
						<span class="inputArea">		    				
							* 주제분류 코드를 입력하여 주십시오.							
						</span>
						</noscript>
						</span>
			    		    							</div>
		        </li>
		    </ul>
				<div class="line"></div>
			<ul class="limit">
				<li>
					<span class="title" title="정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렬">정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렬</span>
					<span class="inputLimitArea">
					<span class="largeBlock">
	    				<span class="subTitle"> 항목</span> 
						<span class="inputArea">
							<select name="s" id="s" class="designBox" title="정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렬 항목">
					    		<option value="">정렬항목</option>
					    		<option value="S_TITL" >자료명</option>
					    		<option value="S_AUTH" >저자</option>
					    		<option value="S_PUBN" >출판사</option>
					    		<option value="S_PYB" >발행년도</option>
					    	</select>
						</span>
					</span>
					<span class="largeBlock">
					    <span class="subTitle"> 순서</span>
						<span class="inputArea designBox">
					    	<select name="st" id="st" class="designBox" title="정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;렬 순서">
								<option value="">항목선택</option>
					    		<option value="ASC" >오름차순</option>
					    		<option value="DESC" >내림차순</option>
					    	</select>
						</span>
					</span>
					</span>
				</li>
			</ul>	
			
<script type="text/javascript">
	var selectCheck = function(obj, f) {
		var v = $('frmOrg').select('input[name="'+obj.name+'"]');
		if (v == null || v.size() <= 1)
			return;
		if (obj.checked) {
			if (f) {
				for (var i = 1; i < v.size(); i++) {
					v[i].checked = false;
				}
				v[0].checked = true;
			} else {
				v[0].checked = false;
				obj.checked = true;
			}
		} else {
			if (f)
				v[0].checked = true;
			else
				var checked = false;
				for (var i = 1; i < v.size(); i++) {
					if (v[i].checked) {
						checked = true;
						break;
					}
				}
				if (!checked)
					v[0].checked = true;
		}
	}
</script>			<input type="hidden" name="q" value=""/>
			<input type="hidden" name="qt" value=""/>
			<div class="line"></div>
			<div class="width-full">
                <div id="btnLine3">
					<span id="gBtn3">
					  <span class="gBtn3" title="검색"><span class="button3"><input type="submit" value="검색"/></span></span>
                      <span><a href="../search/Search.ax?sid=1" onclick="showSpecialChar();return false;"><span title="다국어입력">다국어입력</span></a></span>
                      <span><a href="Search.History.ax"><span title="이전질의어">이전질의어</span></a></span>
					</span>
                </div>
			</div>
	</div>
</div>
<script type="text/javascript">
	function showSpecialChar() {
		search.showSpecialChar();
	}
	document.observe('dom:loaded' , function() {
		new Control.Slider('handle11','track11',{values:[1,2,3,4,5],range:$R(1,5),
			sliderValue:$('weight11').value,
	        onSlide:function(v){$('weight11').value = v},
	        onChange:function(v){$('weight11').value= v}
		});
		
		new Control.Slider('handle22','track22',{values:[1,2,3,4,5],range:$R(1,5),
			sliderValue:$('weight22').value,
	        onSlide:function(v){$('weight22').value = v},
	        onChange:function(v){$('weight22').value= v}
		});
		
		new Control.Slider('handle33','track33',{values:[1,2,3,4,5],range:$R(1,5),
			sliderValue:$('weight33').value,
	        onSlide:function(v){$('weight33').value = v},
	        onChange:function(v){$('weight33').value= v}
		});

		var values =$('frmOrg').select('*[name="value"]');	

		//values.invoke('observe','keydown', search.searchKeyDownHandler);
		values.invoke('observe','focus', search.focusChanged);
		$('value1').activate();
		
		if($('subjName') != null || typeof(subjName) != 'undefined'){
			$('subjName').show();
		}
		
		if($('subjOrg') != null || typeof(subjOrg) != 'undefined'){
			$('subjOrg').hide();
		}
		
		if($('btnSubjSearch') != null || typeof(btnSubjSearch) != 'undefined'){
			$('btnSubjSearch').show();
			if($('btnSubjSearch').visible() == true)
			{
				var subjs =$('frmOrg').select('*[name="btnSubjSearch"]');
				subjs.invoke('observe','click', search.searchCategoryPopup);		
			}
		}
	});
</script>    	</div>
<input type="image" id="noSubmit" name="noSubmit" alt="" style="display:none;"/>
</form>


<script type="text/javascript">
	document.observe('dom:loaded', function() { 
		search.init($('frmOrg')); 
	});
	
	function goSubmitSearch()
	{


		var values = $A($('frmOrg').select('*[name="value"]'));
		var stitle = "'검색어를 입력해 주시기 바랍니다.'";		
		for(var i=0 ; i< values.length; i++)
		{
			if(values[i].value == stitle)
				values[i].value = "";
		}
		
	
		var ocrf = $('frmOrg').select('input[name="crf"]');
		var ocrt = $('frmOrg').select('input[name="crt"]');
		var tmp = "";
		if(ocrf != null && ocrf != "")
		{
			tmp = ocrf.shift().value;
			if (tmp == "'시작날짜를 입력해 주시기 바랍니다.'")
				$('frmOrg').select('input[name="crf"]').shift().value = "";
		}
		if(ocrt != null && ocrt != "")
		{
			tmp = ocrt.shift().value;
			if (tmp == "'종료날짜를 입력해 주시기 바랍니다.'")
				$('frmOrg').select('input[name="crt"]').shift().value = "";
		}
		search.search();
		return false;
	}
	
</script>
								</div>
								
							</div>	
						</div>	
				   </div>
				   
				</div>
			<div id="Footer">
	<div class="footerWrap">
		<img src="../site/gwnu/images/common/copylogo.jpg" alt="강릉원주대학교"/>
		<div>
			<ul class="fmenu">	
				<li class="first"><a href="../guide/Static.ax?page=Sub0607" >개인정보처리방침</a></li>
				<li><a href="http://www.gwnu.ac.kr/mbs/kr/subview.jsp?id=kr_080600000000&depth=8_6" target="_blank">이메일무단수집거부</a></li>
				<li><a href="../guide/Static.ax?page=Sub0601_03">도서관 이용문의</a></li>
			</ul>
			<p>210-702 강원도 강릉시 죽헌길 7 강릉원주대학교 도서관  TEL  033-640-2587 (이용안내) / 2579 (서무)    FAX  033-642-7016 <br/> 
					Copyright 2015. by gangneung-wonju university library. ALL RIGHT reserved. </p>
		</div>
		<div class="f_select">
			<p class="family_site">Family Site</p>
			<ul class="family_site_list">
				
				<!--li class="tit">교내기관</li>
				<li><a href="http://www.gwnu.ac.kr/~onestop/" target="_blank">학생종합서비스센타</a></li>
				
				<li class="tit">부속기관</li>
				<li><a href="http://cfsi.gwnu.ac.kr/" target="_blank">공동실험실습관</a></li>
				<li><a href="http://gifted.gwnu.ac.kr/" target="_blank">과학영재교육원</a></li>
				<li><a href="http://www.gwnu.ac.kr/~ciec" target="_blank">국제교류원</a></li>
				<li><a href="https://dor.gwnu.ac.kr/web2009/main.php" target="_blank">학생생활관</a></li>
				<li><a href="http://www.kffec.com/" target="_blank">농수산인교육원</a></li>
				<li><a href="http://iskul.gwnu.ac.kr/" target="_blank">도서관</a></li>
				<li><a href="http://www.gwnu.ac.kr/region/culture/index.php" target="_blank">해람문화관</a></li>
				<li><a href="http://www.gwnu.ac.kr/~knucsc/" target="_blank">사회봉사센터</a></li>
				<li><a href="http://knusun.gwnu.ac.kr/~museum/" target="_blank">박물관</a></li>
				<li><a href="https://iskul.gwnu.ac.kr/system/sub/press" target="_blank">신문사</a></li>
				<li><a href="http://www.knufli.ac.kr/" target="_blank">외국어교육원</a></li>
				<li><a href="https://iskul.gwnu.ac.kr/center" target="_blank">정보전산원</a></li>
				<li><a href="http://knusun.gwnu.ac.kr/~embrc/" target="_blank">지역협력연구센타</a></li>
				<li><a href="http://www.alledu.or.kr/" target="_blank">평생교육원</a></li>
				<li><a href="http://www.gwnu.ac.kr/~wind" target="_blank">강릉대학교 의장고적대</a></li>
				<li><a href="http://www.gwnu.ac.kr/~ciec/korea/" target="_blank">Korean Language School</a></li>
				
				<li class="tit">연구소</li>
				<li><a href="http://220.67.161.24/" target="_blank">구강과학연구소</a></li>
				<li><a href="http://eclsi.gwnu.ac.kr/" target="_blank">동해안생명과학연구소</a></li>
				<li><a href="http://eri.gwnu.ac.kr/" target="_blank">공학연구소</a></li>
				<li><a href="http://knusun.gwnu.ac.kr/~inmun/" target="_blank">인문학연구소</a></li>
				<li><a href="http://knusun.gwnu.ac.kr/~rins/" target="_blank">자연과학연구소</a></li>
				
				<li class="tit">법인</li>
				<li><a href="http://iacg.gwnu.ac.kr/" target="_blank">산학협력단</a></li>
				<li><a href="http://gems-crc.gwnu.ac.kr/" target="_blank">임베디드협동연구센터</a></li>
				<li><a href="http://www.macc.re.kr/" target="_blank">해양바이오신소재클러스터 사업단</a></li>
				<li><a href="http://knusun.gwnu.ac.kr/~embrc/" target="_blank">동해안해양생물자원연구센터</a></li>
				<li><a href="http://osnet.gwnu.ac.kr/" target="_blank">해양센서네트워크시스템기술연구센터</a></li>
				<li><a href="http://www.knu-ecrc.for.kr/" target="_blank">중소기업기술지원센터</a></li>
				<li><a href="http://fctic.gwnu.ac.kr/" target="_blank">파인세라믹기술혁신</a></li>
				<li><a href="http://incub.gwnu.ac.kr/" target="_blank">창업보육센타</a></li>
				<li><a href="http://www.knu-ecrc.or.kr/" target="_blank">전자상거래지원</a></li>
				<li><a href="http://nuri.gwnu.ac.kr/" target="_blank">강원신소재 사업단</a></li>
				<li><a href="http://www.marinenuri.or.kr/" target="_blank">차세대해양누리사업단</a></li>
				<li><a href="http://www.knuela.com/nuri/" target="_blank">미래형숲관리인력양성사업단</a></li>
				
				<li class="tit"><a href="http://iskul.gwnu.ac.kr/labor" target="_blank">강릉대학노동조합</a></li>
				<li class="tit"><a href="http://www.gwnu.ac.kr/~commite" target="_blank">공무원직장협의회</a></li>
				<li class="tit"><a href="http://pa.gwnu.ac.kr/" target="_blank">교수회</a></li>
				<li class="tit"><a href="http://cons.ocu.ac.kr/" target="_blank">열린사이버대학</a></li-->
				<li class="tit"><a href="http://iskul.gwnu.ac.kr/wonju/" target="_blank">원주캠퍼스 도서관</a></li>
				<li class="tit"><a href="http://www.gwnu.ac.kr/" target="_blank">강릉원주대학교</a></li>
				<li class="tit"><a href="http://portal.gwnu.ac.kr/" target="_blank">학교포탈</a></li>
				<li class="tit"><a href="http://eagle.gwnu.ac.kr/" target="_blank">인트라넷</a></li>
				<!--li class="tit"><a href="http://code.gwnu.ac.kr" target="_blank">전자결재</a></li>
				<li class="tit"><a href="http://eagle.gwnu.ac.kr/bbs/" target="_blank">정보광장</a></li>
				<li class="tit"><a href="http://job.gwnu.ac.kr/" target="_blank">취업정보</a></li>
				<li class="tit"><a href="http://knusun.gwnu.ac.kr/~tong/" target="_blank">총학생회</a></li-->
			</ul>
		</div>	
	</div>
</div>		</div>
		
	</body>
</html>	