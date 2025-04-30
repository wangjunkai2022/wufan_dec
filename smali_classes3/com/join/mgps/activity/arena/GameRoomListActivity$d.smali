.class Lcom/join/mgps/activity/arena/GameRoomListActivity$d;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result p1

    const/4 v0, 0x1

    const-string v1, ""

    if-ge p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z2()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 9
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->f0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->P0(Ljava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    const-string v0, "\u5feb\u901f\u52a0\u5165\u623f\u95f4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    :goto_0
    return-void
.end method
