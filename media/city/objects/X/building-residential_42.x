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

Frame building-residential_42 {
 

 FrameTransformMatrix {
  1.000000,0.000000,0.000000,0.000000,0.000000,-0.000000,-1.000000,0.000000,0.000000,1.000000,-0.000000,0.000000,0.000000,-12.670539,12.491668,1.000000;;
 }

 Frame {
  

  FrameTransformMatrix {
   1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,-0.000000,0.000000,1.000000;;
  }

  Mesh  {
   99;
   13.451683;4.290617;19.243526;,
   -13.084397;4.649033;19.243525;,
   -13.488150;-4.434279;10.887724;,
   -13.488150;-4.434279;10.887724;,
   13.488185;-4.434278;10.887724;,
   13.451683;4.290617;19.243526;,
   13.488177;13.548747;0.000000;,
   13.488184;13.548747;10.887724;,
   13.488184;4.130374;10.887724;,
   13.488178;-4.434278;0.000000;,
   13.488177;13.548747;0.000000;,
   13.488184;4.130374;10.887724;,
   13.488178;-4.434278;0.000000;,
   13.488184;4.130374;10.887724;,
   13.488185;-4.434278;10.887724;,
   -13.488151;13.548746;10.887724;,
   13.488184;13.548747;10.887724;,
   13.488177;13.548747;0.000000;,
   13.488177;13.548747;0.000000;,
   -13.488151;13.548746;0.000000;,
   -13.488151;13.548746;10.887724;,
   -13.488150;-4.434280;0.000000;,
   -13.488150;-4.434279;10.887724;,
   -13.488151;5.032787;10.887724;,
   -13.488151;13.548746;0.000000;,
   -13.488150;-4.434280;0.000000;,
   -13.488151;5.032787;10.887724;,
   -13.488151;13.548746;0.000000;,
   -13.488151;5.032787;10.887724;,
   -13.488151;13.548746;10.887724;,
   13.488185;-4.434278;10.887724;,
   -13.488150;-4.434279;10.887724;,
   -13.488150;-4.434280;0.000000;,
   -13.488150;-4.434280;0.000000;,
   13.488178;-4.434278;0.000000;,
   13.488185;-4.434278;10.887724;,
   13.488184;13.548747;10.887724;,
   -13.488151;13.548746;10.887724;,
   -13.084397;4.649033;19.243525;,
   -13.084397;4.649033;19.243525;,
   13.451683;4.290617;19.243526;,
   13.488184;13.548747;10.887724;,
   -13.488151;13.548746;10.887724;,
   -13.488151;5.032787;10.887724;,
   -13.084397;4.649033;19.243525;,
   -13.084397;4.649033;19.243525;,
   -13.488151;5.032787;10.887724;,
   -13.488150;-4.434279;10.887724;,
   13.488185;-4.434278;10.887724;,
   13.488184;4.130374;10.887724;,
   13.451683;4.290617;19.243526;,
   13.451683;4.290617;19.243526;,
   13.488184;4.130374;10.887724;,
   13.488184;13.548747;10.887724;,
   0.115356;13.391047;14.706089;,
   -0.157534;-13.528698;14.706089;,
   3.384685;-13.548790;10.887723;,
   3.384685;-13.548790;10.887723;,
   3.384683;13.427546;10.887723;,
   0.115356;13.391047;14.706089;,
   -3.776072;-13.548790;10.887723;,
   -3.776073;13.427546;10.887723;,
   -3.776073;13.427538;0.000001;,
   -3.776073;13.427538;0.000001;,
   -3.776072;-13.548790;0.000000;,
   -3.776072;-13.548790;10.887723;,
   3.384686;-13.548790;0.000000;,
   3.384685;-13.548790;10.887723;,
   -0.118559;-13.548789;10.887723;,
   -3.776072;-13.548790;0.000000;,
   3.384686;-13.548790;0.000000;,
   -0.118559;-13.548789;10.887723;,
   -3.776072;-13.548790;0.000000;,
   -0.118559;-13.548789;10.887723;,
   -3.776072;-13.548790;10.887723;,
   3.384683;13.427546;10.887723;,
   3.384685;-13.548790;10.887723;,
   3.384686;-13.548790;0.000000;,
   3.384686;-13.548790;0.000000;,
   3.384684;13.427541;0.000001;,
   3.384683;13.427546;10.887723;,
   -3.776073;13.427546;10.887723;,
   -3.776072;-13.548790;10.887723;,
   -0.157534;-13.528698;14.706089;,
   -0.157534;-13.528698;14.706089;,
   0.115356;13.391047;14.706089;,
   -3.776073;13.427546;10.887723;,
   -3.776072;-13.548790;10.887723;,
   -0.118559;-13.548789;10.887723;,
   -0.157534;-13.528698;14.706089;,
   -0.157534;-13.528698;14.706089;,
   -0.118559;-13.548789;10.887723;,
   3.384685;-13.548790;10.887723;,
   3.384683;13.427546;10.887723;,
   0.087821;13.427546;10.887723;,
   0.115356;13.391047;14.706089;,
   0.115356;13.391047;14.706089;,
   0.087821;13.427546;10.887723;,
   -3.776073;13.427546;10.887723;;
   33;
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
   3;96,97,98;;

   MeshNormals  {
    99;
    0.580767;-0.014515;0.813940;,
    -0.561339;0.006708;0.827559;,
    -0.433961;-0.603056;0.669329;,
    -0.433961;-0.603056;0.669329;,
    0.437427;-0.621028;0.650371;,
    0.580767;-0.014515;0.813940;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    1.000000;0.000000;-0.000001;,
    -0.000000;1.000000;0.000000;,
    -0.000000;1.000000;0.000000;,
    -0.000000;1.000000;0.000000;,
    -0.000000;1.000000;0.000000;,
    -0.000000;1.000000;0.000000;,
    -0.000000;1.000000;0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;-0.000000;-0.000000;,
    -1.000000;0.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.428422;0.608085;0.668347;,
    -0.433966;0.606124;0.666548;,
    -0.561339;0.006708;0.827559;,
    -0.561339;0.006708;0.827559;,
    0.580767;-0.014515;0.813940;,
    0.428422;0.608085;0.668347;,
    -0.433966;0.606124;0.666548;,
    -0.998835;-0.000000;0.048264;,
    -0.561339;0.006708;0.827559;,
    -0.561339;0.006708;0.827559;,
    -0.998835;-0.000000;0.048264;,
    -0.433961;-0.603056;0.669329;,
    0.437427;-0.621028;0.650371;,
    0.999990;0.000000;0.004368;,
    0.580767;-0.014515;0.813940;,
    0.580767;-0.014515;0.813940;,
    0.999990;0.000000;0.004368;,
    0.428422;0.608085;0.668347;,
    0.037408;0.571146;0.819996;,
    0.002385;-0.573331;0.819320;,
    0.649146;-0.468797;0.599031;,
    0.649146;-0.468797;0.599031;,
    0.663336;0.481829;0.572561;,
    0.037408;0.571146;0.819996;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;0.000000;,
    -1.000000;-0.000000;0.000000;,
    -0.000000;-1.000000;0.000000;,
    -0.000000;-1.000000;-0.000000;,
    -0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    -0.000000;-1.000000;0.000000;,
    -0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    -0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    -0.626988;0.447653;0.637568;,
    -0.643461;-0.459525;0.612204;,
    0.002385;-0.573331;0.819320;,
    0.002385;-0.573331;0.819320;,
    0.037408;0.571146;0.819996;,
    -0.626988;0.447653;0.637568;,
    -0.643461;-0.459525;0.612204;,
    -0.000000;-0.999986;0.005262;,
    0.002385;-0.573331;0.819320;,
    0.002385;-0.573331;0.819320;,
    -0.000000;-0.999986;0.005262;,
    0.649146;-0.468797;0.599031;,
    0.663336;0.481829;0.572561;,
    0.000000;0.999954;0.009558;,
    0.037408;0.571146;0.819996;,
    0.037408;0.571146;0.819996;,
    0.000000;0.999954;0.009558;,
    -0.626988;0.447653;0.637568;;
    33;
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
    3;96,97,98;;
   }

   MeshMaterialList  {
    1;
    33;
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
    { buildz6 }
   }

   MeshTextureCoords  {
    99;
    0.601810;0.271329;,
    0.602392;0.547062;,
    0.725195;0.546991;,
    0.725195;0.546991;,
    0.725193;0.271273;,
    0.601810;0.271329;,
    0.599203;0.549171;,
    0.599203;0.270702;,
    0.418196;0.270702;,
    0.259200;0.549963;,
    0.599203;0.549171;,
    0.418196;0.270702;,
    0.259200;0.549963;,
    0.418196;0.270702;,
    0.259200;0.271494;,
    0.600686;0.270702;,
    0.003978;0.270702;,
    0.003978;0.549171;,
    0.003978;0.549171;,
    0.600686;0.549171;,
    0.600686;0.270702;,
    0.599203;0.549171;,
    0.599203;0.270702;,
    0.424986;0.270702;,
    0.259200;0.549963;,
    0.599203;0.549171;,
    0.424986;0.270702;,
    0.259200;0.549963;,
    0.424986;0.270702;,
    0.259200;0.271494;,
    0.600686;0.270702;,
    0.003978;0.270702;,
    0.003978;0.549171;,
    0.003978;0.549171;,
    0.600686;0.549171;,
    0.600686;0.270702;,
    0.723844;0.271273;,
    0.723847;0.546991;,
    0.602392;0.547062;,
    0.602392;0.547062;,
    0.601810;0.271329;,
    0.723844;0.271273;,
    0.673530;0.553675;,
    0.673922;0.642272;,
    0.722667;0.643897;,
    0.722667;0.643897;,
    0.673922;0.642272;,
    0.672357;0.745021;,
    0.673530;0.553675;,
    0.673922;0.642272;,
    0.722667;0.643897;,
    0.722667;0.643897;,
    0.673922;0.642272;,
    0.672357;0.745021;,
    0.601810;0.271329;,
    0.602392;0.547062;,
    0.695664;0.546991;,
    0.695664;0.546991;,
    0.695661;0.271273;,
    0.601810;0.271329;,
    0.007853;0.270702;,
    0.604561;0.270702;,
    0.604561;0.549171;,
    0.604561;0.549171;,
    0.007853;0.549171;,
    0.007853;0.270702;,
    0.241254;0.548919;,
    0.241254;0.270702;,
    0.157868;0.270702;,
    0.066855;0.549710;,
    0.241254;0.548919;,
    0.157868;0.270702;,
    0.066855;0.549710;,
    0.157868;0.270702;,
    0.066855;0.271493;,
    0.007853;0.270702;,
    0.604561;0.270702;,
    0.604561;0.549171;,
    0.604561;0.549171;,
    0.007853;0.549171;,
    0.007853;0.270702;,
    0.694313;0.271273;,
    0.694316;0.546991;,
    0.602392;0.547062;,
    0.602392;0.547062;,
    0.601810;0.271329;,
    0.694313;0.271273;,
    0.673530;0.553675;,
    0.673922;0.642272;,
    0.722667;0.643897;,
    0.722667;0.643897;,
    0.673922;0.642272;,
    0.672357;0.745021;,
    0.673530;0.553675;,
    0.673922;0.642272;,
    0.722667;0.643897;,
    0.722667;0.643897;,
    0.673922;0.642272;,
    0.672357;0.745021;;
   }
  }
 }
}