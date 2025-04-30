.class Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuViewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->showMenuSlot()V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->showMenuCheating()V

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    .line 7
    :cond_3
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->showMenuOnekey()V

    goto/16 :goto_0

    .line 9
    :cond_4
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->showMenuGate()V

    goto/16 :goto_0

    .line 11
    :cond_5
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->showMenuView(Z)V

    goto/16 :goto_0

    .line 13
    :cond_6
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1, v1}, Lcom/papa91/activity/EmuBaseActivity;->showMenuView(Z)V

    goto/16 :goto_0

    .line 15
    :cond_7
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "tipid"

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "charid"

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 18
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->showVipTip(II)V

    goto/16 :goto_0

    .line 19
    :cond_8
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuView:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->showMenuView(Z)V

    goto/16 :goto_0

    .line 21
    :cond_9
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "imagePath"

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->showShare(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_a
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadRomFinish()V

    goto :goto_0

    .line 26
    :cond_b
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "status"

    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "message"

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onLoadStageCompleted(ILjava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_c
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 31
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v0, "_params_rank_play_time"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    .line 32
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget p2, p1, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    invoke-virtual {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onRankRecordEnd(I)V

    goto :goto_0

    .line 33
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.join.android.app.mgsim.rank_record_upload_result"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "_params_rank_upload_result"

    .line 34
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 35
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->onRankUploadResult(I)V

    :cond_e
    :goto_0
    return-void
.end method
