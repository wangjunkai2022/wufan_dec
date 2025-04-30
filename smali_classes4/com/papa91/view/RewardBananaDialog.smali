.class public Lcom/papa91/view/RewardBananaDialog;
.super Lcom/papa91/view/BaseDialog;
.source "RewardBananaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;
    }
.end annotation


# instance fields
.field private amount:I

.field close:Landroid/view/View;

.field count:Landroid/widget/TextView;

.field countGroup:Landroid/view/View;

.field countTime:I

.field private device_id:Ljava/lang/String;

.field doubleReward:Landroid/view/View;

.field doubleRewardText:Landroid/widget/TextView;

.field private gameId:Ljava/lang/String;

.field getTip:Landroid/view/View;

.field gift:Landroid/view/View;

.field private left_count:I

.field listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

.field mHandler:Landroid/os/Handler;

.field receive:Landroid/view/View;

.field remain:Landroid/widget/TextView;

.field textView2:Landroid/view/View;

.field textView31:Landroid/view/View;

.field private times:I

.field private token:Ljava/lang/String;

.field private total_reward_amount:I

.field private type:I

.field private uid:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 3
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$1;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 6
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$1;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    return p0
.end method

.method static synthetic access$100(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    return p0
.end method

.method static synthetic access$102(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    return p1
.end method

.method static synthetic access$202(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    return p1
.end method

.method static synthetic access$302(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    return p1
.end method

.method static synthetic access$400(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    return p0
.end method

.method static synthetic access$402(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    return p1
.end method

.method static synthetic access$500(Lcom/papa91/view/RewardBananaDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/view/RewardBananaDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/papa91/view/RewardBananaDialog$5;-><init>(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getRewardInfo()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa91/view/RewardBananaDialog;->device_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getRewardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "game_id"

    .line 5
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device_id"

    .line 6
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "unique_id"

    .line 7
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfoPost(Ljava/util/Map;)V

    return-void
.end method

.method getRewardInfoPost(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa91/view/RewardBananaDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/papa91/view/RewardBananaDialog$3;-><init>(Lcom/papa91/view/RewardBananaDialog;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public giveUpReceive(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/papa91/mix/R$id;->close:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    if-gtz v0, :cond_9

    .line 5
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u653e\u5f03\u9886\u53d6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u9999\u8549"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 8
    iget p1, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    invoke-virtual {p0, p1}, Lcom/papa91/view/RewardBananaDialog;->giveUpReceive(I)V

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    goto/16 :goto_0

    .line 10
    :cond_2
    sget v1, Lcom/papa91/mix/R$id;->gift:I

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/user/activity/banana_peel/exchange_center"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v4, "4"

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static/range {v3 .. v8}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    sget v1, Lcom/papa91/mix/R$id;->receive:I

    const-string v3, "\u9999\u8549\u6b63\u5728\u91c7\u6458\u4e2d\uff0c\u8bf7\u7a0d\u540e~"

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    iget v4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onReceiveReward(Ljava/lang/String;IIILjava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    goto :goto_0

    .line 17
    :cond_6
    sget v1, Lcom/papa91/mix/R$id;->doubleReward:I

    if-ne v0, v1, :cond_9

    .line 18
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    iget v4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onDoubleReward(Ljava/lang/String;IIILjava/lang/String;)V

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/view/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    sget p1, Lcom/papa91/mix/R$layout;->dialog_receive_banana:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcom/papa91/mix/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 5
    sget p1, Lcom/papa91/mix/R$id;->gift:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->gift:Landroid/view/View;

    .line 6
    sget p1, Lcom/papa91/mix/R$id;->receive:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->receive:Landroid/view/View;

    .line 7
    sget p1, Lcom/papa91/mix/R$id;->doubleReward:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleReward:Landroid/view/View;

    .line 8
    sget p1, Lcom/papa91/mix/R$id;->count:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/papa91/mix/R$id;->textView31:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    .line 10
    sget v0, Lcom/papa91/mix/R$id;->textView2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 12
    sget p1, Lcom/papa91/mix/R$id;->remain:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    .line 13
    sget p1, Lcom/papa91/mix/R$id;->doubleRewardText:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    .line 14
    sget p1, Lcom/papa91/mix/R$id;->countGroup:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    .line 15
    sget p1, Lcom/papa91/mix/R$id;->getTip:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    .line 16
    sget p1, Lcom/papa91/mix/R$id;->imageView2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 17
    sget v0, Lcom/papa91/mix/R$drawable;->gif_cd_animation:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->gift:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->receive:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleReward:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$2;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$2;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method onRewardInfo(Ljava/lang/String;IIIII)V
    .locals 11

    move-object v8, p0

    .line 1
    iget-object v9, v8, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/papa91/view/RewardBananaDialog$4;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p5

    move v3, p4

    move v4, p2

    move v5, p3

    move/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/papa91/view/RewardBananaDialog$4;-><init>(Lcom/papa91/view/RewardBananaDialog;IIIIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onRewardInfoChanged(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uniqueId"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newUniqueId"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    const-string p2, "gameId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "amount"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "times"

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget p1, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "total_reward_amount"

    .line 10
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    const-string p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packageName"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 13
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "\u9999\u8549 XN\u500d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9999\u8549 X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u500d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 18
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u65e5\u5269\u4f59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u5956\u52b1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7d2f\u8ba1\u83b7\u5f97\u9999\u8549"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->token:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/papa91/view/RewardBananaDialog;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setData(ILjava/lang/String;IIILjava/lang/String;I)V
    .locals 0

    .line 10
    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 11
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    .line 12
    iput p7, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    .line 13
    iput p3, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 14
    iput p4, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 15
    iput p5, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 16
    iput-object p6, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    const-string p1, ""

    const/4 p6, 0x1

    if-ne p5, p6, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    move-object p2, p1

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo()V

    :cond_2
    return-void
.end method

.method public setData(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 3
    iput p3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 4
    iput p4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 5
    iput-object p5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    const-string p5, ""

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput-object p5, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    move-object p1, p5

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo()V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->show()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    .line 13
    iput v1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget v1, Lcom/papa91/mix/R$drawable;->shape_close_bg_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 16
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->startCloseTimeCount()V

    :cond_1
    return-void
.end method

.method startCloseTimeCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
