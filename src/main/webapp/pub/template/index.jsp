<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>[작업현황] 세종시 교육청 학교통합 템플릿</title>
<style>
body {margin: 0; padding: 30px; line-height: 30px; font-family: '맑은 고딕'; font-size: 15px; color: #333;}
/* 타이틀 설정 */
h1 {margin: 0 0 30px; padding: 0; line-height: 50px; text-align: center; font-size: 30px; color: #000; letter-spacing: -1px;}
h2 {position: relative; margin: 20px 0; padding-left: 20px; font-size: 20px; color: #000; letter-spacing: -1px;}
h2:before {position: absolute; left: 0; top: 10px; width: 10px; height: 3px; background: #8ab1d6; content: "";}
h2 ~ h2 {margin-top: 30px;}
/* 상단프로젝트 정보 설정 */
.project {position: relative; padding: 20px 20px 20px 500px; height: 150px; border: 5px solid; border-image: linear-gradient(to right, #0054a5, #0074D3, #8ab1d6); border-image-slice: 1; overflow: hidden;}
.project li {margin-left: 20px;}
.info {position: absolute; left: 20px; top: 20px; margin: 0; padding: 0;}
.info .option {color: #ccc;}
.info .option span {text-decoration: line-through;}
.info .option strong {font-weight: normal; color: #333;}
.history {padding: 15px 0; background-color: #fcfcfc;}
.history ul {margin: 0 15px; padding: 0; height: 120px; list-style: none; overflow: hidden; overflow-y: auto;}
.history li {position: relative;margin-left: 10px;padding-left: 110px;font-size: 14px;color: #666;}
.history li p{margin:0; padding:0; line-height:23px;}
.history strong {position: absolute; top: 0; left: 0;}
.history strong:before {position: absolute; top: 50%; left: 90px; margin-top: -4px; width: 1px; height: 10px; background-color: #999; content: '';}
/* 테이블 설정 */
table {width: 100%; border-collapse: collapse; overflow: hidden;}
table caption {margin: 0; padding: 0; width: 0; height: 0; line-height: 0; font-size: 0; overflow: hidden;}
table tr:nth-child(even) {background-color: #f8f8f8;}
table th {position: relative; padding: 5px; font-size: 12px; border-top: 3px solid #333;}
table th:before {position: absolute; left: -1px; top: 50%; width: 1px; height: 10px; margin-top: -5px; background-color: #ccc; content: '';}
table td {padding: 5px 15px; vertical-align: top; border: 1px solid #efefef;}
table td:first-child {border-left: 0 none;}
table td:last-child, 
table td:last-child a {line-height: 25px; font-size: 14px; color: #555;}
table td:last-child {border-right: 0 none;}
table a {color: #f3a600;}
/* 기타 설정 */
.blank {padding: 10px; color: #000; background-color: #d0e4f7; border: 0 none;}
.update td {color: #ff6600;}
td.al {text-align: left;}
td.ac {text-align: center;}
td.ar {text-align: right;}
</style>
</head>
<body>
	<h1>[작업현황] 세종시 교육청 학교통합 템플릿</h1>
	<div class="project">
		<ul class="info">
			<li>참여인력 : 퍼블리셔팀</li>
			<li>개발언어 : JSP</li>
			<li>마크업언어 : HTML5</li>
			<li>제이쿼리버전 : 3.1.1</li>
			<li><span>웹접근성</span> / <span>반응형</span></li>
		</ul>

		<div class="history">
			<ul>
				<li><strong>2022-10-19</strong> <span>김연정</span>
					<p>템플릿 T0001 퍼블리싱 초안 SVN 업로드</p> 
				</li>
			</ul>
		</div>
	</div> 

	<h2>템플릿</h2>
	<table>
		<caption>템플릿 코드에 따른 작업현황</caption>
		<thead>
			<tr>
				<th scope="col">초중고 구분</th>
				<th scope="col">템플릿코드</th>
				<th scope="col">작업자</th>
				<th scope="col">진행여부</th>
				<th scope="col">link</th>
				<th scope="col">etc</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><strong>공통컨텐츠</strong></td>
				<td>인사말</td>
				<td></td>
				<td></td>
				<td><a href="/pub/web/공통컨텐츠/인사말.jsp" target="_blank">/pub/web/공통컨텐츠/인사말.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td></td>
				<td>연혁</td>
				<td></td>
				<td></td>
				<td><a href="/pub/web/공통컨텐츠/연혁.jsp" target="_blank">/pub/web/공통컨텐츠/연혁.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td></td>
				<td>상징</td>
				<td></td>
				<td></td>
				<td><a href="/pub/web/공통컨텐츠/상징.jsp" target="_blank">/pub/web/공통컨텐츠/상징.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td></td>
				<td>오시는길</td>
				<td></td>
				<td></td>
				<td><a href="/pub/web/공통컨텐츠/오시는길.jsp" target="_blank">/pub/web/공통컨텐츠/오시는길.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td></td>
				<td>스타일가이드</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0001/subLayout.jsp" target="_blank">/pub/template/T0001/subLayout.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 01</strong></td>
				<td>T0001</td>
				<td>김연정</td>
				<td></td>
				<td><a href="/pub/template/T0001/index.jsp" target="_blank">/pub/template/T0001/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 02</strong></td>
				<td>T0002</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0002/index.jsp" target="_blank">/pub/template/T0002/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 03</strong></td>
				<td>T0003</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0003/index.jsp" target="_blank">/pub/template/T0003/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 04</strong></td>
				<td>T0004</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0004/index.jsp" target="_blank">/pub/template/T0004/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 05</strong></td>
				<td>T0005</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0005/index.jsp" target="_blank">/pub/template/T0005/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 06</strong></td>
				<td>T0006</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0006/index.jsp" target="_blank">/pub/template/T0006/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 07</strong></td>
				<td>T0007</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0007/index.jsp" target="_blank">/pub/template/T0007/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 08</strong></td>
				<td>T0008</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0008/index.jsp" target="_blank">/pub/template/T0008/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 09</strong></td>
				<td>T0009</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0009/index.jsp" target="_blank">/pub/template/T0009/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 10</strong></td>
				<td>T0010</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0010/index.jsp" target="_blank">/pub/template/T0010/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 11</strong></td>
				<td>T0011</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0011/index.jsp" target="_blank">/pub/template/T0011/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 12</strong></td>
				<td>T0012</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0012/index.jsp" target="_blank">/pub/template/T0012/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 13</strong></td>
				<td>T0013</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0013/index.jsp" target="_blank">/pub/template/T0013/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 14</strong></td>
				<td>T0014</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0014/index.jsp" target="_blank">/pub/template/T0014/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 15</strong></td>
				<td>T0015</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0015/index.jsp" target="_blank">/pub/template/T0015/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 16</strong></td>
				<td>T0016</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0016/index.jsp" target="_blank">/pub/template/T0016/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 17</strong></td>
				<td>T0017</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0017/index.jsp" target="_blank">/pub/template/T0017/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 18</strong></td>
				<td>T0018</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0018/index.jsp" target="_blank">/pub/template/T0018/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 19</strong></td>
				<td>T0019</td>
				<td>서보람</td>
				<td></td>
				<td><a href="/pub/template/T0019/index.jsp" target="_blank">/pub/template/T0019/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 20</strong></td>
				<td>T0020</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0020/index.jsp" target="_blank">/pub/template/T0020/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 21</strong></td>
				<td>T0021</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0021/index.jsp" target="_blank">/pub/template/T0021/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 22</strong></td>
				<td>T0022</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0022/index.jsp" target="_blank">/pub/template/T0022/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 23</strong></td>
				<td>T0023</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0023/index.jsp" target="_blank">/pub/template/T0023/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 24</strong></td>
				<td>T0024</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0024/index.jsp" target="_blank">/pub/template/T0024/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>유치원 25</strong></td>
				<td>T0025</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0025/index.jsp" target="_blank">/pub/template/T0025/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 26</strong></td>
				<td>T0026</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0026/index.jsp" target="_blank">/pub/template/T0026/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 27</strong></td>
				<td>T0027</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0027/index.jsp" target="_blank">/pub/template/T0027/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 28</strong></td>
				<td>T0028</td>
				<td>조선영</td>
				<td></td>
				<td><a href="/pub/template/T0028/index.jsp" target="_blank">/pub/template/T0028/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 29</strong></td>
				<td>T0029</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0029/index.jsp" target="_blank">/pub/template/T0029/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 30</strong></td>
				<td>T0030</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0030/index.jsp" target="_blank">/pub/template/T0030/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 31</strong></td>
				<td>T0031</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0031/index.jsp" target="_blank">/pub/template/T0031/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 32</strong></td>
				<td>T0032</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0032/index.jsp" target="_blank">/pub/template/T0032/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 33</strong></td>
				<td>T0033</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0033/index.jsp" target="_blank">/pub/template/T0033/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 34</strong></td>
				<td>T0034</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0034/index.jsp" target="_blank">/pub/template/T0034/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 35</strong></td>
				<td>T0035</td>
				<td>김한울</td>
				<td></td>
				<td><a href="/pub/template/T0035/index.jsp" target="_blank">/pub/template/T0035/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 36</strong></td>
				<td>T0036</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0036/index.jsp" target="_blank">/pub/template/T0036/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 37</strong></td>
				<td>T0037</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0037/index.jsp" target="_blank">/pub/template/T0037/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 38</strong></td>
				<td>T0038</td>
				<td>장주연</td>
				<td></td>
				<td><a href="/pub/template/T0038/index.jsp" target="_blank">/pub/template/T0038/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 39</strong></td>
				<td>T0039</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0039/index.jsp" target="_blank">/pub/template/T0039/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 40</strong></td>
				<td>T0040</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0040/index.jsp" target="_blank">/pub/template/T0040/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 41</strong></td>
				<td>T0041</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0041/index.jsp" target="_blank">/pub/template/T0041/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 42</strong></td>
				<td>T0042</td>
				<td>서보람</td>
				<td></td>
				<td><a href="/pub/template/T0042/index.jsp" target="_blank">/pub/template/T0042/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 43</strong></td>
				<td>T0043</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0043/index.jsp" target="_blank">/pub/template/T0043/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 44</strong></td>
				<td>T0044</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0044/index.jsp" target="_blank">/pub/template/T0044/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 45</strong></td>
				<td>T0045</td>
				<td>우지혜</td>
				<td></td>
				<td><a href="/pub/template/T0045/index.jsp" target="_blank">/pub/template/T0045/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 46</strong></td>
				<td>T0046</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0046/index.jsp" target="_blank">/pub/template/T0046/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 47</strong></td>
				<td>T0047</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0047/index.jsp" target="_blank">/pub/template/T0047/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 48</strong></td>
				<td>T0048</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0048/index.jsp" target="_blank">/pub/template/T0048/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 49</strong></td>
				<td>T0049</td>
				<td>우지혜</td>
				<td></td>
				<td><a href="/pub/template/T0049/index.jsp" target="_blank">/pub/template/T0049/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>초등학교 50</strong></td>
				<td>T0050</td>
				<td>조선영</td>
				<td></td>
				<td><a href="/pub/template/T0050/index.jsp" target="_blank">/pub/template/T0050/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 51</strong></td>
				<td>T0051</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0051/index.jsp" target="_blank">/pub/template/T0051/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 52</strong></td>
				<td>T0052</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0052/index.jsp" target="_blank">/pub/template/T0052/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 53</strong></td>
				<td>T0053</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0053/index.jsp" target="_blank">/pub/template/T0053/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 54</strong></td>
				<td>T0054</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0054/index.jsp" target="_blank">/pub/template/T0054/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 55</strong></td>
				<td>T0055</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0055/index.jsp" target="_blank">/pub/template/T0055/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 56</strong></td>
				<td>T0056</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0056/index.jsp" target="_blank">/pub/template/T0056/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 57</strong></td>
				<td>T0057</td>
				<td>서보람</td>
				<td></td>
				<td><a href="/pub/template/T0057/index.jsp" target="_blank">/pub/template/T0057/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 58</strong></td>
				<td>T0058</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0058/index.jsp" target="_blank">/pub/template/T0058/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 59</strong></td>
				<td>T0059</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0059/index.jsp" target="_blank">/pub/template/T0059/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 60</strong></td>
				<td>T0060</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0060/index.jsp" target="_blank">/pub/template/T0060/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 61</strong></td>
				<td>T0061</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0061/index.jsp" target="_blank">/pub/template/T0061/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 62</strong></td>
				<td>T0062</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0062/index.jsp" target="_blank">/pub/template/T0062/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 63</strong></td>
				<td>T0063</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0063/index.jsp" target="_blank">/pub/template/T0063/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 64</strong></td>
				<td>T0064</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0064/index.jsp" target="_blank">/pub/template/T0064/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 65</strong></td>
				<td>T0065</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0065/index.jsp" target="_blank">/pub/template/T0065/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 66</strong></td>
				<td>T0066</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0066/index.jsp" target="_blank">/pub/template/T0066/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 67</strong></td>
				<td>T0067</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0067/index.jsp" target="_blank">/pub/template/T0067/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 68</strong></td>
				<td>T0068</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0068/index.jsp" target="_blank">/pub/template/T0068/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 69</strong></td>
				<td>T0069</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0069/index.jsp" target="_blank">/pub/template/T0069/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 70</strong></td>
				<td>T0070</td>
				<td>조선영</td>
				<td></td>
				<td><a href="/pub/template/T0070/index.jsp" target="_blank">/pub/template/T0070/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 71</strong></td>
				<td>T0071</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0071/index.jsp" target="_blank">/pub/template/T0071/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 72</strong></td>
				<td>T0072</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0072/index.jsp" target="_blank">/pub/template/T0072/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 73</strong></td>
				<td>T0073</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0073/index.jsp" target="_blank">/pub/template/T0073/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 74</strong></td>
				<td>T0074</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0074/index.jsp" target="_blank">/pub/template/T0074/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>중학교 75</strong></td>
				<td>T0075</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0075/index.jsp" target="_blank">/pub/template/T0075/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 76</strong></td>
				<td>T0076</td>
				<td>황규민</td>
				<td></td>
				<td><a href="/pub/template/T0076/index.jsp" target="_blank">/pub/template/T0076/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 77</strong></td>
				<td>T0077</td>
				<td>조선영</td>
				<td></td>
				<td><a href="/pub/template/T0077/index.jsp" target="_blank">/pub/template/T0077/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 78</strong></td>
				<td>T0078</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0078/index.jsp" target="_blank">/pub/template/T0078/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 79</strong></td>
				<td>T0079</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0079/index.jsp" target="_blank">/pub/template/T0079/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 80</strong></td>
				<td>T0080</td>
				<td>조선영</td>
				<td></td>
				<td><a href="/pub/template/T0080/index.jsp" target="_blank">/pub/template/T0080/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 81</strong></td>
				<td>T0081</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0081/index.jsp" target="_blank">/pub/template/T0081/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 82</strong></td>
				<td>T0082</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0082/index.jsp" target="_blank">/pub/template/T0082/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 83</strong></td>
				<td>T0083</td>
				<td>서보람</td>
				<td></td>
				<td><a href="/pub/template/T0083/index.jsp" target="_blank">/pub/template/T0083/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 84</strong></td>
				<td>T0084</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0084/index.jsp" target="_blank">/pub/template/T0084/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 85</strong></td>
				<td>T0085</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0085/index.jsp" target="_blank">/pub/template/T0085/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 86</strong></td>
				<td>T0086</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0086/index.jsp" target="_blank">/pub/template/T0086/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 87</strong></td>
				<td>T0087</td>
				<td>김다원</td>
				<td></td>
				<td><a href="/pub/template/T0087/index.jsp" target="_blank">/pub/template/T0087/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 88</strong></td>
				<td>T0088</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0088/index.jsp" target="_blank">/pub/template/T0088/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 89</strong></td>
				<td>T0089</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0089/index.jsp" target="_blank">/pub/template/T0009/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 90</strong></td>
				<td>T0090</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0090/index.jsp" target="_blank">/pub/template/T0090/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 91</strong></td>
				<td>T0091</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0091/index.jsp" target="_blank">/pub/template/T0091/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 92</strong></td>
				<td>T0092</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0092/index.jsp" target="_blank">/pub/template/T0092/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 93</strong></td>
				<td>T0093</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0093/index.jsp" target="_blank">/pub/template/T0093/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 94</strong></td>
				<td>T0094</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0094/index.jsp" target="_blank">/pub/template/T0094/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 95</strong></td>
				<td>T0095</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0095/index.jsp" target="_blank">/pub/template/T0095/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 96</strong></td>
				<td>T0096</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0096/index.jsp" target="_blank">/pub/template/T0096/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 97</strong></td>
				<td>T0097</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0097/index.jsp" target="_blank">/pub/template/T0097/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 98</strong></td>
				<td>T0098</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0098/index.jsp" target="_blank">/pub/template/T0098/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 99</strong></td>
				<td>T0099</td>
				<td>손예진</td>
				<td></td>
				<td><a href="/pub/template/T0099/index.jsp" target="_blank">/pub/template/T0099/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>고등학교 100</strong></td>
				<td>T0100</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0100/index.jsp" target="_blank">/pub/template/T0100/index.jsp</a></td>
				<td></td>
			</tr> 
			<tr>
				<td><strong>특수학교 101</strong></td>
				<td>T0101</td>
				<td></td>
				<td></td>
				<td><a href="/pub/template/T0101/index.jsp" target="_blank">/pub/template/T0101/index.jsp</a></td>
				<td></td>
			</tr> 
		</tbody>
	</table>
</body>
</html>