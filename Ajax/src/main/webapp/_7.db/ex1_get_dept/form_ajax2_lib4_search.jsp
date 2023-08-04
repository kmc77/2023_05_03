<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>ajax 실행하기</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <style>
    td:nth-child(3n) { text-align: right; }
    #com { color: blue; } /* 파란색 텍스트를 위한 CSS 클래스 */
  </style>
</head>
<body>
  <div class="container">
    <h3 class="mt-5">검색할 부서 번호를 입력하세요</h3>
    <form class="mb-3">
      <div class="row">
        <input type='search' name='deptno' required pattern="[0-9]{2}" class="form-control col-8 ml-3">
        <button class="btn btn-info">검색</button>
      </div>
    </form>
  </div>
  <script>
    function getData() {
        $.ajax({
          type: "post",
          url: '${pageContext.request.contextPath}/dept_lib',
          dataType: 'json',
          success: function(rdata) {
            console.log("성공", rdata);
            if (rdata.length > 0) {
              let output = '<div id="result"><table class="table">'
                + '<thead><tr><th>부서번호</th><th>부서명</th><th>지역</th></tr></thead>'
                + '<tbody>';
              $(rdata).each(function (index, item) {
                output += '<tr>';
                output += ' <td>' + item.deptno + '</td>';
                output += ' <td>' + item.dname + '</td>';
                output += ' <td>' + item.loc + '</td>';
                output += '</tr>';
              });
              output += '</tbody></table></div>';
              $('.container').append(output);
            } else {
              $('.container').append('<div id="result">데이터가 존재하지 않습니다.</div>');
            }
          }, // success end
          error: function(request, status, error) {
            $(".container").append("<div id='result'>코드: "
              + request.status + "<br>"
              + "받은 데이터: " + request.responseText + "<br>"
              + "에러 상태: " + status + "<br>"
              + "에러 메시지: " + error + "</div>");
          } // error end
        }); // ajax end
    } // function getData() end
    
    getData();
    
    $("form").submit(function(e){
      e.preventDefault();
      
      $("#result").remove();
      
      $.ajax({
        type: "post",
        url: '${pageContext.request.contextPath}/dept_lib_search',
        data: {deptno: $("input").val()},
        dataType: 'json',
        success: function(rdata) {
          console.log("성공", rdata);
          if (rdata.length > 0) {
            let output = '<div id="result"><table class="table">'
              + '<thead><tr><th>부서번호</th><th>부서명</th><th>지역</th></tr></thead>'
              + '<tbody>';
            $(rdata).each(function (index, item) {
              output += '<tr>';
              output += ' <td>' + item.deptno + '</td>';
              output += ' <td>' + item.dname + '</td>';
              output += ' <td>' + item.loc + '</td>';
              output += '</tr>';
            });
            output += '</tbody></table></div>';
            $('.container').append(output);
          } else {
            $('.container').append('<div id="result">데이터가 존재하지 않습니다.</div>');
          }
        }, // success end
        error: function(request, status, error) {
          $(".container").append("<div id='result'>코드: "
            + request.status + "<br>"
            + "받은 데이터: " + request.responseText + "<br>"
            + "에러 상태: " + status + "<br>"
            + "에러 메시지: " + error + "</div>");
        } // error end
      }); // ajax end
    });
  </script>
</body>
</html>
