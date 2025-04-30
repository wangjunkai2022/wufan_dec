.class Lcom/papa91/activity/EmuBaseActivity$GameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowInvite:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "roomId"

    .line 3
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string p1, "userId"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "userName"

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "userAvatar"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "gameId"

    const-wide/16 v4, 0x0

    .line 7
    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string p1, "timestamp"

    .line 8
    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string p1, "gameName"

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/papa91/activity/EmuBaseActivity;->showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionOnOnlineState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "state"

    .line 13
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->setUserStateUi(I)V

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "_message"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_4

    .line 17
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object p2, p2, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleEmptyMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "_what"

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 20
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object p2, p2, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 21
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onHandleGameExit(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
