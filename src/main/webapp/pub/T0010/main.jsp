<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

		<div class="MC_wrap1">
			<div class="container">
				<div class="MC_box1 widgEdit" data-id="10" data-ty="MAINIMG">
					<!-- 메인비주얼 -->
					<div class="MVisual0010 visual">
						<div class="slider" id="visualSlide">
			            <c:if test="${empty mainImgList}">
							<p class="item"><img src="/images/template/T0010/main/m_visual.png" alt="함께 배우고 꿈꾸는 어린이!!"></p>
							<p class="item"><img src="/images/template/T0010/main/m_visual.png" alt="함께 배우고 꿈꾸는 어린이!!"></p>
						</c:if>
						<c:if test="${!empty mainImgList}">
							<c:forEach items="${mainImgList}" varStatus="status" var="list">
								<p class="item"><img src="<c:out value="${list.widgDataFlpth}"/>" alt="<c:out value="${list.widgDataAltrtvText}"/>"></p>
							</c:forEach>
						</c:if>
						</div>
						<div class="control">
							<a href="" class="prev"><span class="hid">비주얼 이전</span><i class="xi-angle-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">비주얼 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">비주얼 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">비주얼 다음</span><i class="xi-angle-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //메인비주얼 -->
				</div>

			</div>
		</div>

		<div class="MC_wrap2 container">
			<div class="MC_box2 widgEdit" data-id="30" data-ty="BBS" data-tab="3" data-ntt="3">
				<!-- 게시판 -->
				<div class="notice0010">
					<h2 class="hid">공지사항</h2>
					<div class="titTab">
						<ul>
							<li><a href="#notice1" class="current"><span>공지사항공지사항공지사항</span></a></li>
							<li><a href="#notice2"><span>가정통신문</span></a></li>
							<li><a href="#notice3"><span>게시판게시판</span></a></li>
						</ul>
					</div>
					<div class="tabWrap">
						<div class="list_box on"id="notice1">
							<ul>
								<li class="new"><!-- 새글 li 'new' class 추가-->
									<a href="">
										<span class="tit">홈페이지가 리뉴얼 되었습니다.홈페이지가 리뉴얼 되었습니다홈페이지가 리뉴얼 되었습니다홈페이지가 리뉴얼 되었습니다홈페이지가 리뉴얼 되었습니다</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.새롭게 바뀐 홈페이지를 확인하세요.새롭게 바뀐 홈페이지를 확인하세요.새롭게 바뀐 홈페이지를 확인하세요.새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">온라인 학부모 교육 채널 안내</span>
										<span class="txt">학부모님들이 언제 어디서나 쉽고 편</span>
										<p class="date">
											2022.04 <em>14</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">행복더하기 부모교육 연수안내</span>
										<span class="txt">자녀와 부모의 행복 더하기 연수 안내</span>
										<p class="date">
											2022.04 <em>12</em>
										</p>
									</a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more2"><span class="hid">공지사항 더보기</span></a>
						</div>
						<div class="list_box" id="notice2">
							<ul>
								<li>
									<a href="">
										<span class="tit">가정통신문가정통신문가정통신문가정통신문가정통신문</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more2"><span class="hid">가정통신문 더보기</span></a>
						</div>
						<div class="list_box" id="notice3">
							<ul>
								<li>
									<a href="">
										<span class="tit">게시판게시판게시판게시판게시판게시판게시판게시판게시판게시판</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<li>
									<a href="">
										<span class="tit">홈페이지가 리뉴얼 되었습니다.</span>
										<span class="txt">새롭게 바뀐 홈페이지를 확인하세요.</span>
										<p class="date">
											2022.04 <em>20</em>
										</p>
									</a>
								</li>
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data" style="display: none;">데이터가 없습니다.</li>
							</ul>
							<a href="" class="btn_more2"><span class="hid">게시판 더보기</span></a>
						</div>
					</div>
				</div>
				<!-- //게시판 -->
			</div>

			<div class="MC_box3 widgEdit" data-id="20" data-ty="BANNER" data-tab="6">
				<!-- 바로가기1 -->
				<div class="M_link0010">
					<ul>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_01.png" alt=""></div>
								<p>교육목표</p>
							</a>
						</li>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_02.png" alt=""></div>
								<p>유치원알리미</p>
							</a>
						</li>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_03.png" alt=""></div>
								<p>통학버스</p>
							</a>
						</li>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_04.png" alt=""></div>
								<p>사이버도서관사이버도서관사이버도서관</p>
							</a>
						</li>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_05.png" alt=""></div>
								<p>정보공개</p>
							</a>
						</li>
						<li>
							<a href="">
								<div class="img"><img src="/images/template/T0010/main/0010_link01_06.png" alt=""></div>
								<p>학습자료실</p>
							</a>
						</li>
					</ul>
				</div>
				<!-- //바로가기1 -->
			</div>
			<div class="con_wrap">
				<div class="MC_box4 widgEdit" data-id="50" data-ty="POPUP">
					<!-- 팝업존 -->
					<div class="pop0010 popupZone">
						<div class="tit_wrap">
							<h2>팝업존</h2>
						</div>
						<div class="pop_img" id="popupSlide">
							<c:if test="${!empty popZoneList}">
								<c:forEach items="${popZoneList}" var="popZList" varStatus="status">
									<p class='item'>
										<a href="${popZList.url}" <c:if test="${popZList.url ne '#' && popZList.newWinAt eq 'Y'}">target="_blank" title="새창"</c:if>>
											<img src="${popZList.fileStreCours}" alt="${popZList.popupTitle}">
										</a>
									</p>
								</c:forEach>
							</c:if>
							<c:if test="${empty popZoneList}">
								<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/T0010/main/img_popup01.png" alt="홈페이지 방문을 환영합니다."></a></p>
								<p class="item"><a href="" title="새창" target="_blank"><img src="/images/template/T0010/main/img_popup01.png" alt="홈페이지 방문을 환영합니다."></a></p>
							</c:if>
						</div>
						<div class="control arwShow">
							<p class="page"><strong>1</strong><span>3</span></p>
							<a href="" class="prev"><span class="hid">팝업존 이전</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
							<a href="" class="stop"><span class="hid">팝업존 정지</span><i class="xi-pause" aria-hidden="true"></i></a>
							<a href="" class="play"><span class="hid">팝업존 재생</span><i class="xi-play" aria-hidden="true"></i></a>
							<a href="" class="next"><span class="hid">팝업존 다음</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
						</div>
					</div>
					<!-- //팝업존 -->
				</div>
				<div class="MC_box5 widgEdit" data-id="70" data-ty="DIET">
					<!-- 식단 -->
					<div class="meal_menu0010">
						<div class="tit_wrap">
							<h2>오늘의 식단</h2>
						</div>
						<div class="inner">
							<ul>
		                        <c:choose>
									<c:when test="${empty dietList}">
										<li class="no_data">금일 식단이 없습니다.</li>
									</c:when>
									<c:otherwise>
										<c:forEach items="${dietList}" var="dietList">
											<li>
												<dl>
													<c:if test="${not empty dietList.dietTy}">
														<dt class="kcal"><span><c:out value="${dietList.dietTy}"/><em><c:out value="${dietList.dietCal}"/> Kcal</em></span></dt>
														<dd class="meal_list"><c:out value="${dietList.dietCn}"/></dd>
													</c:if>
												</dl>
											</li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
						<img src="/images/template/T0010/main/0010_ico_meal.png" alt="">
						<a href="" class="btn_more"><span class="hid">오늘의 식단더보기</span><i class="xi-plus" aria-hidden="true"></i></a>
					</div>
					<!-- //식단 -->
				</div>

				<div class="MC_box6 widgEdit" data-id="60" data-ty="SCHDUL">
					<!-- 캘린더 -->
		        	<input type="hidden" id="sYear" value="${dateMap.year}"/>
					<input type="hidden" id="sMonth" value="${dateMap.month}"/>
					<div class="pop_schedule0010">
						<div class="tit_wrap">
							<h2>행사일정</h2>
						</div>
						<div class="sche_wrap">
							<p class="month">
								<span>2022.<em>02</em></span>
								<a href="javascript:" class="prev" onclick="setCalenDar('preM')"><span class="hid">이전달</span><i class="xi-arrow-left" aria-hidden="true"></i></a>
								<a href="javascript:" class="next" onclick="setCalenDar('nextM')"><span class="hid">다음달</span><i class="xi-arrow-right" aria-hidden="true"></i></a>
							</p>
							<div class="lst">
								<ul>
									<li><a href=""><span>04.02</span>직업체험활동 직업체험활동</a></li>
									<li><a href=""><span>04.09</span>소방안전교육의 날 소방안전교육의 날</a></li>
									<li><a href=""><span>04.10</span>특별활동의 날 특별활동의 날</a></li>
									<li><a href=""><span>04.22</span>특별활동의 날 특별활동의 날</a></li>
									<li class="no_data" style="display: none;">데이터가 없습니다.</li>
								</ul>
							</div>
						</div>
						<a href="" class="btn_more2"><span class="hid">공지사항 더보기</span></a>
					</div>
					<!-- //캘린더 -->
				</div>
			</div>
			<div class="MC_box7 widgEdit" data-id="40" data-ty="GALBBS" data-tab="1" data-ntt="4">
				<!-- 갤러리 -->
				<div class="gallery0010">
					<h2 id="heading">포토갤러리</h2>
					<div class="list_box">
						<ul>
							<c:if test="${!empty galList }">
								<c:forEach items="${galList}" var="galList">
									<li>
										<a href="/${ctx }/na/ntt/selectNttInfo.do?mi=${galList.menuId }&nttSn=${galList.nttSn }&bbsId=${galList.bbsId }">
											<p class="img">
												<img src="${galList.thumbFilpth}" alt="${galList.nttSj}">
											</p>
											<span>${galList.nttSj}</span>
										</a>
									</li>
								</c:forEach>
							</c:if>
							<c:if test="${empty galList }">
								<!-- 데이터가 없는경우 아래의 내용만 출력해주세요! -->
								<li class="no_data">
									<p>데이터가 없습니다</p>
								</li>
							</c:if>
						</ul>
					</div>
					<a href="/${ctx }/na/ntt/selectNttList.do?mi=${galBbsInfo.menuId }&bbsId=${galBbsInfo.bbsId }" class="btn_more2"><span class="hid">포토갤러리 더보기</span></a>
				</div>
				<!-- //갤러리 -->
			</div>
		</div>
		<!-- 배너존 -->
		<div class="banner_zone">
			<div class="container">
				<h2>배너모음</h2>
				<p class="btn arwShow">
					<a href="#bannerPrev" class="prev" title="배너 이전"><i class="xi-angle-left" aria-hidden="true"></i></a>
					<a href="#bannerStop" class="stop" title="배너 정지"><i class="xi-pause" aria-hidden="true"></i></a>
					<a href="#bannerStop" class="play" title="배너 재생"><i class="xi-play" aria-hidden="true"></i></a>
					<a href="#bannerNext" class="next" title="배너 다음"><i class="xi-angle-right" aria-hidden="true"></i></a>
					<a href="#bannerList" id="bannerList"  class="list dialogAllBannerList" title="배너 리스트"><i class="xi-bars" aria-hidden="true"></i></a>
				</p>
				<div class="bnWrap" id="bnSlider">
		            <c:choose>
						<c:when test="${empty bannList}">
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_01.gif" alt="교육기부 바로가기"></a></p>
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_02.gif" alt="온라인행정심판 바로가기"></a></p>
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_03.gif" alt="사랑티켓 바로가기"></a></p>
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_04.gif" alt="학부모On누리 바로가기"></a></p>
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_05.gif" alt="EBSi 바로가기"></a></p>
							<p class="item"><a href="" target="_blank" title="새창이동"><img src="/images/template/T0010/main/ban_03.gif" alt="사랑티켓 바로가기"></a></p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${bannList}" var="bannList">
								<p class="item">
									<a href="<c:out value="${bannList.url}"/>" <c:if test="${bannList.newWinAt eq 'Y'}">target="_blank" title="새창이동"</c:if><c:if test="${bannList.newWinAt ne 'Y'}">target="_self" title="현재창이동"</c:if>>
										<c:if test="${bannList.bannerTemp eq 'A'}">
											<img src="<c:out value="${bannList.fileStreCours}"/>" alt="<c:out value="${bannList.bannerTitle}"/>">
										</c:if>
										<c:if test="${bannList.bannerTemp eq 'B'}">
											<img src="<c:out value="${bannList.bcrnImagePath}"/>" alt="<c:out value="${bannList.bannerTitle}"/>">
										</c:if>
									</a>
								</p>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<!--// 배너존 -->

