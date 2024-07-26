$.ajax({
  url : "http://127.0.0.1:8080/admin/api/owner ",
  method : "get",
  data : {},
  success : (x) => {

     const voList = x;

     const tbody = document.querySelector("tbody")
     let str = "";

     for(let i = 0; i < voList.length ; i++){
           str += "<tr>"
           str += "<td>"+ voList[i].no + "</td>";
           str += "<td>" + voList[i].id + "</td>";
           str += "<td>" + voList[i].pwd + "</td>"
           str += "<td>" + voList[i].nick + "</td>"
           str += "<td>" + voList[i].phone + "</td>"
           str += "<td>" + voList[i].name + "</td>"
           str += "<td>" + voList[i].email + "</td>"
           str += "<td>" + voList[i].businessNum + "</td>"
           str += "<td>" + voList[i].joinApprovalYn + "</td>"
           str += `<td><button onclick="approval(${voList[i].no});">승인하기</button></td>`
           str += "</tr>"
     }
     tbody.innerHTML = str;
  },
  error : (error) => {
     console.log(error);
  },
});


function approval(no){

  $.ajax({
     url : "http://127.0.0.1:8080/admin/api/approval",
     method : "post",
     data : {
        no : no
     },
     success : function(x){
        alert(x);
        location.href="/admin/owner"
     },
     error : function(error){
        alert(error);
     }
  });
};