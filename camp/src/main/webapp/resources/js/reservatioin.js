  document.addEventListener('DOMContentLoaded', (event) => {
            function calculateNights() {
                const startDate = document.getElementById('startDate').value;
                const endDate = document.getElementById('endDate').value;

                if (startDate && endDate) {
                    const start = new Date(startDate);
                    const end = new Date(endDate);

                    // 날짜 차이를 밀리초로 계산
                    const diffTime = end - start;
                    // 밀리초를 일 수로 변환
                    const diffDays = diffTime / (1000 * 60 * 60 * 24);

                    // 결과를 화면에 표시
                    document.getElementById('result').textContent = `${diffDays} 박`;

                    // 총 금액 계산
                    calculateTotalPrice(diffDays);
                } else {
                    document.getElementById('result').textContent = `0 박`;
                    calculateTotalPrice(0);
                }
            }

            // input 이벤트 리스너 추가
            document.getElementById('startDate').addEventListener('input', calculateNights);
            document.getElementById('endDate').addEventListener('input', calculateNights);
        });

        // 총 금액 계산 함수
        function calculateTotalPrice(nights) {
            const price = parseInt(document.querySelector("#zone-price").textContent, 10); // price를 숫자로 변환
            const totalPrice = nights * price;
            document.querySelector("#totalPrice").innerHTML = totalPrice;
        }






function reserv(){
const zoneNo = document.querySelector("input[name=zoneNo]").value;
const startDateValue = document.querySelector("#startDate").value;
const endDateValue = document.querySelector("#endDate").value;
const count = document.querySelector("select").value;
const totalPrice = document.querySelector("#totalPrice").innerHTML;
const nightText = document.querySelector("#result").innerHTML;
const night = nightText.replace(/[^0-9]/g, '');

$.ajax({
url : "http://127.0.0.1:8080/reservation",
method : "post",
data : {
zoneNo : zoneNo ,
startDate : startDateValue ,
endDate : endDateValue ,
count : count ,
totalPrice : totalPrice
},
success : (x) => {
alert(x);
location.href = `/order/set?zoneNo=${zoneNo}&night=${night}`;
},
error : (error) => {
console.log(error);
},
});
}

