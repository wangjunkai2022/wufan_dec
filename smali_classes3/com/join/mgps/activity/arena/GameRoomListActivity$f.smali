.class Lcom/join/mgps/activity/arena/GameRoomListActivity$f;
.super Landroid/os/CountDownTimer;
.source "GameRoomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    const-string v1, "mCreateGameCountDowner onFinish---"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreateGameCountDowner millisUntilFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    return-void
.end method