<script type="text/javascript">

	//배너 리스트 이동
	$("#bannerList").click(function(){
		location.href = "/<c:out value='${ctx}'/>/ba/banner/selectBannerColl.do";
	});
	// js 공통 스크립트에 포함 ( 메인호출시 사용되는 js에 포함해야함 )
	widgApiCall = function(widgSysId, widgId, callBackFn){
		$.ajax({
			type: "post",
			url: "/<c:out value='${ctx}'/>/widgApi/get/json.do",
			dataType: "json",
			data: {
				widgId : widgId,
				widgSysId : widgSysId
			},
			success:function(result){
				callBackFn(result);
			},
			error:function(data) {
				console.log("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}

		});
	}

	// 메인 호출 후 실행되도록 스크립트 추가
	$(document).ready(function(){
		var sysId = "<c:out value='${ctx}'/>";

		// 파라미터 - 시스템아이디, 위젯아이디, 콜백함수
		/* widgApiCall(sysId, '10', apiFnMainImg); // 메인 비주얼 */
		widgApiCall(sysId, '20', apiFnLink); // 바로가기 배너
		widgApiCall(sysId, '30', apiFnBbs); // 일반 게시판
		widgApiCall(sysId, '40', apiFnGalBbs); // 갤러리 게시판

		/* 위젯으로 제목만 변경. 제목이 없으면 추가할 필요없음 [실제 내용은 /sysId/main.do 에서 넘어온 데이터로 가공해서 처리] */
		widgApiCall(sysId, '50', apiFnPop); // 팝업존
		widgApiCall(sysId, '60', apiFnSchdul); // 일정
		widgApiCall(sysId, '70', apiFnDiet); // 식단
		/*//위젯으로 제목만 변경 [실제 내용은 /sysId/main.do 에서 넘어온 데이터로 가공해서 처리] */

	});

	// 메인 비주얼
	apiFnMainImg  = function(retDataList){
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").children().remove();

			for(idx=0; idx<widgDataList.length; idx++){
				appendHtml += "	<li><img src=\"" + widgDataList[idx].widgDataFlpth + "\" alt=\"" + widgDataList[idx].widgDataAltrtvText + "\"></li>";
			}

			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").append(appendHtml);
		}
	}

	// 바로가기 배너
	apiFnLink  = function(retDataList){
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").children().remove();
			var cnt = 1;
			for (idx = 0; idx < widgDataList.length; idx++) {
				appendHtml += "	<li class=col"+cnt+">";
				appendHtml += "		<a href=\"" + widgDataList[idx].widgDataUrl + "\" target=\"" + widgDataList[idx].widgDataUrlTrgt + "\">";
				appendHtml += "			<div class='img'><img src=\"" + widgDataList[idx].widgDataFlpth + "\" alt=\"" + widgDataList[idx].widgDataAltrtvText + "\"></div>";
				appendHtml += "			<p>" + widgDataList[idx].widgDataSj + "</p>";
				appendHtml += "		</a>";
				appendHtml += "	</li>";
				cnt++;
			}

			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > ul").append(appendHtml);
		}
	}

	// 게시판
	apiFnBbs = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			nttListAction(retDataList);
		}
	}

	// 갤러리 게시판
	apiFnGalBbs = function(retDataList) {
		var widgDataList = retDataList.widgDataList;

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			galNttListAction(retDataList);
		}
	}

	// 팝업존 [제목만 변경]
	apiFnPop = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").append(appendHtml);
		}

		// 후 처리 : 컨트롤러에서 보내준 데이터를 JSTL로 가공
	}

	// 일정 [제목만 변경]
	apiFnSchdul = function(retDataList) {
		setCalenDar('curM');
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div > div > h2").append(appendHtml);
		}
	}

	// 식단 [제목만 변경]
	apiFnDiet = function(retDataList) {
		var widgDataList = retDataList.widgDataList;
		var appendHtml = "";

		if (typeof widgDataList == "undefined" || widgDataList == null || widgDataList == "") {
			return false;
		} else {
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] .tit_wrap .heading").empty();
			appendHtml += "" + widgDataList[0].widgDataSj + "";
			$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] .tit_wrap .heading").append(appendHtml);
		}

		// 식단 더보기 버튼
		var dietMenuId = "<c:out value='${dietMenuInfo.menuId}'/>";
		var urlTrgt = "<c:out value='${dietMenuInfo.widgDataUrlTrgt}'/>";
		if ( dietMenuId == "" ) {
			$(".meal_menu0010").find('.btn_more').attr('href','#');
		} else {
			var sysId = "<c:out value='${ctx}'/>";
			var dietHref = "/" + sysId + "/ad/fm/foodmenu/selectFoodMenuView.do?mi=" + dietMenuId;
			$(".meal_menu0010").find('.btn_more').attr('href', dietHref);
			$(".meal_menu0010").find('.btn_more').attr('target', urlTrgt);
		}
	}



