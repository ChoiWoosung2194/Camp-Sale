



//------------------------------------------------------------------------------------------------------------------------
// 캘린더
//-- 캘린더 변수 설정
const calendarElement = document.getElementById('calendar');

const date = new Date();
let year = date.getFullYear();
let month = date.getMonth();
let lastClickedview = null;
let viewCnt = 0;

function renderCalendar(calendarEl, year, month) {
    calendarEl.innerHTML = '';

    const monthNames = ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"];
    const daysOfWeek = ["일", "월", "화", "수", "목", "금", "토"];

    // 캘린더 추가
    const header = document.createElement('div');
    header.className = 'calendar-header';

    const prevButton = document.createElement('button');
    prevButton.textContent = '◀';
    prevButton.onclick = () => changeMonth(-1);

    const nextButton = document.createElement('button');
    nextButton.textContent = '▶';
    nextButton.onclick = () => changeMonth(1);

    const title = document.createElement('div');
    title.textContent = `${year} ${monthNames[month]}`;

    header.appendChild(prevButton);
    header.appendChild(title);
    header.appendChild(nextButton);

    calendarEl.appendChild(header);

    const grid = document.createElement('div');
    grid.className = 'calendar-grid';

    for (const day of daysOfWeek) {
        const dayElement = document.createElement('div');
        dayElement.className = 'day';
        dayElement.textContent = day;
        grid.appendChild(dayElement);
    }

    const firstDay = new Date(year, month, 1).getDay();
    const lastDate = new Date(year, month + 1, 0).getDate();

    const prevLastDate = new Date(year, month, 0).getDate();
    for (let i = firstDay - 1; i >= 0; i--) {
        const dateElement = document.createElement('div');
        dateElement.className = 'date other-month before-month';
        dateElement.innerHTML = `<div class="number">${prevLastDate - i}</div><div class="empty"></div>`;
        grid.appendChild(dateElement);
    }

    for (let date = 1; date <= lastDate; date++) {
        const dayOfWeek = new Date(year, month, date).getDay();
        const dateElement = document.createElement('div');
        dateElement.className = 'date';
        if (dayOfWeek === 0) {
            dateElement.classList.add('sunday');
        } else if (dayOfWeek === 6) {
            dateElement.classList.add('saturday');
        }

        const today = new Date();
        if (year === today.getFullYear() && month === today.getMonth() && date === today.getDate()) {
            dateElement.classList.add('today');
        }
        dateElement.innerHTML = `<div class="number">${date}</div><div class="empty"></div>`;
        grid.appendChild(dateElement);
    }

    const totalCells = firstDay + lastDate;
    const nextDays = (7 - (totalCells % 7)) % 7;
    for (let i = 1; i <= nextDays; i++) {
        const dateElement = document.createElement('div');
        dateElement.className = 'date other-month after-month';
        dateElement.innerHTML = `<div class="number">${i}</div><div class="empty"></div>`;
        grid.appendChild(dateElement);
    }
    calendarEl.appendChild(grid);
}

function todayText() {
    let todayNumber = document.querySelector('.calendar-grid .date.today .number');
    let todayText = document.createElement('div');
    if (todayNumber) {
        todayText.textContent = 'today'; // 'D' 텍스트를 추가
        todayText.classList.add('today-text');
        todayNumber.appendChild(todayText);
    }
}

// 캘린더/사이드 캘린더 함수 호출
renderCalendar(calendarElement, year, month);
todayText();

//월 이동 함수
function changeMonth(offset) {
    month += offset;
    if (month < 0) {
        month = 11;
        year--;
    } else if (month > 11) {
        month = 0;
        year++;
    }

    renderCalendar(calendarElement, year, month);

    const week = document.querySelectorAll('.day');
    for (let i = 0; i < week.length; i++) {
        if (week[i].textContent === '일') {
            week[i].classList.add('redColor');
        } else if (week[i].textContent === '토') {
            week[i].classList.add('blueColor');
        }
    }
    todayText();
}

