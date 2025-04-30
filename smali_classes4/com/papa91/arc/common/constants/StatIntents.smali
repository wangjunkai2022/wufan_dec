.class public Lcom/papa91/arc/common/constants/StatIntents;
.super Ljava/lang/Object;
.source "StatIntents.java"


# static fields
.field public static statFactory:Lcom/papa91/arc/common/constants/StatIntents;


# instance fields
.field mContext:Landroid/content/Context;

.field messenger:Landroid/os/Messenger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/common/constants/StatIntents;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/common/constants/StatIntents;->statFactory:Lcom/papa91/arc/common/constants/StatIntents;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/common/constants/StatIntents;

    invoke-direct {v0, p0}, Lcom/papa91/arc/common/constants/StatIntents;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa91/arc/common/constants/StatIntents;->statFactory:Lcom/papa91/arc/common/constants/StatIntents;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa91/arc/common/constants/StatIntents;->statFactory:Lcom/papa91/arc/common/constants/StatIntents;

    return-object p0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/common/constants/StatIntents;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method sendBroadcast(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/common/constants/StatIntents;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/papa91/arc/common/constants/StatIntents;->messenger:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/common/constants/StatIntents;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/common/constants/StatIntents;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statOpenKeyskill(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statSelectLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statShareScreenshot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/common/constants/StatIntents;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
