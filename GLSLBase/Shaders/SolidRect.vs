#version 450

in vec3 a_Position;   // float position 3개
in vec3 a_Velocity; // float velocity 3개

//외부입력
uniform float u_Time;//누적시간

void main()
{
	vec3 newPos = a_Position;
	newPos = newPos + u_Time*a_Velocity;

	gl_Position = vec4(newPos, 1);//OpenGL의 고유 출력 값

}
