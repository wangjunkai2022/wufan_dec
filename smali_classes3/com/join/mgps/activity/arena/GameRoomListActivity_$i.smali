.class Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;
.super Ljava/lang/Object;
.source "GameRoomListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity_;->w3(Lcom/papa91/battle/protocol/BattleArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/BattleArea;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;->a:Lcom/papa91/battle/protocol/BattleArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;->a:Lcom/papa91/battle/protocol/BattleArea;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->t4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method
