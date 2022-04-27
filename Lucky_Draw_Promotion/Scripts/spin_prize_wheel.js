let duration = 5; //thời gian kết thúc vòng quay
let spins = 15; //tốc độ quay
let theWheel = new WinWheel({
    'numSegments': 4,    //chia 4 phần bằng nhau
    'outerRadius': 212, //bán kính vòng quay
    'textFontSize': 18, //kích thước chữ
    'rotationAngle': 0, //đặt góc vòng quay từ 0 đến 360 độ
    'segments':         //màu săc và nội dung
        [
            { 'fillStyle': '#eae56f', 'text': '1' },
            { 'fillStyle': '#89f26e', 'text': '2' },
            { 'fillStyle': '#7de6ef', 'text': '3' },
            { 'fillStyle': '#e7706f', 'text': '4' },
        ],
    'animation': {
        'type': 'spinToStop',
        'duration': duration,
        'spins': spins,
        'callbackSound': playSound,
        'soundTrigger': 'pin',
        'callbackFinished': alerPrize,
    },
    'pins':
    {
        'number': 32
    }
});

//Kiểm tra vòng quay
let wheelSpinning = false;

//Tạo âm thanh và tải tập tin tick.mp3.
let audio = new Audio('tick.mp3');
function playSound() {
    audio.pause();
    audio.currentTime = 0;
    audio.play();
}

//Hiển thị các nút vòng quay
function statusButton(status) {
    if (status == 1) { //trước khi quay
        document.getElementById('spin_start').removeAttribute("disabled");
        document.getElementById('spin_reset').classList.add("hide");
    } else if (status == 2) { //đang quay
        document.getElementById('spin_start').setAttribute("disabled", false);
        document.getElementById('spin_reset').classList.add("hide");
    } else if (status == 3) { //kết quả
        document.getElementById('spin_reset').classList.remove("hide");
    } else {
        alert('Các giá trị của status: 1, 2, 3');
    }
}
statusButton(1);

//startSpin
function startSpin() {
    // Ensure that spinning can't be clicked again while already running.
    if (wheelSpinning == false) {
        //CSS hiển thị button
        statusButton(2);

        //Hàm bắt đầu quay
        theWheel.startAnimation();

        //Khóa vòng quay
        wheelSpinning = true;
    }
}

//Result
function alertPrize(indicatedSegment) {
    alert("Chúc mừng bạn trúng: " + indicatedSegment.text);

    //CSS hiển thị button
    statusButton(3);
}

//resetWheel
function resetWheel() {
    //CSS hiển thị button
    statusButton(1);

    theWheel.stopAnimation(false);  // Stop the animation, false as param so does not call callback function.
    theWheel.rotationAngle = 0;     // Re-set the wheel angle to 0 degrees.
    theWheel.draw();                // Call draw to render changes to the wheel.

    wheelSpinning = false;          // Reset to false to power buttons and spin can be clicked again.
}