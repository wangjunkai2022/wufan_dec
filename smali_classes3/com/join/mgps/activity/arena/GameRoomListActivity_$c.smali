.class Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;
.super Ljava/lang/Object;
.source "GameRoomListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity_;->O2(Lcom/papa91/battle/protocol/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/Notification;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;->a:Lcom/papa91/battle/protocol/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;->a:Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->c4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V

    return-void
.end method
