.class public Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->HttpPost_Memer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    :cond_1
    return-void
.end method
