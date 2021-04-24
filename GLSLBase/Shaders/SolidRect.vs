#version 450
//입력은 여러개를 받을 수 있다.

//in vec3 a_Position; // 사용자가 정의한 입력 값
in vec3 a_Position;   // float 3개 로케이션 0번지에 들어오는 입력을 vec3로 해석해서  a_position이라는 변수에 집어 넣는다.
//in vec3 a_Position1;  // float 3개 ,총 6개 floats

//외부입력
//uniform float u_Scale; 
//uniform vec3 u_Position;

void main()
{
	//vec3 temp = a_Position;
	//temp = temp + u_Position;
	gl_Position = vec4(a_Position, 1);//OpenGL의 고유 출력 값

}
