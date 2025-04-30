.class public Lcom/join/mgps/receiver/NotifcationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifcationReceiver.java"


# static fields
.field public static final a:Ljava/lang/String; = "_task_id"

.field public static final b:Ljava/lang/String; = "_game_down_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MainPos"

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "_task_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setHasDeleteNotify(Z)V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "_task_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wufun.down.notify.del"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/receiver/NotifcationReceiver;->b(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wufun.down.notify.start.modmain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x20000000

    if-eqz v0, :cond_3

    .line 4
    sget-boolean v0, Lcom/MApplication;->y0:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/NotifcationReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/z;->G()V

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/join/mgps/activity/ModGameIndexActivity_;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/NotifcationReceiver;->a(Landroid/content/Context;)V

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickNotbarDownloaded:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-direct {p0, p2}, Lcom/join/mgps/receiver/NotifcationReceiver;->c(Landroid/content/Intent;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.wufun.down.notify.start.gamemanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    sget-boolean v0, Lcom/MApplication;->y0:Z

    if-eqz v0, :cond_4

    .line 17
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/NotifcationReceiver;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 18
    :cond_4
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/join/mgps/activity/MyGameManagerActivity_;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/NotifcationReceiver;->a(Landroid/content/Context;)V

    :goto_1
    const/4 v0, 0x0

    const-string v1, "_game_down_status"

    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 24
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickNotbarDownloaded:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-direct {p0, p2}, Lcom/join/mgps/receiver/NotifcationReceiver;->c(Landroid/content/Intent;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_2

    .line 25
    :cond_6
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickNotbarDownloading:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-direct {p0, p2}, Lcom/join/mgps/receiver/NotifcationReceiver;->c(Landroid/content/Intent;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_7
    :goto_2
    return-void
.end method
