.class Lcom/join/mgps/activity/arena/GameRoomActivity_$w;
.super Ljava/lang/Object;
.source "GameRoomActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity_;->o2(Lcom/papa91/battle/protocol/KickInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/KickInfo;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;->a:Lcom/papa91/battle/protocol/KickInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;->a:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->o3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V

    return-void
.end method
