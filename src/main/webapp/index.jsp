<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>카카오맵 연습
</h1>
<br/>
<div id="map" style="width:500px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c8c0fa412906334ef5c3b96f12f6d043"></script>
<script>
    // 지금 브렌치는 마이클이 작성하고 있는 내용
    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(37.499333, 127.033162),
        level: 3
    };

    var map = new kakao.maps.Map(container, options);
    // 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다
    var points = [
        new kakao.maps.LatLng(37.499333, 127.033162)
    ];

    // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
    var bounds = new kakao.maps.LatLngBounds();

    var i, marker;
    for (i = 0; i < points.length; i++) {
        // 마커 생성
        marker =     new kakao.maps.Marker({ position : points[i] });
        marker.setMap(map); // 마커가 지도 위에 표시되도록 함

        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(points[i]);
    }

    function setBounds() {
        // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
        // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
        map.setBounds(bounds);
    }
</script>
</body>
</html>