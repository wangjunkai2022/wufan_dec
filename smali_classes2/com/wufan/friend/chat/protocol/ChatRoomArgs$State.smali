.class public final enum Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;
.super Ljava/lang/Enum;
.source "ChatRoomArgs.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

.field public static final enum JOIN:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

.field public static final JOIN_VALUE:I = 0x0

.field public static final enum LEAVE:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

.field public static final LEAVE_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;",
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    const-string v1, "JOIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->JOIN:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    const-string v3, "LEAVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->LEAVE:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->$VALUES:[Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 5
    new-instance v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->LEAVE:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->JOIN:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->forNumber(I)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->$VALUES:[Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->value:I

    return v0
.end method
