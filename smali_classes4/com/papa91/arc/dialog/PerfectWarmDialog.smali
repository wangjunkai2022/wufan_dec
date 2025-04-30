.class public Lcom/papa91/arc/dialog/PerfectWarmDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "PerfectWarmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;
    }
.end annotation


# instance fields
.field private btn_center:Landroid/widget/TextView;

.field private btn_left:Landroid/widget/TextView;

.field private btn_right:Landroid/widget/TextView;

.field iv_close:Landroid/widget/ImageView;

.field listener:Lcom/papa91/arc/interfaces/IDialogListener;

.field private pop_window:Lcom/papa91/arc/bean/PopwindowBean;

.field tv_title:Landroid/widget/TextView;

.field tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    sget-object p1, Lcom/papa91/arc/dialog/a;->a:Lcom/papa91/arc/dialog/a;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 5
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_perfect_warm:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$5(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$1(Landroid/view/View;)V

    return-void
.end method

.method private initViews()V
    .locals 5

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_warm:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_left:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_right:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    new-instance v3, Lcom/papa91/arc/dialog/e;

    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/e;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    new-instance v3, Lcom/papa91/arc/dialog/c;

    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/c;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    new-instance v3, Lcom/papa91/arc/dialog/d;

    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/d;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    new-instance v3, Lcom/papa91/arc/dialog/b;

    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/b;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :goto_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v3, Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;Lcom/papa91/arc/dialog/PerfectWarmDialog$1;)V

    invoke-virtual {v0, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 33
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v3, Lcom/papa91/arc/dialog/f;

    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/f;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    invoke-virtual {v0, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 35
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method private synthetic lambda$initViews$1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$2(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$5(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    const-string v4, ""

    const-string v5, ""

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public setData(Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    return-object p0
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->initViews()V

    return-void
.end method
