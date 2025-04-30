.class public final enum Lcom/wufan/friend/chat/protocol/OnlineState;
.super Ljava/lang/Enum;
.source "OnlineState.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/OnlineState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/OnlineState;

.field public static final enum INVISIBLE:Lcom/wufan/friend/chat/protocol/OnlineState;

.field public static final INVISIBLE_VALUE:I = 0x1

.field public static final enum OFFLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

.field public static final OFFLINE_VALUE:I = 0x2

.field public static final enum ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

.field public static final ONLINE_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/OnlineState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/OnlineState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/OnlineState;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/OnlineState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/OnlineState;

    const-string v3, "INVISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/OnlineState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/OnlineState;->INVISIBLE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/OnlineState;

    const-string v5, "OFFLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/friend/chat/protocol/OnlineState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/OnlineState;->OFFLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 4
    new-instance v5, Lcom/wufan/friend/chat/protocol/OnlineState;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/wufan/friend/chat/protocol/OnlineState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/friend/chat/protocol/OnlineState;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/OnlineState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/wufan/friend/chat/protocol/OnlineState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/wufan/friend/chat/protocol/OnlineState;->$VALUES:[Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 6
    new-instance v0, Lcom/wufan/friend/chat/protocol/OnlineState$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/OnlineState$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/OnlineState;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/OnlineState;->OFFLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/OnlineState;->INVISIBLE:Lcom/wufan/friend/chat/protocol/OnlineState;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/OnlineState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/OnlineState;->forNumber(I)Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/OnlineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/OnlineState;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->$VALUES:[Lcom/wufan/friend/chat/protocol/OnlineState;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/OnlineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/OnlineState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/OnlineState;->value:I

    return v0
.end method
