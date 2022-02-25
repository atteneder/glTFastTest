// using Unity.Burst;
// using Unity.Entities;
// using Unity.Mathematics;
// using Unity.Rendering;
// using Unity.Transforms;
// using UnityEngine;
//
// [GenerateAuthoringComponent]
// public struct BoneMove : IComponentData {
//     public float radius;
// }
//
// [UpdateInGroup(typeof(SimulationSystemGroup))]
// public class BoneMoveSystem : SystemBase {
//
//     BeginInitializationEntityCommandBufferSystem m_EntityCommandBufferSystem;
//
//     protected override void OnCreate() {
//         m_EntityCommandBufferSystem = World.GetOrCreateSystem<BeginInitializationEntityCommandBufferSystem>();
//     }
//     
//     protected override void OnUpdate() {
//         
//         var entityManager = World.DefaultGameObjectInjectionWorld.EntityManager;
//         var ecb = m_EntityCommandBufferSystem.CreateCommandBuffer();
//         var parallelWriter = ecb.AsParallelWriter();
//         
//         Entities
//             .WithName("Bone")
//             .WithAll<BoneMove,Translation>()
//             // .WithBurst(FloatMode.Default, FloatPrecision.Standard, true)
//             .WithoutBurst()
//             .ForEach((Entity entity, int entityInQueryIndex, ref Translation translation, in BoneMove boneMove) => {
//                 translation.Value = new float3(1, boneMove.radius, 0);
//             }).ScheduleParallel();
//         
//         m_EntityCommandBufferSystem.AddJobHandleForProducer(Dependency);
//     }
// }
