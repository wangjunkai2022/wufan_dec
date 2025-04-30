.class Lcom/papa91/activity/EmuBaseActivity$28;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$28;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "FCAchieveBanner"

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5"

    .line 4
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "\u6b63\u5728\u83b7\u53d6\u5956\u52b1\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 5
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$28;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity$28;->reward()V

    return-void
.end method

.method reward()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->getSignal()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    sget v1, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog(Ljava/lang/String;II)V

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showRewardTipDialog()V

    goto :goto_0

    :cond_2
    const-string v0, "\u4eca\u65e5\u5956\u52b1\u5df2\u5168\u90e8\u9886\u53d6\uff0c\u8bf7\u660e\u5929\u518d\u6765"

    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