/* ==========================================================================================
 * ↑ 콜백 함수
 * ------------------------------------------------------------------------------------------
 * ↓ 동적 호출 함수
 * ========================================================================================== */



// 일반 게시판 동적 호출 (각 템플릿 별 .notice00XX 번호는 변화하니 맞춰서 수정할것) [BBS 1/2]
function nttListAction(retDataList){
	var widgDataList = retDataList.widgDataList;
	var appendHtml = "";

	$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").children().remove();
	//게시판 헤더 시작
	appendHtml += "	<h2 class='hid'>공지사항</h2>";
	appendHtml += "	<div class='titTab'>"; //titTabl Div Open
	appendHtml += "	  <ul>"; //titTabl Div Ul Open

	var cnt = 1;

	for (idx = 0; idx < widgDataList.length; idx++) {
		appendHtml += " <li>";
		if (cnt == 1) {
			appendHtml += "  <a href='#notice"+cnt+"' target='' class='setNoticeWidg current' data-cnt='" + cnt + "' data-bbs='" + widgDataList[idx].widgDataId + "' data-row='" + widgDataList[idx].widgDataCo + "'><span>" + widgDataList[idx].widgDataSj + "</span></a>";
		} else  {
			appendHtml += "  <a href='#notice"+cnt+"' target='' class='setNoticeWidg' data-cnt='" + cnt + "' data-bbs='" + widgDataList[idx].widgDataId + "' data-row='" + widgDataList[idx].widgDataCo + "'><span>" + widgDataList[idx].widgDataSj + "</span></a>";
		}
		appendHtml += " </li>";
		cnt++;
	}
	appendHtml += "	   </ul>"; //titTabl Div Ul Close
	appendHtml += "  </div>"; //titTabl Div Close
	//게시판 헤더 종료


	//게시판 헤더 하위 리스트폼 시작
	appendHtml += "	<div class='tabWrap'>"; //Wrap Div Open
	cnt = 1;
	for (idx = 0; idx < widgDataList.length; idx++) {
		if (cnt == 1) {
			appendHtml += "    <div class='list_box on' id='notice"+cnt+"'>";
		} else {
			appendHtml += "    <div class='list_box' id='notice"+cnt+"'>";
		}
		appendHtml += "      <ul class='setNttlist'>";
		appendHtml += "      </ul>";
		appendHtml += "		 <a href='"+widgDataList[idx].widgDataUrl+"' class='btn_more2'><span class='hid'>" + widgDataList[idx].widgDataSj + "더보기</span></a>";
		appendHtml += "    </div>";
		cnt++;
	}
	appendHtml += "	</div>";//Wrap Div Close
	//게시판 헤더 하위 리스트폼 종료

	$(".widgEdit[data-id=" + retDataList.widgInfo.widgId + "] > div").append(appendHtml);

	//게시판 헤더 하위 리스트폼 리스트 항목 추가 완료
	var totalCnt = $(".notice0010 .titTab ul li").size();

	for (var j = 0; j < totalCnt; j++) {
		var nttDtCnt = (j+1);
		var item = $(".titTab .setNoticeWidg[data-cnt=" + nttDtCnt + "]");
		var root = ".notice0010 .tabWrap #notice"+nttDtCnt;
		var selector = ".notice0010 .tabWrap #notice"+nttDtCnt+" > ul";
		var sysId = "<c:out value='${ctx}'/>";
		var bbsId = $(item).attr("data-bbs");
		var nttCount = $(item).attr("data-row");

		$.ajax({
			type : "post",
			async : false,
			dataType : "json",
			url : "/"+ sysId +"/wm/widg/selectWidgDataList.do",
			data : {
				bbsId : bbsId,
				nttCount : nttCount,
				sqlId : 'selectNttListByBbsId'
			},
			success : function(result){
				if (result.length > 0) {
					$(selector).children().remove();
					for (k=0; k < result.length; k++) {

						var nttCn = result[k].nttCn;
						var mi = result[k].menuId;
						var addData = "";
						if (result[k].newCheck == "Y") {
							addData += "<li class='new'>";
						} else {
							addData += "<li>";
						}
						addData += "	<a href='/" + sysId + "/na/ntt/selectNttInfo.do?mi=" + mi + "&nttSn=" + result[k].nttSn + "&bbsId=" + bbsId + "'>";
						addData += "	<span class='tit'>";
						addData += 			result[k].nttSj;
						addData += "	</span>";
						addData += "	<span class='txt'>";
						if (result[k].nttCn == "undefined" || result[k].nttCn == null) {
							addData += "-";
						} else {
							addData += result[k].nttCn;
						}
						addData += "	</span>";

						addData += "<p class='date'>" + result[k].regDt1 + "." + result[k].regDt2 +"<em>" + result[k].regDt3 + "</em>" + "</p>";
						addData += "	</a>";
						addData += "</li>";

						$(selector).append(addData);
					}
					$(selector).next().attr("href", "/" + sysId + "/na/ntt/selectNttList.do?mi=" + result[0].menuId + "&bbsId=" + bbsId).attr("target", "_blank");
				} else {
					if (widgDataList.length == 0) {
						var btnHtml = "<a href='' class='btn_more2'><span class='hid'>더보기</span></a>";
						$(root).append(btnHtml);
						$(root).find(".btn_more2").attr("href", "javascript:").attr("target", "_self");
					}
					var rootUl = root;
					//게시판 키값 추출 로직 추가후 변경될 부분
					$(root).find(".btn_more2").attr("href", "javascript:").attr("target", "_self");
					//게시판 키값 추출 로직 추가후 변경될 부분

					$(rootUl).prepend("<ul><li class='no_data'>데이터가 없습니다.</li></ul>");
				}
			},
			error:function(data){
				alert("오류가 발생하였습니다.\n관리자에게 문의하세요.");
			}
		});
		nttDtCnt++;
	}
	//게시판 헤더 하위 리스트폼 리스트 항목 추가 종료
};

