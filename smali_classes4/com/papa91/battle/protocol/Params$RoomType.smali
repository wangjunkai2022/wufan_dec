.class public final enum Lcom/papa91/battle/protocol/Params$RoomType;
.super Ljava/lang/Enum;
.source "Params.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Params$RoomType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Params$RoomType;

.field public static final enum ELITE:Lcom/papa91/battle/protocol/Params$RoomType;

.field public static final ELITE_VALUE:I = 0x1

.field public static final enum NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

.field public static final NORMAL_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$RoomType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Params$RoomType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Params$RoomType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Params$RoomType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 2
    new-instance v1, Lcom/papa91/battle/protocol/Params$RoomType;

    const-string v3, "ELITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/papa91/battle/protocol/Params$RoomType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/papa91/battle/protocol/Params$RoomType;->ELITE:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 3
    new-instance v3, Lcom/papa91/battle/protocol/Params$RoomType;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/papa91/battle/protocol/Params$RoomType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/papa91/battle/protocol/Params$RoomType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$RoomType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/papa91/battle/protocol/Params$RoomType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/papa91/battle/protocol/Params$RoomType;->$VALUES:[Lcom/papa91/battle/protocol/Params$RoomType;

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/Params$RoomType$1;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Params$RoomType$1;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/papa91/battle/protocol/Params$RoomType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/Params$RoomType;->ELITE:Lcom/papa91/battle/protocol/Params$RoomType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Params$RoomType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Params$RoomType;->forNumber(I)Lcom/papa91/battle/protocol/Params$RoomType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Params$RoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params$RoomType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->$VALUES:[Lcom/papa91/battle/protocol/Params$RoomType;

    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Params$RoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/battle/protocol/Params$RoomType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$RoomType;->value:I

    return v0
.end method
