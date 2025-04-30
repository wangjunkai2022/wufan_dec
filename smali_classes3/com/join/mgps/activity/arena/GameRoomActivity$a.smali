.class Lcom/join/mgps/activity/arena/GameRoomActivity$a;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    :cond_0
    return-void
.end method
