xof 0303txt 0032
template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template EffectInstance {
 <e331f7e4-0559-4cc2-8e99-1cec1657928f>
 STRING EffectFilename;
 [...]
}

template EffectParamFloats {
 <3014b9a0-62f5-478c-9b86-e4ac9f4e418b>
 STRING ParamName;
 DWORD nFloats;
 array FLOAT Floats[nFloats];
}

template EffectParamString {
 <1dbc4c88-94c1-46ee-9076-2c28818c9481>
 STRING ParamName;
 STRING Value;
}

template EffectParamDWord {
 <e13963bc-ae51-4c5d-b00f-cfa3a9d97ce5>
 STRING ParamName;
 DWORD Value;
}


Material skyscrapers {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "Skyscrp.tga";
 }
}

Material buildz1 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz1.tga";
 }
}

Material buildz3 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz3.tga";
 }
}

Material buildz4 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz4.tga";
 }
}

Material buildz5 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz5.tga";
 }
}

Material buildz6 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz6.tga";
 }
}

Material buildz2 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "buildz2.tga";
 }
}

Material roads {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "roads.tga";
 }
}

Material roads-2 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "roads2.tga";
 }
}

Material tree-01 {
 1.000000;1.000000;1.000000;1.000000;;
 3.200000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "trees-02.tga";
 }
}

