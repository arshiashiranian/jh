function f() {
    var hamburger = document.getElementById('hamburger');
    var navMenu = document.getElementById('nav-menu');
    hamburger.classList.toggle('active');
    navMenu.classList.toggle('active');
}

async function submit() {
    let service = document.getElementById('servicecombo').value;
    let servicestyle = document.getElementById('servicecombo'); 
    let code = document.getElementById('codecombo').value;
    let codestyle = document.getElementById('codecombo');
    let name = document.getElementById('nametxt').value;
    let namestyle = document.getElementById('nametxt');
    let number = document.getElementById('numbertxt').value;
    let numberstyle = document.getElementById('numbertxt');
    let notes = document.getElementById('notestxt').value;
    if (service == 'SELECT A SERVICE' || code == 'APPOINTMENT CODE' || name == '' || number == '') {
        alert('You need to fill all the required information.');
        if (service == 'SELECT A SERVICE')
            servicestyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            servicestyle.style.backgroundColor = 'white';
        if (code == 'APPOINTMENT CODE')
            codestyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            codestyle.style.backgroundColor = 'white';
        if (name == '')
            namestyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            namestyle.style.backgroundColor = 'white';
        if (number == '')
            numberstyle.style.backgroundColor = 'rgba(233,158,91,255)';
        else
            numberstyle.style.backgroundColor = 'white';
    }
    else {
        let y = confirm('You, ' + name + ', want the appointment with the code ' + code + ' and your number is ' + number + '. Is that correct?');
        if (y == true) {
            let x = await fetch('ajax.aspx?key=1&service=' + service + '&code=' + code + '&name=' + name + '&number=' + number + '&note=' + notes);
            if (x.status == 200) {
                let t = await x.text();
                alert(t);
                if (t == 'Appointment request submitted. Send Jacob your payment proof to book the appointment before someone else does!') {
                    location.reload();
                }
            }
            else
                alert('Something went wrong');
        }
    }
}