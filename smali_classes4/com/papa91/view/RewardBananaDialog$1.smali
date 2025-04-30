.class Lcom/papa91/view/RewardBananaDialog$1;
.super Landroid/os/Handler;
.source "RewardBananaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/RewardBananaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget-object v0, p1, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget v1, p1, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    const-string p1, ""

    if-gtz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/papa91/mix/R$drawable;->ic_colse_gray:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget v2, v2, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget p1, Lcom/papa91/mix/R$drawable;->shape_close_bg_gray:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iget-object p1, p1, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
