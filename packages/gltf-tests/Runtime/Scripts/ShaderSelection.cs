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

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderSelection : MonoBehaviour {

    [SerializeField]
    Renderer targetRenderer;

    [SerializeField]
    Material[] materials;
    
    [SerializeField] float width = 300;
    [SerializeField] float height = 100;
    [SerializeField] float yGap = 10;
    [SerializeField] bool alignRight = false;
    [SerializeField] bool alignBottom = false;

    bool hidden = true;
    
    void OnGUI() {
        var x = alignRight ? Screen.width-width : 0;
        var y = alignBottom ? Screen.height - (1+(hidden?0:materials.Length))*(yGap+height) : yGap;

        if(!hidden) {
            foreach(var material in materials) {
                if( GUI.Button( new Rect(x,y,width,height),material.name)) {
                    targetRenderer.material = material;
                    hidden = true;
                }
                y += height + yGap;
            }
        }
        if( GUI.Button( new Rect(x,y,width,height),hidden?"Select Material":"Hide")) {
            hidden = !hidden;
        }
    }
}
