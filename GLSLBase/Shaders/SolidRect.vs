#version 450

//in vec3 a_Position; // 사용자가 정의한 입력 값
in vec3 a_Position;   // float 3개 로케이션 0번지에 들어오는 입력을 vec3로 해석해서 position이라는 변수에 집어 넣는다.
in vec3 a_Position1;  // float 3개 ,총 6개 floats

uniform float u_Scale; //외부입력

void main()
{
	gl_Position = vec4(a_Position1*u_Scale, 1);//OpenGL의 고유 입력 값
}
