.class public Lcom/join/mgps/activity/MyFragmentActivity1;
.super Lcom/BaseAppCompatActivity;
.source "MyFragmentActivity1.java"


# instance fields
.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MyFragmentActivity1$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyFragmentActivity1$a;-><init>(Lcom/join/mgps/activity/MyFragmentActivity1;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyFragmentActivity1;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method check_version()V
    .locals 5

    const-string v0, "VersionXML"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/join/mgps/dto/VersionDto;

    invoke-direct {v2}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    const-string v2, "VersionDto"

    const-string v3, ""

    .line 3
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {v3, v2, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/VersionDto;

    const-string v3, "Mandatory"

    .line 5
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v2, :cond_0

    .line 6
    new-instance v1, Lcom/join/mgps/dialog/f;

    const v3, 0x7f12014a

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/join/mgps/dialog/f;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V

    .line 7
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyFragmentActivity1;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_check_version"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyFragmentActivity1;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
