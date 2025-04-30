.class public final enum Lcom/wufan/friend/chat/protocol/PlayGameState;
.super Ljava/lang/Enum;
.source "PlayGameState.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/PlayGameState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/PlayGameState;

.field public static final enum OVER:Lcom/wufan/friend/chat/protocol/PlayGameState;

.field public static final OVER_VALUE:I = 0x2

.field public static final enum RUNNING:Lcom/wufan/friend/chat/protocol/PlayGameState;

.field public static final RUNNING_VALUE:I = 0x1

.field public static final enum START:Lcom/wufan/friend/chat/protocol/PlayGameState;

.field public static final START_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayGameState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/PlayGameState;",
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/PlayGameState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/PlayGameState;->START:Lcom/wufan/friend/chat/protocol/PlayGameState;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/PlayGameState;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/PlayGameState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/PlayGameState;->RUNNING:Lcom/wufan/friend/chat/protocol/PlayGameState;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/PlayGameState;

    const-string v5, "OVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/friend/chat/protocol/PlayGameState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/PlayGameState;->OVER:Lcom/wufan/friend/chat/protocol/PlayGameState;

    .line 4
    new-instance v5, Lcom/wufan/friend/chat/protocol/PlayGameState;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/wufan/friend/chat/protocol/PlayGameState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/friend/chat/protocol/PlayGameState;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayGameState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/wufan/friend/chat/protocol/PlayGameState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/wufan/friend/chat/protocol/PlayGameState;->$VALUES:[Lcom/wufan/friend/chat/protocol/PlayGameState;

    .line 6
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameState$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/PlayGameState$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/PlayGameState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/PlayGameState;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/PlayGameState;
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
    sget-object p0, Lcom/wufan/friend/chat/protocol/PlayGameState;->OVER:Lcom/wufan/friend/chat/protocol/PlayGameState;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/PlayGameState;->RUNNING:Lcom/wufan/friend/chat/protocol/PlayGameState;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/PlayGameState;->START:Lcom/wufan/friend/chat/protocol/PlayGameState;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/PlayGameState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/PlayGameState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/PlayGameState;->forNumber(I)Lcom/wufan/friend/chat/protocol/PlayGameState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/PlayGameState;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/PlayGameState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameState;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/PlayGameState;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameState;->$VALUES:[Lcom/wufan/friend/chat/protocol/PlayGameState;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/PlayGameState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/PlayGameState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameState;->value:I

    return v0
.end method
