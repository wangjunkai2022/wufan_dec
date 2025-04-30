.class Lcom/papa91/activity/EmuBaseActivity$29;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardMenu()V
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
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    sget v1, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 5
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    sget v1, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    invoke-virtual {v0, v1}, Lcom/papa91/view/DragProgressView;->setSignalMax(I)V

    .line 9
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    sget v1, Lcom/papa91/activity/EmuBaseActivity;->init_first_box_time:I

    sget v2, Lcom/papa91/activity/EmuBaseActivity;->min_time_interval:I

    sget v3, Lcom/papa91/activity/EmuBaseActivity;->max_time_interval:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/view/DragProgressView;->setInterval(III)V

    .line 10
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->start()V

    :cond_4
    return-void
.end method
