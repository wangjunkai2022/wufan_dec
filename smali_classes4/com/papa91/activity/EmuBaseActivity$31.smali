.class Lcom/papa91/activity/EmuBaseActivity$31;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->setBananaVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity$31;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    sget v2, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity$31;->val$visible:Z

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->resume()V

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->pause()V

    :cond_4
    :goto_0
    return-void
.end method
