# glTFast Test Repository

A collection of Unity projects, packages, and 3D assets that allow you to conveniently develop and test the [glTFast package](https://github.com/atteneder/glTFast).

## Getting Started

The starting point are the projects in the `projects` folder.

- `glTFast-tests-*` are for [generic testing and development](#generic-tests-and-development)
- `glTFast-graphics-tests-*` are for [graphics tests](#graphics-tests) that compare output renders to target images
- `glTFast-pkg-dev` is for package development (validation, documentation)
- `glTFast-tests-dots` is for experimental Entities/DOTS development
- `glTFast-tests-min-feature` is a project with minimal packages installed and modules enabled. Useful to detect soft-dependecy problems.

### Generic Tests and Development

Open one of the projects in the `projects` folder that starts with `glTFast-tests-*`. Choose one that fits your desired Unity version and render pipeline.

You can immediately use the Test Runner to perform Editor and Runtime tests.

The `glTF Tests` package comes with a set of scenes that provide a UI to load glTF files (located at `Packages/com.atteneder.gltf-tests/Runtime/Scenes`).

| Scene | Description |
| --- | --- |
| Main | Entry point with UI to switch to other scenes |
| FastMassLoader | Loads a set of glTFs in parallel as fast as possible (blocking) |
| ResponsiveMassLoader | Loads a set of glTFs in parallel while trying to preserve a smooth frame rate  |
| SequentialMassLoader | Loads a set of glTFs sequentially |
| TestLoadScene | Loads a single glTF. UI for selection of glTF, scene and camera |

Test files (glTFs) are organised in SampleSets (ready-made ones are located at `Packages/com.atteneder.gltf-tests/Runtime/SampleSets`). There's a minimalistic UI to load glTF files from SampleSets (more specifically from all SampleSets found in the `SampleSetCollection` at `Packages/com.atteneder.gltf-tests/Runtime/SampleSets/AllSampleSets`).

#### Loading Custom glTF Files

To load your own local glTF files you have to:

- Create a SampleSet (Menu `Assets -> Create -> Scriptable Object -> glTFast SampleSet`), preferrably at `Packages/com.atteneder.gltf-tests/Runtime/SampleSets`, so it's available across projects.
- Enter the path to the directory, where the glTFs reside in, into `Base Local Path` in the inspector
- Click the `Find in path` button at the top (You should see the entires under `Items` at the bottom now)
- Finally add this new `SampleSet` to the `SampleSets` list of the `SampleSetCollection` at `Packages/com.atteneder.gltf-tests/Runtime/SampleSets/AllSampleSets` (This way it'll show up in the UI)

Finally open the scene `TestLoadScene` and enter playmode. You should see a button for your SampleSet. Once clicked, you'll see the list of glTFs to load.

### Graphics Tests

TODO: Write docs

## Setup

### GIT submodules

The repository contains multiple GIT submodules, so make sure they're initialized and synched.

### Structure

| Root level directory | Description |
| --- | --- |
| `assets` | 3D assets for testing |
| `packages` | Local packages. Some are third party and some are common resources, shared across all projects |
| `projects` | Various projects, differentiated by test type, Unity version and render pipeline |
| [`scripts`](./scripts) | Scripts for local execution of tests and test related tasks |
