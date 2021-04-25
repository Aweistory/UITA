// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33356,y:33142,varname:node_3138,prsc:2|emission-5920-RGB,olwid-2879-OUT,olcol-9961-OUT;n:type:ShaderForge.SFN_NormalVector,id:5419,x:32172,y:32746,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:9724,x:32387,y:32841,varname:node_9724,prsc:2,dt:0|A-5419-OUT,B-4440-OUT;n:type:ShaderForge.SFN_LightVector,id:4440,x:32172,y:32928,varname:node_4440,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5271,x:32612,y:32999,varname:node_5271,prsc:2|A-9724-OUT,B-6112-OUT;n:type:ShaderForge.SFN_Vector1,id:6112,x:32357,y:33109,varname:node_6112,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:5283,x:32612,y:33156,varname:node_5283,prsc:2|A-5271-OUT,B-6112-OUT;n:type:ShaderForge.SFN_Append,id:9236,x:32841,y:33239,varname:node_9236,prsc:2|A-5283-OUT,B-5586-OUT;n:type:ShaderForge.SFN_Tex2d,id:5920,x:33096,y:33239,ptovrint:False,ptlb:ColorRamp,ptin:_ColorRamp,varname:node_5920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2caa424e946efb84d873d8472fee7323,ntxv:0,isnm:False|UVIN-9236-OUT;n:type:ShaderForge.SFN_Vector1,id:5586,x:32612,y:33299,varname:node_5586,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:2879,x:33138,y:33433,varname:node_2879,prsc:2,v1:0.012;n:type:ShaderForge.SFN_Vector3,id:9961,x:33138,y:33503,varname:node_9961,prsc:2,v1:0.2627451,v2:0.1294118,v3:0.1490196;proporder:5920;pass:END;sub:END;*/

Shader "AweisTF/TF_001_Lambert_Half" {
    Properties {
        _ColorRamp ("ColorRamp", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.012,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0.2627451,0.1294118,0.1490196),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _ColorRamp; uniform float4 _ColorRamp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_6112 = 0.5;
                float2 node_9236 = float2(((dot(i.normalDir,lightDirection)*node_6112)+node_6112),0.1);
                float4 _ColorRamp_var = tex2D(_ColorRamp,TRANSFORM_TEX(node_9236, _ColorRamp));
                float3 emissive = _ColorRamp_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _ColorRamp; uniform float4 _ColorRamp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
