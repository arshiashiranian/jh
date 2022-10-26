function f() {
    date = new Date();
    year = date.getFullYear();
    month = date.getMonth() + 1;
    day = date.getDate();
    let p = document.getElementById('p1');
    p.innerHTML = 'TODAY IS <span style="color: rgba(233,158,91,255)">' + month + "/" + day + "/" + year + '</span>. (MM/DD/YYYY)';
}

async function addappointment() {
    let date = document.getElementById('adddate').value;
    let datestyle = document.getElementById('adddate');
    let time = document.getElementById('addtime').value;
    let timestyle = document.getElementById('addtime');
    if (date == '' || time == '') {
        alert('You need to fill all the required information.');
        if (date == '')
            datestyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            datestyle.style.backgroundColor = 'white';
        if (time == '')
            timestyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            timestyle.style.backgroundColor = 'white';
    }
    else {
        let y = confirm('You are adding an available appointment on ' + date + ' at ' + time + '. Is that correct?');
        if (y == true) {
            let x = await fetch('ajax.aspx?key=2&date=' + date + '&time=' + time);
            if (x.status == 200) {
                let t = await x.text();
                alert(t);
                if (t == 'Available appointment(s) successfully added! People can book it now!') {
                    location.reload();
                }
            }
            else
                alert('Something went wrong');
        }
    }
}

async function acceptappointment() {
    let code = document.getElementById('codecombo3').value;
    let codestyle = document.getElementById('codecombo3');
    if (code == 'Code') {
        alert('You need to fill all the required information.');
        codestyle.style.backgroundColor = 'rgba(233,158,91,255)';
    }
    else {
        codestyle.style.backgroundColor = 'white';
        let y = confirm('You are accepting the request with code ' + code + '. Is that correct ? ');
        if (y == true) {
            let x = await fetch('ajax.aspx?key=4&code=' + code);
            if (x.status == 200) {
                let t = await x.text();
                alert(t);
                if (t == 'Appointment request successfully accepted. Let them know!') {
                    location.reload();
                }
            }
            else
                alert('Something went wrong');
        }
    }
}

async function removeavailable() {
    let code = document.getElementById('codecombo2').value;
    let codestyle = document.getElementById('codecombo2');
    if (code == '') {
        alert('You need to fill the required information.');
        codestyle.style.backgroundColor = 'rgba(233,158,91,255)';
    }
    else {
        codestyle.style.backgroundColor = 'white';
        let y = confirm('You are removing the available appointment with the code ' + code + '. Is that correct?');
        if (y == true) {
            let x = await fetch('ajax.aspx?key=3&code=' + code);
            if (x.status == 200) {
                let t = await x.text();
                alert(t);
                if (t == 'Available appointment successfully removed! People cannot book it anymore.') {
                    location.reload();
                }
            }
            else
                alert('Something went wrong');
        }
    }
}