// 다른 일반 게시판 클릭시 current처리  // target="" 를 넣어야 최상위로 이동하지 않음 [BBS 2/2]
$(document).on('click',".notice0010 h2 a",function(){
	$(".notice0010").find(".current").removeClass("current");
	$(this).addClass("current");
	$(".notice0010").children().hide();
	$(".notice0010 h2").show();
	$(this).parent().show();
	$(this).parent().next().show();
});

// 사진, 갤러리 게시판 동적 호출 [galBbs 1/1]

function galNttListAction(retDataList){
	var widgDataList = retDataList.widgDataList;
	var appendHtml = "";
	$(".gallery0010 #heading").text(widgDataList[0].widgDataSj);
};

//날짜 세팅
function setCalenDar(actM) {
	var date = new Date();
	var y = $("#sYear").val();
	var m = $("#sMonth").val();
	var d = date.getDate();

	if ( actM != "curM" ) {
		var full_m = "";

    	if ( actM == 'preM' ) { // 이전 월
    		m--;

    		if ( m < 1 ) {
    			y--;
    			m = 12;
    		}

    		full_m = m;

    		if ( full_m < 10 ) {
    			full_m = "0" + m;
    		}
    	}

    	if ( actM == 'nextM' ) { // 다음 월
    		m++;

    		if (m > 12) {
    			y++;
    			m = 1;
    		}

    		full_m = m;

    		if (full_m < 10) {
    			full_m = "0" + m;
    		}
    	}

    	//var thisDate = y + "<em>" + (m < 10 ? "0" + m : m) + ".</em>";
    	var thisDate = y + ".<em> " + (m < 10 ? "0" + m : m) + "</em>";

		$("#sYear").val(y);
		$("#sMonth").val(m);

		var preVal = m-1;
		var nextVal = m+1;

		if ( preVal < 10 ) { // 이전 월
			if ( preVal < 1 ) {
				preVal = 12;
			} else {
				preVal = "0" + preVal;
			}
		}

		if ( nextVal < 10 ) { // 다음 월
			nextVal = "0" + nextVal;
		} else {
			if ( nextVal == 13 ) {
				nextVal = "01";
			}
		}

		//$(".pop_schedule0010").find(".prev").text(preVal); // 이전달 텍스트 있을 시 사용
		//$(".pop_schedule0010").find(".next").text(nextVal); // 다음달 텍스트 있을 시 사용

		$(".pop_schedule0010 .month > span").html(thisDate); // 년, 월 세팅
	} else if ( actM == "curM" ) {
		//var thisDate = y + "<em>" + (m < 10 ? "0" + m : m) + ".</em>";
		var thisDate = y + ".<em> " + (m < 10 ? "0" + m : m) + "</em>";
		$(".pop_schedule0010 .month > span").html(thisDate); // 년, 월 세팅
	}


	var theDate = new Date(y,m-1,1);
	var theDay = theDate.getDay();
	var last = [0,31,28,31,30,31,30,31,31,30,31,30,31];

	var lastDate = last[m];

	var row = Math.ceil((theDay+lastDate)/7);
	var calendar = "";
	var dNum = 1;
	var realDate = date.getFullYear() + "/" + (date.getMonth() + 1);
	var selDate = y + "/" + m;

	// 달력 일 세팅
	/* for ( var i = 1; i <= row; i++ ) {
	    calendar += "<tr>";

	    for ( var k= 1; k <= 7; k++ ) {
	        if ( i == 1 && ((k <= theDay) || (dNum > lastDate)) ) {
	            calendar += "<td> &nbsp; </td>";
	        } else {
	        	if (k == 1) {
	        		calendar += "<td id = 'dateTd"+dNum+"'><a id ='aChkDate"+dNum+"' class='sun'>" + dNum + "</a></td>";
	        	} else if (k == 7) {
	        		calendar += "<td id = 'dateTd"+dNum+"'><a id ='aChkDate"+dNum+"' class='sat'>" + dNum + "</a></td>";
	        	} else {
	            	calendar += "<td id = 'dateTd"+dNum+"'><a id ='aChkDate"+dNum+"' class=''>" + dNum + "</a></td>";
	        	}
	            // calendar += "<td><a class='day' href='#'>" + dNum + "</a></td>";
	            dNum++;
	        }
	    }

	    calendar += "</tr>";

	}

	$(".sche_tbl > table > tbody").append(calendar); */
	selectScheduleInfo(actM,y,m); // 상세일정 세팅

};

