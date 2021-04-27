#version 450

in vec3 a_Position;   // float position 3개
in vec3 a_Velocity; // float velocity 3개
in float a_EmitTime; // float emittime 1개
in float a_LifeTime; // float lifetime 1개
in float a_Period; // float period 1개
in float a_Amp; // float amp 1개

//외부입력
uniform float u_Time;//누적시간

const vec3 c_Gravity = vec3(0,0,0);
const mat3 c_NV = mat3(0,-1,0,1,0,0,0,0,0);//-90도 회전행렬
		
void main()
{
	float newTime = u_Time - a_EmitTime;
	vec3 newPos = a_Position;

	if(newTime <0.0)
	{
		newPos = vec3(10000,10000,10000);	
	}
	else
	{
	
		//newTime = mod(newTime,a_LifeTime);
		//newPos = newPos + vec3(newTime,0,0); //x는 newTime에 따라서 계속 움직이게끔
		//newPos.y = newPos.y + (a_Amp*newTime) * sin(newTime * 3.14 * 2 * a_Period);
		
		float t = newTime;
		float tt = newTime*newTime;
		vec3 currVel = a_Velocity + t * c_Gravity;
		vec3 normalv = normalize(currVel * c_NV); //속도 벡터에 수직방향을 곱함
		newPos = newPos + u_Time*a_Velocity + 0.5 * c_Gravity * tt;
		newPos = newPos + normalv * a_Amp * sin(3.14 * 2 * a_Period * newTime);

	}
	
	gl_Position = vec4(newPos, 1);//OpenGL의 고유 출력 값

}
