.class public final enum Lcom/wufan/user/service/protobuf/enumeration/SourceType;
.super Ljava/lang/Enum;
.source "SourceType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/user/service/protobuf/enumeration/SourceType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final enum BATTLE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final BATTLE_VALUE:I = 0x2

.field public static final enum PC:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final PC_VALUE:I = 0x3

.field public static final enum PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final PLATFORM_VALUE:I = 0x1

.field public static final enum REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final REBATE_VALUE:I = 0x4

.field public static final enum SDK_REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final SDK_REBATE_VALUE:I = 0x5

.field public static final enum SWITCH:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final SWITCH_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final enum WORLD:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

.field public static final WORLD_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/SourceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v1, "WORLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->WORLD:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 2
    new-instance v1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v3, "PLATFORM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 3
    new-instance v3, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v5, "BATTLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->BATTLE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 4
    new-instance v5, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v7, "PC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PC:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 5
    new-instance v7, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v9, "REBATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 6
    new-instance v9, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v11, "SDK_REBATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->SDK_REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 7
    new-instance v11, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v13, "SWITCH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->SWITCH:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 8
    new-instance v13, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 10
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType$a;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/enumeration/SourceType$a;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->SWITCH:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->SDK_REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->REBATE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PC:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->BATTLE:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->WORLD:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/SourceType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    invoke-virtual {v0}, [Lcom/wufan/user/service/protobuf/enumeration/SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->value:I

    return v0
.end method
