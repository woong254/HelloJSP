/**
 * basic2.js
 */

const fruits = ['apple', 'banana', 'cherry']; //new Array();
fruits[3]= 'orange';

//추가, 삭제
fruits.push('melone'); // 뒤에 추가
fruits.unshift('mango'); // 앞에 추가
fruits.pop(); //melone // 뒤에 삭제
fruits.pop(); //orange
fruits.shift(); //mango // 앞에 삭제
fruits.shift(); //apple

for (let fruit of fruits) {
    console.log(fruit);
}

const members = [{id:'user01', name:'Hong', point: 100}];
members.push({id: 'user02', name: 'Park', point: 120});
members.push({id: 'user03', name: 'Kim', point: 90});

// for(let i = 0; i < members.length; i++) {
//   if(members[i].point >= 100)
//     console.log(`id: ${members[i].id}, name: ${members[i].name}, point: ${members[i].point}`);
// }

// 화면에 배열의 갯수만큼 회원정보를 출력하는 함수.
function shwoList(){
// 반복문. forEach
	members.forEach((elem, idx, ary) => {
	    let str = `<li>아이디: ${elem.id}, 이름: ${elem.name}, 포인트: ${elem.point}</li>`;
	    //ul 요소
	    document.querySelector('#list').innerHTML += str;
	});
}

// 이벤트.
document.querySelector('#addBtn').addEventListener('click', () => {
	let id = document.querySelector('#mid').value;
	let name = document.querySelector('#mname').value;
	let point = document.querySelector('#point').value;
	if (id == '' || name == '' || point == ''){
		alert('필수값을 입력하세요!')
		return
	}
	document.querySelector('#list').innerHTML = ''; //초기화
	// 배열에 추가.
	members.push({id: id, name: name, point: point});
	shwoList();
	//입력값 초기화
	document.querySelector('#mid').value = '';
	document.querySelector('#mname').value = '';
	document.querySelector('#point').value = '';
})

