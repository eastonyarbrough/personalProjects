//Solar system scale model control
let planetData = [];

fetch("https://api.le-systeme-solaire.net/rest/bodies/")
    .then(res => res.json())
    .then(res => {
        let controlArr = ["Uranus", "Pluto", "Neptune", "Jupiter", "Mars", "Mercury", "Saturn", "Earth", "Venus", "Sun"];
        res.bodies.forEach((e, index) => {
            controlArr.forEach((e, i) => {
                if (res.bodies[index].englishName == controlArr[i]) {
                    planetData.push(res.bodies[index]);
                }
            })
        })
        planetData.forEach((e, i) => {
            document.querySelector(`#${planetData[i].englishName.toLowerCase()}`).setAttribute("style", `width: ${(planetData[i].equaRadius / planetData[7].equaRadius) * 100}vw`);
        })
    })
    .catch(err => console.log(err))

//People in space control
fetch("http://api.open-notify.org/astros.json")
    .then(res => res.json())
    .then(res => {
        let issArr = [];
        let shenzhouArr = [];
        res.people.forEach((e, i) => {
            if (res.people[i].craft == "ISS") {
                issArr.push(res.people[i].name);
            }
            else if (res.people[i].craft == "Shenzhou 13") {
                shenzhouArr.push(res.people[i].name);
            }
        })
        document.querySelector("#iss").textContent = `Aboard the International Space Station: ${issArr.join(", ")}`;
        document.querySelector("#shenzhou13").textContent = `Aboard Shenzhou 13: ${shenzhouArr.join(", ")}`;
    })
    .catch(err => console.log(err))

//International Space Station tracker
getISSLocation();
function getISSLocation() {
    fetch("http://api.open-notify.org/iss-now.json")
        .then(res => res.json())
        .then(res => {
            let lat = res.iss_position.latitude;
            let long = res.iss_position.longitude;
            axios.get(`https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${lat}&longitude=${long}&localityLanguage=en`)
                .then(result => {
                    if (result.data.city !== "" && result.data.principalSubdivision !== "" && result.data.countryName !== "") {
                        document.querySelector("#local").textContent = `In space over: ${result.data.city}, ${result.data.principalSubdivision}, ${result.data.countryName}`;
                    }
                    else if (result.data.locality !== "" && result.data.countryName !== "") {
                        document.querySelector("#local").textContent = `In space over: ${result.data.locality}, ${result.data.countryName}`;
                    }
                    else {
                        document.querySelector("#local").textContent = `In space over: ${result.data.locality}`;
                    }
                })
        })
        .catch(err => console.log(err))
}

setInterval(getISSLocation, 1000);