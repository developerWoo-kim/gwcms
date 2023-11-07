<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<section class="up_pop">
	<ul id="upPopSlide">
		<li>
			<a href="#imgPop" class="hash"><!-- 이미지 팝업일 경우 레이어뜨게 작업_20230223 장주연 추가_이미지일 경우 class="hash" 붙여줘야 함. -->
				<p class="img"><img src="/00_common/images/up_pop/upPop_img1.png" alt=""></p>
				<p class="txt">[유권자 투표참여 공감 콘텐츠 공모전][유권자 투표참여 공감 콘텐츠 공모전]</p>
				<p class="btn">자세히 보기</p>
			</a>
		</li>
		<li>
			<a href="">
				<p class="img"><img src="/00_common/images/up_pop/upPop_img2.png" alt=""></p>
				<p class="txt">[유권자 투표참여 공감 콘텐츠 공모전]</p>
				<p class="btn">자세히 보기</p>
			</a>
		</li>
		<li>
			<a href="">
				<p class="img"><img src="/00_common/images/up_pop/upPop_img1.png" alt=""></p>
				<p class="txt">[유권자 투표참여 공감 콘텐츠 공모전]</p>
				<p class="btn">자세히 보기</p>
			</a>
		</li>
		<li>
			<a href="">
				<p class="img"><img src="/00_common/images/up_pop/upPop_img3.png" alt=""></p>
				<p class="txt">[유권자 투표참여 공감 콘텐츠 공모전]</p>
				<p class="btn">자세히 보기</p>
			</a>
		</li>
	</ul>
	<div class="control">
		<a href="#allPopupList" class="hash popuplst">팝업전체보기</a>
		<div class="count"><em class="current"></em><em class="total"></em></div>
		<a href="javascript:;" class="pop_close">오늘 하루 열지않기<i class="xi-close-circle" aria-hidden="true"></i></a><!-- 클릭시 창닫힘 작업_20230223 장주연 추가 -->
	</div>
</section>

<!-- 레이어팝업 : 상단팝업 리스트-->
<div class="lyrPopup" id="allPopupList">
	<div class="lyrWrap">
		<div class="inner">
			<h3><strong>세종초등학교</strong> 팝업리스트</h3>
			<div class="cont">
				<div class="popuplst">
					<table>
						<caption>세종초등학교 팝업리스트 : 종류, 팝업타이틀, 바로가기링크 제공</caption>
						<colgroup>
							<col span="2" style="width:auto;">
							<col style="width:100px;">
						</colgroup>
						<tbody>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
							<tr>
								<td class="cate"><span>공통</span></td>
								<td class="tit"><p>팝업 타이틀 팝업 타이틀 팝업 타이틀 팝업 타이틀</p></td>
								<td><a href="" target="_blank" title="새창" class="bu_blank">바로가기</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="control">
			<a href="#allPopupList" class="hashClose">닫기 <i class="xi-close" aria-hidden="true"></i></a>
			<a href="#allPopupList" class="hashClose">오늘하루열지않기</a>
		</div>
	</div>
</div>
<!-- //레이어팝업 : 상단팝업 리스트-->

<!-- 레이어팝업 : 이미지 팝업 레이어_20230223 장주연 추가 -->
<div class="lyrPopup" id="imgPop">
	<div class="lyrWrap">
		<div class="inner">
			<div class="cont">
				<img src="/images/template/T0001/main/img_popup01.png" alt="우리 유치원에 오신것을 환영합니다!">
			</div>
		</div>
		<div class="control">
			<a href="#imgPop" class="hashClose">닫기 <i class="xi-close" aria-hidden="true"></i></a>
		</div>
	</div>
</div>
<!-- //레이어팝업 : 상단팝업 리스트-->
