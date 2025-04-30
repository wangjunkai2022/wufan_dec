.class Lcom/papa91/view/RewardBananaDialog$4;
.super Ljava/lang/Object;
.source "RewardBananaDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RewardBananaDialog;->onRewardInfo(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;

.field final synthetic val$left_play_reward_count:I

.field final synthetic val$left_start_reward_count:I

.field final synthetic val$reward_amount:I

.field final synthetic val$reward_times:I

.field final synthetic val$totalRewardAmount:I

.field final synthetic val$unique_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iput p2, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_start_reward_count:I

    iput p3, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_play_reward_count:I

    iput p4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    iput p5, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    iput p6, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$totalRewardAmount:I

    iput-object p7, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$000(Lcom/papa91/view/RewardBananaDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_start_reward_count:I

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$102(Lcom/papa91/view/RewardBananaDialog;I)I

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_play_reward_count:I

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$102(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$202(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 4
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$302(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 5
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$totalRewardAmount:I

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$402(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 6
    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-static {v2}, Lcom/papa91/view/RewardBananaDialog;->access$500(Lcom/papa91/view/RewardBananaDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    iget v5, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    iget v6, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$400(Lcom/papa91/view/RewardBananaDialog;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/papa91/view/RewardBananaDialog;->onRewardInfoChanged(Ljava/lang/String;Ljava/lang/String;III)V

    .line 7
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$502(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget-object v1, v0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    iget v3, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    iget v4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$100(Lcom/papa91/view/RewardBananaDialog;)I

    move-result v5

    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$400(Lcom/papa91/view/RewardBananaDialog;)I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onRewardInfo(Ljava/lang/String;IIII)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    return-void
.end method
