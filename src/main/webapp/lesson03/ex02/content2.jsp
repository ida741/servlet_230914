<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- section 태그가 안에 있어서 계속 중복됨, layout 안으로 옮기는 게 좋음 -->
<section class="content bg-secondary">
	다른 내용이 들어 있는 content2
	<hr>
	content 영역에 들어갈 jsp 이름만 변경해서 다른 내용을 넣을 수 있도록 한다.<br>
	이 페이지에는 bootstrap import 코드가 없지만 하나로 합쳐진 전체 jsp에서 적용된다.<br>
	현재 페이지는 실행 시마다 동적으로 수행되고 실행된 결과가 <b>layout.jsp에 include</b>된다.<br>
	java 코드는 각 jsp마다 따로 실행된다. = 다른 jsp에서 사용할 수 없다.
</section>