Frame building-commercial_09 {
 

 FrameTransformMatrix {
  1.000000,0.000000,0.000000,0.000000,0.000000,-0.000000,-1.000000,0.000000,-0.000000,1.000000,-0.000000,0.000000,0.000000,-12.670539,12.491668,1.000000;;
 }

 Frame {
  

  FrameTransformMatrix {
   1.000000,-0.000000,0.000000,0.000000,-0.000000,1.000000,-0.000000,0.000000,0.000000,-0.000000,1.000000,0.000000,0.000000,-0.000000,0.000000,1.000000;;
  }

  Mesh  {
   174;
   24.342592;-0.551106;8.561585;,
   24.342575;11.036792;8.561586;,
   -0.053712;11.036758;8.561586;,
   -0.053712;11.036758;8.561586;,
   -0.053696;-0.551140;8.561585;,
   24.342592;-0.551106;8.561585;,
   24.342592;-0.551106;0.000004;,
   24.342592;-0.551106;8.561585;,
   4.162122;-0.551134;3.758732;,
   4.162122;-0.551134;3.758732;,
   4.162122;-0.551134;0.000004;,
   24.342592;-0.551106;0.000004;,
   -0.053696;-0.551140;8.561585;,
   -0.053696;-0.551140;3.758732;,
   4.162122;-0.551134;3.758732;,
   4.162122;-0.551134;3.758732;,
   24.342592;-0.551106;8.561585;,
   -0.053696;-0.551140;8.561585;,
   -0.053712;11.036758;8.561586;,
   -24.450005;11.036724;8.561586;,
   -24.449989;-0.551173;8.561585;,
   -24.449989;-0.551173;8.561585;,
   -0.053696;-0.551140;8.561585;,
   -0.053712;11.036758;8.561586;,
   -0.053696;-0.551140;8.561585;,
   -24.449989;-0.551173;8.561585;,
   -4.253972;-0.551145;3.758732;,
   -4.253972;-0.551145;3.758732;,
   -0.053696;-0.551140;3.758732;,
   -0.053696;-0.551140;8.561585;,
   -24.449989;-0.551173;0.000004;,
   -4.253972;-0.551145;0.000004;,
   -4.253972;-0.551145;3.758732;,
   -4.253972;-0.551145;3.758732;,
   -24.449989;-0.551173;8.561585;,
   -24.449989;-0.551173;0.000004;,
   -24.450005;11.036723;0.000004;,
   -24.450005;11.036724;8.561586;,
   -4.253984;11.035741;3.758732;,
   -4.253984;11.035741;3.758732;,
   -4.253984;11.035741;0.000004;,
   -24.450005;11.036723;0.000004;,
   -0.053712;11.036758;8.561586;,
   -0.053710;11.035748;3.758732;,
   -4.253984;11.035741;3.758732;,
   -4.253984;11.035741;3.758732;,
   -24.450005;11.036724;8.561586;,
   -0.053712;11.036758;8.561586;,
   -36.435940;-12.202883;16.831007;,
   -24.241211;-12.202863;16.831013;,
   -24.241247;12.202804;16.831013;,
   -24.241247;12.202804;16.831013;,
   -36.435982;12.202787;16.831007;,
   -36.435940;-12.202883;16.831007;,
   -36.435940;-12.202883;0.000001;,
   -24.241211;-12.202863;0.000003;,
   -24.241211;-12.202863;16.831013;,
   -24.241211;-12.202863;16.831013;,
   -36.435940;-12.202883;16.831007;,
   -36.435940;-12.202883;0.000001;,
   -24.241211;-12.202863;0.000003;,
   -24.241247;12.202804;0.000003;,
   -24.241247;12.202804;16.831013;,
   -24.241247;12.202804;16.831013;,
   -24.241211;-12.202863;16.831013;,
   -24.241211;-12.202863;0.000003;,
   -24.241247;12.202804;0.000003;,
   -36.435982;12.202787;0.000001;,
   -36.435982;12.202787;16.831007;,
   -36.435982;12.202787;16.831007;,
   -24.241247;12.202804;16.831013;,
   -24.241247;12.202804;0.000003;,
   -36.435982;12.202787;0.000001;,
   -36.435940;-12.202883;0.000001;,
   -36.435940;-12.202883;16.831007;,
   -36.435940;-12.202883;16.831007;,
   -36.435982;12.202787;16.831007;,
   -36.435982;12.202787;0.000001;,
   24.241207;12.202868;16.831011;,
   24.241238;-12.202797;16.831011;,
   36.435974;-12.202784;16.831005;,
   36.435974;-12.202784;16.831005;,
   36.435936;12.202887;16.831005;,
   24.241207;12.202868;16.831011;,
   24.241238;-12.202797;16.831011;,
   24.241238;-12.202797;0.000002;,
   36.435974;-12.202784;0.000001;,
   36.435974;-12.202784;0.000001;,
   36.435974;-12.202784;16.831005;,
   24.241238;-12.202797;16.831011;,
   24.241207;12.202868;16.831011;,
   24.241207;12.202868;0.000002;,
   24.241238;-12.202797;0.000002;,
   24.241238;-12.202797;0.000002;,
   24.241238;-12.202797;16.831011;,
   24.241207;12.202868;16.831011;,
   36.435936;12.202887;16.831005;,
   36.435936;12.202887;0.000001;,
   24.241207;12.202868;0.000002;,
   24.241207;12.202868;0.000002;,
   24.241207;12.202868;16.831011;,
   36.435936;12.202887;16.831005;,
   36.435974;-12.202784;16.831005;,
   36.435974;-12.202784;0.000001;,
   36.435936;12.202887;0.000001;,
   36.435936;12.202887;0.000001;,
   36.435936;12.202887;16.831005;,
   36.435974;-12.202784;16.831005;,
   -0.053712;11.036758;8.561586;,
   24.342575;11.036792;8.561586;,
   4.162109;11.035754;3.758732;,
   4.162109;11.035754;3.758732;,
   -0.053710;11.035748;3.758732;,
   -0.053712;11.036758;8.561586;,
   24.342575;11.036791;0.000004;,
   4.162109;11.035755;0.000004;,
   4.162109;11.035754;3.758732;,
   4.162109;11.035754;3.758732;,
   24.342575;11.036792;8.561586;,
   24.342575;11.036791;0.000004;,
   4.162109;11.035754;3.758732;,
   4.162109;11.035755;0.000004;,
   4.162122;-0.551134;0.000004;,
   4.162122;-0.551134;0.000004;,
   4.162122;-0.551134;3.758732;,
   4.162109;11.035754;3.758732;,
   -0.053710;11.035748;3.758732;,
   4.162109;11.035754;3.758732;,
   4.162122;-0.551134;3.758732;,
   4.162122;-0.551134;3.758732;,
   -0.053696;-0.551140;3.758732;,
   -0.053710;11.035748;3.758732;,
   -4.253984;11.035741;0.000004;,
   -4.253984;11.035741;3.758732;,
   -4.253972;-0.551145;3.758732;,
   -4.253972;-0.551145;3.758732;,
   -4.253972;-0.551145;0.000004;,
   -4.253984;11.035741;0.000004;,
   -4.253984;11.035741;3.758732;,
   -0.053710;11.035748;3.758732;,
   -0.053696;-0.551140;3.758732;,
   -0.053696;-0.551140;3.758732;,
   -4.253972;-0.551145;3.758732;,
   -4.253984;11.035741;3.758732;,
   -12.031816;0.274618;12.137825;,
   11.068529;0.274646;12.137825;,
   11.068519;9.894098;12.137820;,
   11.068519;9.894098;12.137820;,
   -12.031833;9.894071;12.137820;,
   -12.031816;0.274618;12.137825;,
   11.068529;0.274646;12.137825;,
   11.068529;0.274647;8.289066;,
   11.068519;9.894098;8.289063;,
   11.068519;9.894098;8.289063;,
   11.068519;9.894098;12.137820;,
   11.068529;0.274646;12.137825;,
   -12.031816;0.274618;12.137825;,
   -12.031816;0.274618;8.289066;,
   11.068529;0.274647;8.289066;,
   11.068529;0.274647;8.289066;,
   11.068529;0.274646;12.137825;,
   -12.031816;0.274618;12.137825;,
   -12.031833;9.894071;12.137820;,
   -12.031833;9.894071;8.289063;,
   -12.031816;0.274618;8.289066;,
   -12.031816;0.274618;8.289066;,
   -12.031816;0.274618;12.137825;,
   -12.031833;9.894071;12.137820;,
   11.068519;9.894098;12.137820;,
   11.068519;9.894098;8.289063;,
   -12.031833;9.894071;8.289063;,
   -12.031833;9.894071;8.289063;,
   -12.031833;9.894071;12.137820;,
   11.068519;9.894098;12.137820;;
   58;
   3;0,1,2;,
   3;3,4,5;,
   3;6,7,8;,
   3;9,10,11;,
   3;12,13,14;,
   3;15,16,17;,
   3;18,19,20;,
   3;21,22,23;,
   3;24,25,26;,
   3;27,28,29;,
   3;30,31,32;,
   3;33,34,35;,
   3;36,37,38;,
   3;39,40,41;,
   3;42,43,44;,
   3;45,46,47;,
   3;48,49,50;,
   3;51,52,53;,
   3;54,55,56;,
   3;57,58,59;,
   3;60,61,62;,
   3;63,64,65;,
   3;66,67,68;,
   3;69,70,71;,
   3;72,73,74;,
   3;75,76,77;,
   3;78,79,80;,
   3;81,82,83;,
   3;84,85,86;,
   3;87,88,89;,
   3;90,91,92;,
   3;93,94,95;,
   3;96,97,98;,
   3;99,100,101;,
   3;102,103,104;,
   3;105,106,107;,
   3;108,109,110;,
   3;111,112,113;,
   3;114,115,116;,
   3;117,118,119;,
   3;120,121,122;,
   3;123,124,125;,
   3;126,127,128;,
   3;129,130,131;,
   3;132,133,134;,
   3;135,136,137;,
   3;138,139,140;,
   3;141,142,143;,
   3;144,145,146;,
   3;147,148,149;,
   3;150,151,152;,
   3;153,154,155;,
   3;156,157,158;,
   3;159,160,161;,
   3;162,163,164;,
   3;165,166,167;,
   3;168,169,170;,
   3;171,172,173;;

   MeshNormals  {
    174;
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000000;-0.000000;1.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000049;1.000000;-0.000000;,
    0.000041;1.000000;-0.000031;,
    0.000018;1.000000;-0.000130;,
    0.000018;1.000000;-0.000130;,
    0.000049;1.000000;-0.000000;,
    0.000049;1.000000;-0.000000;,
    -0.000001;1.000000;-0.000210;,
    -0.000002;1.000000;-0.000210;,
    0.000018;1.000000;-0.000130;,
    0.000018;1.000000;-0.000130;,
    0.000041;1.000000;-0.000031;,
    -0.000001;1.000000;-0.000210;,
    -0.000000;-0.000000;1.000000;,
    -0.000000;-0.000000;1.000000;,
    -0.000000;-0.000000;1.000000;,
    -0.000000;-0.000000;1.000000;,
    -0.000000;-0.000000;1.000000;,
    -0.000000;-0.000000;1.000000;,
    0.000002;-1.000000;0.000000;,
    0.000002;-1.000000;0.000000;,
    0.000002;-1.000000;0.000000;,
    0.000002;-1.000000;0.000000;,
    0.000002;-1.000000;0.000000;,
    0.000002;-1.000000;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    0.000000;0.000000;1.000000;,
    0.000000;0.000000;1.000000;,
    0.000000;0.000000;1.000000;,
    0.000000;0.000000;1.000000;,
    0.000000;0.000000;1.000000;,
    0.000000;0.000000;1.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -1.000000;-0.000001;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    1.000000;0.000002;0.000000;,
    1.000000;0.000002;0.000000;,
    1.000000;0.000002;0.000000;,
    1.000000;0.000002;0.000000;,
    1.000000;0.000002;0.000000;,
    1.000000;0.000002;0.000000;,
    -0.000001;1.000000;-0.000210;,
    -0.000044;1.000000;-0.000031;,
    -0.000021;1.000000;-0.000130;,
    -0.000021;1.000000;-0.000130;,
    -0.000002;1.000000;-0.000210;,
    -0.000001;1.000000;-0.000210;,
    -0.000051;1.000000;-0.000000;,
    -0.000051;1.000000;0.000000;,
    -0.000021;1.000000;-0.000130;,
    -0.000021;1.000000;-0.000130;,
    -0.000044;1.000000;-0.000031;,
    -0.000051;1.000000;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    -1.000000;-0.000001;-0.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    1.000000;0.000001;-0.000000;,
    1.000000;0.000001;-0.000000;,
    1.000000;0.000001;-0.000000;,
    1.000000;0.000001;-0.000000;,
    1.000000;0.000001;-0.000000;,
    1.000000;0.000001;-0.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    0.000000;0.000000;-1.000000;,
    -0.000000;0.000000;1.000000;,
    -0.000000;0.000000;1.000000;,
    -0.000000;0.000000;1.000000;,
    -0.000000;0.000000;1.000000;,
    -0.000000;0.000000;1.000000;,
    -0.000000;0.000000;1.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    1.000000;0.000001;0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    0.000001;-1.000000;-0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -1.000000;-0.000002;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;,
    -0.000001;1.000000;0.000000;;
    58;
    3;0,1,2;,
    3;3,4,5;,
    3;6,7,8;,
    3;9,10,11;,
    3;12,13,14;,
    3;15,16,17;,
    3;18,19,20;,
    3;21,22,23;,
    3;24,25,26;,
    3;27,28,29;,
    3;30,31,32;,
    3;33,34,35;,
    3;36,37,38;,
    3;39,40,41;,
    3;42,43,44;,
    3;45,46,47;,
    3;48,49,50;,
    3;51,52,53;,
    3;54,55,56;,
    3;57,58,59;,
    3;60,61,62;,
    3;63,64,65;,
    3;66,67,68;,
    3;69,70,71;,
    3;72,73,74;,
    3;75,76,77;,
    3;78,79,80;,
    3;81,82,83;,
    3;84,85,86;,
    3;87,88,89;,
    3;90,91,92;,
    3;93,94,95;,
    3;96,97,98;,
    3;99,100,101;,
    3;102,103,104;,
    3;105,106,107;,
    3;108,109,110;,
    3;111,112,113;,
    3;114,115,116;,
    3;117,118,119;,
    3;120,121,122;,
    3;123,124,125;,
    3;126,127,128;,
    3;129,130,131;,
    3;132,133,134;,
    3;135,136,137;,
    3;138,139,140;,
    3;141,142,143;,
    3;144,145,146;,
    3;147,148,149;,
    3;150,151,152;,
    3;153,154,155;,
    3;156,157,158;,
    3;159,160,161;,
    3;162,163,164;,
    3;165,166,167;,
    3;168,169,170;,
    3;171,172,173;;
   }

   MeshMaterialList  {
    1;
    58;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;
    { buildz1 }
   }

   MeshTextureCoords  {
    174;
    0.746101;0.538624;,
    0.746101;0.445347;,
    0.873695;0.445347;,
    0.873695;0.445347;,
    0.873695;0.538625;,
    0.746101;0.538624;,
    0.995799;1.000000;,
    0.995799;0.771847;,
    0.680305;0.899836;,
    0.680305;0.899836;,
    0.680305;1.000000;,
    0.995799;1.000000;,
    0.614396;0.771847;,
    0.614396;0.899836;,
    0.680305;0.899836;,
    0.680305;0.899836;,
    0.995799;0.771847;,
    0.614396;0.771847;,
    0.873695;0.445347;,
    0.746101;0.445347;,
    0.746101;0.538625;,
    0.746101;0.538625;,
    0.873695;0.538625;,
    0.873695;0.445347;,
    0.614396;0.771847;,
    0.995799;0.771847;,
    0.680062;0.899836;,
    0.680062;0.899836;,
    0.614396;0.899836;,
    0.614396;0.771847;,
    0.995799;1.000000;,
    0.680062;1.000000;,
    0.680062;0.899836;,
    0.680062;0.899836;,
    0.995799;0.771847;,
    0.995799;1.000000;,
    0.995800;1.000000;,
    0.995800;0.771847;,
    0.680062;0.899836;,
    0.680062;0.899836;,
    0.680062;1.000000;,
    0.995800;1.000000;,
    0.614397;0.771847;,
    0.614397;0.899836;,
    0.680062;0.899836;,
    0.680062;0.899836;,
    0.995800;0.771847;,
    0.614397;0.771847;,
    0.746101;0.445347;,
    0.746101;0.538625;,
    0.882924;0.538625;,
    0.882924;0.538625;,
    0.882923;0.445347;,
    0.746101;0.445347;,
    0.782910;1.000000;,
    0.995799;1.000000;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.782910;0.551480;,
    0.782910;1.000000;,
    0.603322;1.000000;,
    0.995799;1.000000;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.603322;0.551480;,
    0.603322;1.000000;,
    0.782910;1.000000;,
    0.995799;1.000000;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.782910;0.551480;,
    0.782910;1.000000;,
    0.603322;1.000000;,
    0.995799;1.000000;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.603322;0.551480;,
    0.603322;1.000000;,
    0.882924;0.538625;,
    0.746101;0.538625;,
    0.746101;0.445347;,
    0.746101;0.445347;,
    0.882923;0.445347;,
    0.882924;0.538625;,
    0.995799;0.551480;,
    0.995799;1.000000;,
    0.782910;1.000000;,
    0.782910;1.000000;,
    0.782910;0.551480;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.995799;1.000000;,
    0.603322;1.000000;,
    0.603322;1.000000;,
    0.603322;0.551480;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.995799;1.000000;,
    0.782910;1.000000;,
    0.782910;1.000000;,
    0.782910;0.551480;,
    0.995799;0.551480;,
    0.995799;0.551480;,
    0.995799;1.000000;,
    0.603322;1.000000;,
    0.603322;1.000000;,
    0.603322;0.551480;,
    0.995799;0.551480;,
    0.614397;0.771847;,
    0.995800;0.771847;,
    0.680305;0.899836;,
    0.680305;0.899836;,
    0.614397;0.899836;,
    0.614397;0.771847;,
    0.995800;1.000000;,
    0.680305;1.000000;,
    0.680305;0.899836;,
    0.680305;0.899836;,
    0.995800;0.771847;,
    0.995800;1.000000;,
    0.803212;0.896626;,
    0.803212;1.000000;,
    0.977342;1.000000;,
    0.977342;1.000000;,
    0.977342;0.896626;,
    0.803212;0.896626;,
    0.317899;0.300529;,
    0.317899;0.233092;,
    0.414116;0.233092;,
    0.414116;0.233092;,
    0.414115;0.300529;,
    0.317899;0.300529;,
    0.803212;1.000000;,
    0.803212;0.896626;,
    0.977342;0.896626;,
    0.977342;0.896626;,
    0.977342;1.000000;,
    0.803212;1.000000;,
    0.317899;0.233092;,
    0.317899;0.300529;,
    0.414115;0.300529;,
    0.414115;0.300529;,
    0.414116;0.233092;,
    0.317899;0.233092;,
    0.882924;0.538625;,
    0.746101;0.538625;,
    0.746101;0.445347;,
    0.746101;0.445347;,
    0.882923;0.445347;,
    0.882924;0.538625;,
    0.995799;0.599468;,
    0.995799;0.691768;,
    0.782910;0.691768;,
    0.782910;0.691768;,
    0.782910;0.599468;,
    0.995799;0.599468;,
    0.995799;0.599468;,
    0.995799;0.691768;,
    0.603322;0.691768;,
    0.603322;0.691768;,
    0.603322;0.599468;,
    0.995799;0.599468;,
    0.995799;0.599468;,
    0.995799;0.691768;,
    0.782910;0.691768;,
    0.782910;0.691768;,
    0.782910;0.599468;,
    0.995799;0.599468;,
    0.995799;0.599468;,
    0.995799;0.691768;,
    0.603322;0.691768;,
    0.603322;0.691768;,
    0.603322;0.599468;,
    0.995799;0.599468;;
   }
  }
 }
}