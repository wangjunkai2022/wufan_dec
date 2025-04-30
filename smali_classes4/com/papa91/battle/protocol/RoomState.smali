.class public final enum Lcom/papa91/battle/protocol/RoomState;
.super Ljava/lang/Enum;
.source "RoomState.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/RoomState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/RoomState;

.field public static final enum EMPTY:Lcom/papa91/battle/protocol/RoomState;

.field public static final EMPTY_VALUE:I = 0x0

.field public static final enum READY:Lcom/papa91/battle/protocol/RoomState;

.field public static final READY_VALUE:I = 0x2

.field public static final enum START:Lcom/papa91/battle/protocol/RoomState;

.field public static final START_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomState;

.field public static final enum WAIT:Lcom/papa91/battle/protocol/RoomState;

.field public static final WAIT_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/RoomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/RoomState;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/RoomState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    .line 2
    new-instance v1, Lcom/papa91/battle/protocol/RoomState;

    const-string v3, "WAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/papa91/battle/protocol/RoomState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/papa91/battle/protocol/RoomState;->WAIT:Lcom/papa91/battle/protocol/RoomState;

    .line 3
    new-instance v3, Lcom/papa91/battle/protocol/RoomState;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/papa91/battle/protocol/RoomState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/papa91/battle/protocol/RoomState;->READY:Lcom/papa91/battle/protocol/RoomState;

    .line 4
    new-instance v5, Lcom/papa91/battle/protocol/RoomState;

    const-string v7, "START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/papa91/battle/protocol/RoomState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 5
    new-instance v7, Lcom/papa91/battle/protocol/RoomState;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/papa91/battle/protocol/RoomState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/papa91/battle/protocol/RoomState;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/papa91/battle/protocol/RoomState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/papa91/battle/protocol/RoomState;->$VALUES:[Lcom/papa91/battle/protocol/RoomState;

    .line 7
    new-instance v0, Lcom/papa91/battle/protocol/RoomState$1;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/RoomState$1;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/RoomState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/papa91/battle/protocol/RoomState;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/papa91/battle/protocol/RoomState;->READY:Lcom/papa91/battle/protocol/RoomState;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/papa91/battle/protocol/RoomState;->WAIT:Lcom/papa91/battle/protocol/RoomState;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/RoomState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/RoomState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/RoomState;->forNumber(I)Lcom/papa91/battle/protocol/RoomState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/RoomState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomState;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->$VALUES:[Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/RoomState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/battle/protocol/RoomState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomState;->value:I

    return v0
.end method
