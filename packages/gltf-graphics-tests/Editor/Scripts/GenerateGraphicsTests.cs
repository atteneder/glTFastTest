// Copyright 2020-2022 Andreas Atteneder
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

using System;
using UnityEngine;
using GLTFast;
using GLTFTest.Editor;
using GLTFTest.Sample;
using UnityEditor;

namespace GLTFTest.Graphics.Editor {
    public static class GenerateGraphicsTests
    {
        [MenuItem("Tools/glTF Test/Generate Graphics Tests")]
        static void GenerateTestsMenu() { }
        
        internal static void GenerateTests(bool createScenes = true) {

            var rp = RenderPipelineUtils.DetectRenderPipeline();

            var setName = "glTF-Sample-Models";

            switch (rp) {
                case RenderPipeline.Universal:
                    setName = "glTF-Sample-Models-URP";
                    break;
                case RenderPipeline.HighDefinition:
                    setName = "glTF-Sample-Models-HDRP";
                    break;
            }
            
            var sampleSet = AssetDatabase.LoadAssetAtPath<SampleSet>( $"Packages/com.atteneder.gltf-graphics-tests/Runtime/SampleSets/{setName}.asset");
            
            sampleSet.CopyToStreamingAssets();

            if (createScenes) {
                sampleSet.CreateRenderTestScenes();
            }
        }
    }
}