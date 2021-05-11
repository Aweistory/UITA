// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34088,y:33642,varname:node_3138,prsc:2|emission-9662-OUT,olwid-9911-OUT,olcol-1370-RGB;n:type:ShaderForge.SFN_NormalVector,id:5419,x:32038,y:33115,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:9724,x:32538,y:32717,varname:node_9724,prsc:2,dt:0|A-5419-OUT,B-4440-OUT;n:type:ShaderForge.SFN_LightVector,id:4440,x:32038,y:33266,varname:node_4440,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5271,x:32763,y:32875,varname:node_5271,prsc:2|A-9724-OUT,B-6112-OUT;n:type:ShaderForge.SFN_Vector1,id:6112,x:32508,y:32985,varname:node_6112,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:5283,x:32763,y:33032,varname:node_5283,prsc:2|A-5271-OUT,B-6112-OUT;n:type:ShaderForge.SFN_Append,id:9236,x:32992,y:33115,varname:node_9236,prsc:2|A-5283-OUT,B-5586-OUT;n:type:ShaderForge.SFN_Tex2d,id:5920,x:33454,y:33242,ptovrint:False,ptlb:ColorRamp,ptin:_ColorRamp,varname:_ColorRamp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2caa424e946efb84d873d8472fee7323,ntxv:0,isnm:False|UVIN-9236-OUT;n:type:ShaderForge.SFN_Vector1,id:5586,x:32763,y:33175,varname:node_5586,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector4Property,id:1565,x:32038,y:33541,ptovrint:False,ptlb:light_offset_1,ptin:_light_offset_1,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:3532,x:32038,y:33722,ptovrint:False,ptlb:light_offset_2,ptin:_light_offset_2,varname:node_3532,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:8207,x:32358,y:33517,varname:node_8207,prsc:2|A-5419-OUT,B-1565-XYZ;n:type:ShaderForge.SFN_Add,id:9506,x:32358,y:33701,varname:node_9506,prsc:2|A-5419-OUT,B-3532-XYZ;n:type:ShaderForge.SFN_Normalize,id:5296,x:32556,y:33517,varname:node_5296,prsc:2|IN-8207-OUT;n:type:ShaderForge.SFN_Normalize,id:81,x:32556,y:33701,varname:node_81,prsc:2|IN-9506-OUT;n:type:ShaderForge.SFN_Dot,id:2240,x:32772,y:33494,varname:node_2240,prsc:2,dt:0|A-4440-OUT,B-5296-OUT;n:type:ShaderForge.SFN_Dot,id:5465,x:32772,y:33679,varname:node_5465,prsc:2,dt:0|A-4440-OUT,B-81-OUT;n:type:ShaderForge.SFN_Slider,id:9203,x:32765,y:33415,ptovrint:False,ptlb:hightlight_size_1,ptin:_hightlight_size_1,varname:node_9203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.9860014,max:1;n:type:ShaderForge.SFN_Slider,id:2588,x:32751,y:33859,ptovrint:False,ptlb:hightlight_size_2,ptin:_hightlight_size_2,varname:node_2588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.9551284,max:1;n:type:ShaderForge.SFN_Max,id:2855,x:33280,y:33590,varname:node_2855,prsc:2|A-7650-OUT,B-6759-OUT;n:type:ShaderForge.SFN_Clamp01,id:2475,x:33454,y:33590,varname:node_2475,prsc:2|IN-2855-OUT;n:type:ShaderForge.SFN_Lerp,id:2614,x:33630,y:33438,varname:node_2614,prsc:2|A-5920-RGB,B-9339-RGB,T-2475-OUT;n:type:ShaderForge.SFN_Color,id:9339,x:33454,y:33438,ptovrint:False,ptlb:highlight_color,ptin:_highlight_color,varname:node_9339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:7020,x:33427,y:33796,varname:node_7020,prsc:2|EXP-1699-OUT;n:type:ShaderForge.SFN_Vector1,id:1699,x:33268,y:33816,varname:node_1699,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:1914,x:33623,y:33796,varname:node_1914,prsc:2|A-7020-OUT,B-1370-RGB;n:type:ShaderForge.SFN_Color,id:1370,x:33427,y:33991,ptovrint:False,ptlb:Fresnel_color,ptin:_Fresnel_color,varname:node_1370,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Blend,id:9662,x:33889,y:33642,varname:node_9662,prsc:2,blmd:6,clmp:True|SRC-2614-OUT,DST-1914-OUT;n:type:ShaderForge.SFN_Slider,id:9911,x:33758,y:33927,ptovrint:False,ptlb:outline_size,ptin:_outline_size,varname:node_9911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.015,max:0.015;n:type:ShaderForge.SFN_Step,id:7650,x:33077,y:33483,varname:node_7650,prsc:2|A-9203-OUT,B-2240-OUT;n:type:ShaderForge.SFN_Step,id:6759,x:33106,y:33771,varname:node_6759,prsc:2|A-2588-OUT,B-5465-OUT;proporder:5920-1565-3532-9203-2588-9339-1370-9911;pass:END;sub:END;*/

Shader "AweisTF/TF_001_Lambert_Half_Ex" {
    Properties {
        _ColorRamp ("ColorRamp", 2D) = "white" {}
        _light_offset_1 ("light_offset_1", Vector) = (0,0,0,0)
        _light_offset_2 ("light_offset_2", Vector) = (0,0,0,0)
        _hightlight_size_1 ("hightlight_size_1", Range(0.6, 1)) = 0.9860014
        _hightlight_size_2 ("hightlight_size_2", Range(0.6, 1)) = 0.9551284
        _highlight_color ("highlight_color", Color) = (1,1,1,1)
        _Fresnel_color ("Fresnel_color", Color) = (1,1,1,1)
        _outline_size ("outline_size", Range(0, 0.015)) = 0.015
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel_color)
                UNITY_DEFINE_INSTANCED_PROP( float, _outline_size)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _outline_size_var = UNITY_ACCESS_INSTANCED_PROP( Props, _outline_size );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_outline_size_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _Fresnel_color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel_color );
                return fixed4(_Fresnel_color_var.rgb,0);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _ColorRamp; uniform float4 _ColorRamp_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _light_offset_1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _light_offset_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _hightlight_size_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _hightlight_size_2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _highlight_color)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel_color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_6112 = 0.5;
                float2 node_9236 = float2(((dot(i.normalDir,lightDirection)*node_6112)+node_6112),0.1);
                float4 _ColorRamp_var = tex2D(_ColorRamp,TRANSFORM_TEX(node_9236, _ColorRamp));
                float4 _highlight_color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _highlight_color );
                float _hightlight_size_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _hightlight_size_1 );
                float4 _light_offset_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _light_offset_1 );
                float node_2240 = dot(lightDirection,normalize((i.normalDir+_light_offset_1_var.rgb)));
                float _hightlight_size_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _hightlight_size_2 );
                float4 _light_offset_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _light_offset_2 );
                float node_5465 = dot(lightDirection,normalize((i.normalDir+_light_offset_2_var.rgb)));
                float4 _Fresnel_color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel_color );
                float3 emissive = saturate((1.0-(1.0-lerp(_ColorRamp_var.rgb,_highlight_color_var.rgb,saturate(max(step(_hightlight_size_1_var,node_2240),step(_hightlight_size_2_var,node_5465)))))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)*_Fresnel_color_var.rgb))));
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _ColorRamp; uniform float4 _ColorRamp_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _light_offset_1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _light_offset_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _hightlight_size_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _hightlight_size_2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _highlight_color)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel_color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
