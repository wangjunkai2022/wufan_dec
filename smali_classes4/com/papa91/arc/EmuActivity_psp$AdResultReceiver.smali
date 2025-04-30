.class public Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "adAction"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const-string v0, "extras"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleAdError(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p2, p2, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {p2, p1}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    move-result-wide v0

    :cond_5
    move-wide v5, v0

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v2, p1, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    if-eqz v2, :cond_6

    .line 13
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->dismiss()V

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    :goto_1
    return-void
.end method
