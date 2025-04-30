.class Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;
.super Ljava/lang/Object;
.source "GameRoomListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity_;->N3(Lapp/mgsim/arena/ArenaResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapp/mgsim/arena/ArenaResponse;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->a:Lapp/mgsim/arena/ArenaResponse;

    iput-boolean p3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->a:Lapp/mgsim/arena/ArenaResponse;

    iget-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->n4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

    return-void
.end method
