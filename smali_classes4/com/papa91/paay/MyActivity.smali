.class public Lcom/papa91/paay/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# instance fields
.field paayReceiver:Lcom/papa91/paay/PaayReceiver;

.field token:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "3913852899"

    .line 2
    iput-object v0, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    const-string v0, "5wnrKqSDPBCvHcWp"

    .line 3
    iput-object v0, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public inquiry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    new-instance v2, Lcom/papa91/paay/MyActivity$2;

    invoke-direct {v2, p0}, Lcom/papa91/paay/MyActivity$2;-><init>(Lcom/papa91/paay/MyActivity;)V

    const-string v3, "123"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/papa91/paay/PayCenter;->inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    return-void
.end method

.method public lobbyPlayCheck()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    new-instance v6, Lcom/papa91/paay/MyActivity$4;

    invoke-direct {v6, p0}, Lcom/papa91/paay/MyActivity$4;-><init>(Lcom/papa91/paay/MyActivity;)V

    const-string v3, "3913852899"

    const-string v4, "client"

    const-string v5, "20040032"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/papa91/paay/MyActivity$1;

    invoke-direct {p1, p0}, Lcom/papa91/paay/MyActivity$1;-><init>(Lcom/papa91/paay/MyActivity;)V

    iput-object p1, p0, Lcom/papa91/paay/MyActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.broadcast.action_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/high16 p1, 0x7f030000

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Lcom/papa91/paay/MyActivity;->startLobbyGame()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/papa91/paay/MyActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public startLobbyGame()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    new-instance v6, Lcom/papa91/paay/MyActivity$3;

    invoke-direct {v6, p0}, Lcom/papa91/paay/MyActivity$3;-><init>(Lcom/papa91/paay/MyActivity;)V

    const-string v3, "3913852899"

    const-string v4, "client"

    const-string v5, "20040032"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    return-void
.end method
