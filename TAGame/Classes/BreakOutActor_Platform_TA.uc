/*******************************************************************************
* BreakOutActor_Platform_TA generated by MVN.RLLib using UE Explorer.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class BreakOutActor_Platform_TA extends Actor
    placeable
    hidecategories(Navigation);

enum EBreakoutDamageState
{
    DamageState_Start,
    DamageState_Damaged,
    DamageState_Broken,
    DamageState_MAX
};

struct native BreakoutDamageState
{
    var private byte State;
    var private PRI_TA Causer;
    var private Vector DamageLocation;
    var private bool bDirectDamage;
    var private bool bImmediate;

    structdefaultproperties
    {
        State=255
        Causer=none
        DamageLocation=(X=0.0,Y=0.0,Z=0.0)
        bDirectDamage=false
        bImmediate=false
    }
};

var() private int Sides;
var() private bool bPrimaryPlayerStart;
var() private int TeamIndex;
var() private int MaxDamage;
var() private const editconst export editinline StaticMeshComponent StaticMeshComponent;
var() private const editconst export editinline DynamicLightEnvironmentComponent LightEnvironment;
var() private FXActor_X FXArchetype;
var() private float NeighborRadius;
var() private array<private BreakOutActor_Platform_TA> Neighbors;
var private float LastHitTime;
var private repnotify BreakoutDamageState DamageState;
var private FXActor_X FXActor;
var private transient BreakoutDamageState PreReplayState;

defaultproperties
{
    Sides=6
    MaxDamage=2

    begin object name=MyLightEnvironment Class=DynamicLightEnvironmentComponent
    end object 

    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=MyLightEnvironment
        BlockRigidBody=true
        bUseAsOccluder=false
        RBCollideWithChannels=(Vehicle=true,GameplayPhysics=true,EffectPhysics=true,Ball=true)
    end object
    // Reference: StaticMeshComponent'Default__BreakOutActor_Platform_TA.StaticMeshComponent0'
    StaticMeshComponent=StaticMeshComponent0
    LightEnvironment=MyLightEnvironment
    NeighborRadius=700.0
    DamageState=(State=255,Causer=none,DamageLocation=(X=0.0,Y=0.0,Z=0.0),bDirectDamage=false,bImmediate=false)
    PreReplayState=(State=255,Causer=none,DamageLocation=(X=0.0,Y=0.0,Z=0.0),bDirectDamage=false,bImmediate=false)
    Components(0)=StaticMeshComponent0
    RemoteRole=ROLE_SimulatedProxy
    CollisionType=COLLIDE_CustomDefault
    bStatic=true
    bNoDelete=true
    bWorldGeometry=true
    bAlwaysRelevant=true
    bGameRelevant=true
    bMovable=false
    BlockRigidBody=true
    bCollideActors=true
    bCollideWorld=true
    bBlockActors=true
    CollisionComponent=StaticMeshComponent0
}