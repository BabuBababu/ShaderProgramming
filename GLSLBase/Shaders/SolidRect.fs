#version 450

layout(location=0) out vec4 FragColor; //사용자가 정의한 출력 값


uniform vec4 u_Color;
void main()
{
	//FragColor = vec4(1,0,0,1); //출력하고 있다.
	FragColor = u_Color; //출력하고 있다.

}
