const userid = document.getElementById('userid');
const writeid = document.getElementById('writeid');
const iderror_message = document.getElementById('iderror_message');
const pwerror_message = document.getElementById('pwerror_message');
const loginbtn = document.getElementById('loginbtn');
const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
const regs = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;

/*이메일 정규식*/
function checkid(value){
	 if(value == ""){
		 writeid.style.height = "68px";
		 iderror_message.style.display = "block";
		 document.getElementById('iderror_message').innerHTML = "이메일 주소를 입력해주세요."
	 }else if(validEmailCheck(value)==false){
		 writeid.style.height = "68px";
		 iderror_message.style.display = "block";
		 document.getElementById('iderror_message').innerHTML = "올바른 이메일 주소를 입력해주세요."
	 }else{
		 writeid.style.height = "50px";
		 iderror_message.style.display = "none"
	 }
}

function validEmailCheck(value){
	var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var pattern = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
	var pattern = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
	var pattern = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);

    return (value.match(pattern)!=null)
}

function checkpw(value){
	 if(value == ""){
		 writepw.style.height = "68px";
		 pwerror_message.style.display = "block";
		 document.getElementById('pwerror_message').innerHTML = "비밀번호를 입력해주세요."
	 }else if(!reg.test(value)&&!(regs.test(value))){
		 writepw.style.height = "76px";
		 pwerror_message.style.display = "block";
		 document.getElementById('pwerror_message').innerHTML = "8자 이상,숫자,대문자,소문자,특수문자를 입력해주세요";
	 }else if(/(\w)\1\1\1/.test(value)){
		 writepw.style.height = "68px";
		 pwerror_message.style.display = "block";
		 document.getElementById('pwerror_message').innerHTML = "같은 문자를 4번 연속해서 사용할 수 없습니다!";
	 }else if(value.search(/\s/) != -1){
		 writepw.style.height = "68px";
		 pwerror_message.style.display = "block";
		 document.getElementById('pwerror_message').innerHTML = "비밀번호는 공백을 포함할 수 없습니다!"; 
	 }else{
		 writepw.style.height = "50px";
		 pwerror_message.style.display = "none";
	 }
}