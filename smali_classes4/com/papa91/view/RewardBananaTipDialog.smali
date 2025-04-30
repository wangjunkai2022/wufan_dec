.class public Lcom/papa91/view/RewardBananaTipDialog;
.super Lcom/papa91/view/BaseDialog;
.source "RewardBananaTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field close:Landroid/widget/TextView;

.field gift:Landroid/view/View;

.field imageView2:Landroid/widget/ImageView;

.field tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/papa91/mix/R$id;->close:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/papa91/mix/R$id;->gift:I

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/user/activity/banana_peel/exchange_center"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "4"

    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v2 .. v7}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/view/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    sget v0, Lcom/papa91/mix/R$layout;->dialog_receive_banana_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lcom/papa91/mix/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/view/RewardBananaTipDialog;->close:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/papa91/mix/R$id;->gift:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/RewardBananaTipDialog;->gift:Landroid/view/View;

    .line 6
    sget v0, Lcom/papa91/mix/R$id;->textView3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/view/RewardBananaTipDialog;->tip:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/papa91/mix/R$id;->imageView2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/view/RewardBananaTipDialog;->imageView2:Landroid/widget/ImageView;

    .line 8
    sget v1, Lcom/papa91/mix/R$drawable;->gif_cd_animation:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/papa91/view/RewardBananaTipDialog;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "\u73a9\u6e38\u620f\u53ef\u5f97\u9999\u8549\n"

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "\u9999\u8549\u53ef\u5151\u6362\u996d\u7968\n"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#FFF05E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u996d\u7968"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 15
    new-instance v2, Landroid/text/SpannableString;

    const-string v4, "\u996d\u7968\u53ef\u5151\u6362\u5956\u54c1"

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v4, p1, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    iget-object p1, p0, Lcom/papa91/view/RewardBananaTipDialog;->tip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/papa91/view/RewardBananaTipDialog;->close:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/papa91/view/RewardBananaTipDialog;->gift:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Lcom/papa91/view/RewardBananaTipDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaTipDialog$1;-><init>(Lcom/papa91/view/RewardBananaTipDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

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

    :cond_0
    return-void
.end method