// 캘린더 주말 색 변경
const week = document.querySelectorAll('.day');
for (let i = 0; i < week.length; i++) {
    if (week[i].textContent === '일') {
        week[i].classList.add('redColor');
    } else if (week[i].textContent === '토') {
        week[i].classList.add('blueColor');
    }
}
//--------------------------------------------------------------------------------------------------
//일정 등록s
// 일정 등록 ajax
function createCalendar() {
    const title = document.getElementById('eventTitle');
    const startDate = document.getElementById('startDate');
    const endDate = document.getElementById('endDate');
    

    $.ajax({
        url: "/owner/calender",
        method: "post",
        data: {
            title: title.value,
            content: content.value,
            startDate: startDate.value,
            endDate: endDate.value,
            
        },
        success: function (response) {
            if (response === 1) {
                alert("일정이 등록되었습니다.");
                isCalendarBarVisible[0] = !isCalendarBarVisible[0];
                isCalendarBarVisible[1] = !isCalendarBarVisible[1];
                isCalendarBarVisible[2] = !isCalendarBarVisible[2];
               
                document.getElementById('eventTitle').value = "";
                document.getElementById('startDate').value = "";
                document.getElementById('endDate').value = "";
            } else {
                alert("일정 등록 실패");
            }
        },
        error: function (error) {
            alert("일정 등록 실패");
        }
    });
    submitNewEvent();
}

//일정 등록 화면 표시
let lastClickedDiv = null;
let KeyCnt = 0;
document.addEventListener('DOMContentLoaded', function () {
    const calendarDiv = document.getElementById('calendar');

    calendarDiv.addEventListener('click', function (event) {
        const clickedDiv = event.target.closest('.date');
        const clickedDivBar = event.target.closest('.event-bar');
        const clickDay = clickedDiv.querySelector('.number').textContent;

        if (clickedDiv && !clickedDivBar) {
            KeyCnt++;
            if (KeyCnt % 2 == 0) {
                hideNewEventForm();
            } else if (KeyCnt % 2 != 0) {
                showNewEventForm(clickedDiv, clickDay);
            }
        }
    });
    document.addEventListener('keydown', function (event) {
        if (event.ctrlKey && event.key === '.') {
            KeyCnt++;
            if (KeyCnt % 2 == 0) {
                hideNewEventForm();
            } else if (KeyCnt % 2 != 0) {
                showNewEventForm();
            }
        }
    });
});

function showNewEventForm() {
    const form = document.getElementById('newEventForm');
    form.style.display = 'block';
    const formRect = form.getBoundingClientRect();
    const left = (window.innerWidth - formRect.width) / 2;
    const top = (window.innerHeight - formRect.height) / 2;
    form.style.left = `${left}px`;
    form.style.top = `${top}px`;
}

function showNewEventForm(dateDiv, clickDay) {
    const startDate = document.querySelector('#startDate');

    let clickDate = new Date(year, month, clickDay);
    const newYear = clickDate.getFullYear();
    const newMonth = (clickDate.getMonth() + 1).toString().padStart(2, '0'); // 월은 0부터 시작하므로 1을 더함
    const newDay = clickDate.getDate().toString().padStart(2, '0');

    // 날짜 형식을 'YYYY-MM-DD'로 설정
    const formattedDate = newYear + '-' + newMonth + '-' + newDay;
    startDate.value = formattedDate;

    const form = document.getElementById('newEventForm');
    form.style.display = 'block';
    const rect = dateDiv.getBoundingClientRect();
    const formRect = form.getBoundingClientRect();

    let left = rect.right + 195;
    if (left + formRect.width > window.innerWidth + 300) {
        left = rect.left - formRect.width + 185;
    }
    let top = rect.top + 145;
    if (top > 200) {
        top = 399.40000915527344;
    }
    form.style.left = `${left}px`;
    form.style.top = `${top}px`;
    form.scrollIntoView({ behavior: 'smooth', block: 'start' });
}

