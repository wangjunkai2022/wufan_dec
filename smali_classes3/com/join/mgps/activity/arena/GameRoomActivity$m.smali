.class Lcom/join/mgps/activity/arena/GameRoomActivity$m;
.super Landroid/os/CountDownTimer;
.source "GameRoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "GameRoomActivity"

    const-string v1, "mStartGameCountDowner onFinish---"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u542f\u52a8\u6e38\u620f\u8d85\u65f6\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartGameCountDowner millisUntilFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameRoomActivity"

    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
