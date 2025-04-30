.class Lcom/papa91/activity/EmuBaseActivity$25;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleReward(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tools.AdBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "orientation"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "uniqueId"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gameId"

    .line 5
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "amount"

    .line 6
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "times"

    .line 7
    invoke-virtual {v0, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "type"

    .line 8
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    sget-object p5, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const-string p5, "FCDouble"

    .line 11
    invoke-static {p5, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    return-void
.end method

.method public onReceiveReward(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.receive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orientation"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "uniqueId"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "amount"

    .line 5
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "times"

    .line 6
    invoke-virtual {v0, p5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "type"

    .line 7
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    sget-object p5, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const-string p5, "FCReceiveBanner"

    .line 10
    invoke-static {p5, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    return-void
.end method

.method public onRewardInfo(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 2
    sput p2, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 3
    sput p3, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 4
    sput p4, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 5
    sput p5, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    return-void
.end method