function hideNewEventForm() {
    const form = document.getElementById('newEventForm');
    form.style.display = 'none';
}

function closeFormEvent() {
    KeyCnt++;
    hideNewEventForm();
}

function submitNewEvent() {
    KeyCnt++;
    if (KeyCnt % 2 == 0) {
        hideNewEventForm();
    } else if (KeyCnt % 2 != 0) {
        showNewEventForm();
    }
}


//---------------------------------------------------------------------------------------------------

//일정 등록 유효성 검사
// 등록 버튼과 관련된 요소를 가져옵니다.
const submitBtn = document.getElementById('submitBtn');
const eventTitleInput = document.getElementById('eventTitle');
const startDateInput = document.getElementById('startDate');
const endDateInput = document.getElementById('endDate');

let alertShown = false; // 알람 메시지가 이미 한 번 떴는지를 체크하는 변수

// 입력 필드에 변화가 생기면 체크하는 함수를 정의합니다.
function checkInputs() {
    const eventTitle = eventTitleInput.value;
   
    const startDateValue = startDateInput.value;
    const endDateValue = endDateInput.value;
    const startDate = new Date(startDateValue);
    const endDate = new Date(endDateValue);

    // 초기화
    submitBtn.classList.remove('opacity');
    submitBtn.disabled = false;
    submitBtn.style.backgroundColor = '#6eadff';

    // 제목 길이 체크
    if (eventTitle.length > 13) {
        eventTitleInput.value = eventTitle.substring(0, 13);
        alert("제목은 최대 13글자까지 입력 가능합니다.");
    }


    // 날짜 유효성 체크
    if (startDateValue !== '' && endDateValue !== '') {
        if (endDate < startDate) {
            if (!alertShown) {
                alert("시작일은 종료일보다 빨라야 합니다.");
                alertShown = true; // 알람 메시지 플래그 설정
            }
            submitBtn.disabled = true;
            submitBtn.style.backgroundColor = '#ccc';
        }
    } else {
        submitBtn.disabled = true;
        submitBtn.style.backgroundColor = '#ccc';
    }
}

// 입력 필드의 변화를 감지하여 checkInputs 함수를 호출합니다.
eventTitleInput.addEventListener('input', checkInputs);
startDateInput.addEventListener('change', function () {
    checkInputs();
    alertShown = false; // 알람 메시지 플래그 초기화
});
endDateInput.addEventListener('change', function () {
    checkInputs();
    alertShown = false; // 알람 메시지 플래그 초기화
});

// 폼이 처음 로드될 때도 한 번 호출하여 초기 상태를 설정합니다.
checkInputs();


//---------------------------------------------------------------------------------------------------

//연도 이동
const yearSelect = document.getElementById('yearSelect');
const monthSelect = document.getElementById('monthSelect');
const currentDate = new Date();

const monthNames = ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"];
for (let i = 0; i < 12; i++) {
    const option = document.createElement('option');
    option.value = i;
    option.textContent = monthNames[i];
    monthSelect.appendChild(option);
}

const currentYear = currentDate.getFullYear();
for (let year = currentYear - 5; year <= currentYear + 5; year++) {
    const option = document.createElement('option');
    option.value = year;
    option.textContent = year;
    yearSelect.appendChild(option);
}

yearSelect.value = currentDate.getFullYear();
monthSelect.value = currentDate.getMonth().toString();

function handleMonthChange() {
    year = parseInt(yearSelect.value);
    month = parseInt(monthSelect.value);
    let combinedEvents = [].concat(...Object.values(calendarBar));
    renderCalendar(calendarElement, year, month, combinedEvents);
    todayText();
}

let calendarBars = document.querySelectorAll('.empty .event-bar');
// 각 calendarBars 요소에 클릭 이벤트 핸들러 추가
calendarBars.forEach(function (bar) {
    bar.addEventListener('click', function (event) {
        event.stopPropagation();
    });
});
//--------------------------------------------------------------










