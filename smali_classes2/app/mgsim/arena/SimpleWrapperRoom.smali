.class public Lapp/mgsim/arena/SimpleWrapperRoom;
.super Ljava/lang/Object;
.source "SimpleWrapperRoom.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public initialStartTime:J

.field public simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    return-void
.end method

.method public static cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;
    .locals 3

    .line 1
    new-instance v0, Lapp/mgsim/arena/SimpleWrapperRoom;

    invoke-direct {v0, p0}, Lapp/mgsim/arena/SimpleWrapperRoom;-><init>(Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    :cond_0
    return-object v0
.end method