//일정 세팅
function selectScheduleInfo( paraAct, paraY, paraM ) {
	var sysId = "<c:out value='${ctx}'/>";
	var mi = "<c:out value='${scMenuInfo.menuId}'/>";
	var urlTrgt = "<c:out value='${scMenuInfo.widgDataUrlTrgt}'/>";
	var srchDate = "";
    var dayArr = "";
    var dayArrObj = "";

    var schdulInfoAt = "<c:out value='${dateMap.schdulInfoAt}'/>";
    if ( schdulInfoAt == "Y" ) {
	    if (mi == "") {
	    	$(".lst").html("<li class='no_data'>연결할 일정메뉴가 없습니다.</a></li>");
	    	return false;
	    }
    } else { // 템플릿-메인미리보기 (일정상세보기)
    	$(".lst").html("<li><a href=''><span class='date'>" + paraY +"." + paraM + "<em>01</em></span>일정관리 예시 입니다.</a></li>");
    	return false;
    }

	srchDate = paraY + "/" + (paraM < 10 ? "0" + paraM : paraM);

	$.ajax({
		type : "post",
		dataType : "json",
		async : false,
		data : {
			srchDate : srchDate,
			sysId : sysId,
			mi : mi
		},
		url : "/${ctx}/wm/widg/selectSchdulList.do",
		success : function(schList){
			$(".pop_schedule0010 .sche_wrap .lst ul li").remove();
		   	var viewScList  = "";

		   	if ( schList.length > 0 ) {
			   	for ( var i = 0 ; i < schList.length ; i++ ) {
					if ( schList[i].bgnde != "" ) {
						dayArr += schList[i].bgnde.substring(8,10)+",";
				   		var bgndeY = schList[i].bgndeY;
				   		var bgndeM = schList[i].bgndeM;
				   		var bgndeD = schList[i].bgndeD;
				   		var enddeY = schList[i].enddeY;
				   		var enddeM = schList[i].enddeM;
				   		var enddeD = schList[i].enddeD;
				   		var dayStr = "";

			    		// 상세일정 변수
			    		var dateSeq = schList[i].schdulSeq;
			    		var dateInfoHref = "/" + "<c:out value='${ctx}'/>" + "/ps/schdul/selectSchdulInfo.do?mi=" + mi + "&schdulSeq=" + dateSeq;

				   		var bgndeMDId = bgndeM + "" + bgndeD;
				   		var enddeMDId = enddeM + "" + enddeD;
				   		if ( Number(bgndeMDId) == Number(enddeMDId) ) { // 하루
				  		 	$("#aChkDate" + Number(bgndeD)).attr("class","day");
				  		 	$("#aChkDate" + Number(bgndeD)).attr("href","javascript:");
				  		 	$("#aChkDate" + Number(bgndeD)).attr("onClick","javascript:selectScheduleDay('" + bgndeY + "','" + bgndeM + "','" + bgndeD + "')");

				  		 	// 상세일정
				   			dayStr = "" + bgndeD;
				   			viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span>" + bgndeM + "." + dayStr + "</span>" + schList[i].schdulTitle + "</a></li>"

				   		} else { // 하루 이상
				   			var DNum = 0; // #aChkDate 뒤에 붙는 id값
				   			var startCnt = 0; // for문 start값
				   			var maxCnt = 0; // for문 end값

				   			// ex. 주석 기준 현재월은 10월
		   					if ( Number(paraM) == Number(bgndeM) && Number(paraM) == Number(enddeM) ) { // ex. 10/10 ~ 10/13
		   						startCnt = bgndeD;
		   						maxCnt = enddeD;
		   					} else if ( Number(paraM) == Number(bgndeM) && Number(paraM) != Number(enddeM) ) { // ex. 10/10 ~ 11/13
		   						startCnt = bgndeD;
		   						maxCnt = 31;
		   					} else if ( Number(paraM) != Number(bgndeM) && Number(paraM) == Number(enddeM) ) { // ex. 09/10 ~ 10/13
		   						startCnt = 1;
		   						maxCnt = enddeD;
		   					} else { // ex. 09/10 ~ 11/13
		   						var last = [0,31,28,31,30,31,30,31,31,30,31,30,31];
		   						var lastDate = last[Number(bgndeD)];
		   						startCnt = 1;
		   						maxCnt = lastDate;
		   					}
		   					for ( var day = Number(startCnt); day <= Number(maxCnt); day++ ) {
		   						var MNum = (paraM < 10 ? "0" + paraM : paraM);
		   						var DNum = (day < 10 ? "0" + day : day);
					  		 	$("#aChkDate"+day).attr("class","day");
					  		 	$("#aChkDate"+day).attr("href","javascript:");
					  		 	$("#aChkDate"+day).attr("onClick","javascript:selectScheduleDay('" + paraY + "','" + MNum + "','" + DNum + "')");

					   			/* [시작~끝 보여줘야하는 위젯일때 사용] */
					   			//dayStr = MNum + "." + DNum;
					   			dayStr = "" + DNum;
					   			/* [시작~끝 상관없이 현재일 보여주는 위젯일때 사용] */
					   			//dayStr = MNum + "/" + "<c:out value="${dateMap.nowDay}"/>";

					  		 	// 상세일정
					   			//viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span class='date'>" + bgndeY +"." + bgndeM +"<em>" + dayStr + "</em></span>" + schList[i].schdulTitle + "</a></li>"
					   			viewScList += "<li><a href='" + dateInfoHref + "' target='" + urlTrgt + "'><span>" + bgndeM + "." + dayStr + "</span>" + schList[i].schdulTitle + "</a></li>"
		   					}
				   		}

					}
				}
		   	} else {
		   		viewScList += "<li class='no_data'>일정이 없습니다.</li>";
		   	}

    		// 더보기
    		var dateHref = "/" + "<c:out value='${ctx}'/>" + "/ps/schdul/selectSchdulMainList.do?mi=" + mi;
    		$(".pop_schedule0010").find(".btn_more2").attr("href", dateHref);

		   	// 상세일정 세팅 start
			/* [달력이 아닌 위젯에서 사용 : 전체 상세일정 세팅] */
			$(".lst ul").html(viewScList);
			/* [달력인 위젯에서 사용] : 오늘 상세일정 세팅 */
			/* if (paraAct == "curM") {
				selectScheduleDay(paraY, paraM, "<c:out value="${dateMap.nowDay}"/>");
			} */
			// 상세일정 세팅 end
   		},
   		error : function(data){
   			console.log("관리자에게 문의해주세요.");
   		}
	});
};
</script>