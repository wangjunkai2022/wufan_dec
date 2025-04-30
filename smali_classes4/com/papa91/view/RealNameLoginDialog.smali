.class public Lcom/papa91/view/RealNameLoginDialog;
.super Landroid/app/Dialog;
.source "RealNameLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;,
        Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;
    }
.end annotation


# static fields
.field public static final BUTENTYPE_CENTER:I = 0x4

.field public static final BUTENTYPE_CLOSE:I = 0x1

.field public static final BUTENTYPE_LEFT:I = 0x2

.field public static final BUTENTYPE_RIGHT:I = 0x3

.field private static context:Landroid/content/Context;

.field private static dialog:Lcom/papa91/view/RealNameLoginDialog;


# instance fields
.field private clickListener:Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;

.field private close:Landroid/view/View;

.field private dialog_button_center:Landroid/widget/Button;

.field private dialog_button_left:Landroid/widget/Button;

.field private dialog_button_right:Landroid/widget/Button;

.field private dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field private dialog_content_Text:Ljava/lang/String;

.field private flag:Z

.field realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

.field private tip_title:Landroid/widget/TextView;

.field private tip_title_Text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, "\u63d0\u793a"

    .line 2
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title_Text:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 3
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content_Text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "\u63d0\u793a"

    .line 6
    iput-object p2, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title_Text:Ljava/lang/String;

    const-string p2, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 7
    iput-object p2, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content_Text:Ljava/lang/String;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    .line 9
    sput-object p1, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, "\u63d0\u793a"

    .line 11
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title_Text:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 12
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content_Text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    return-void
.end method

.method public static synthetic a(Lcom/papa91/view/RealNameLoginDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/view/RealNameLoginDialog;->lambda$initData$0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/papa91/view/RealNameLoginDialog;)Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/RealNameLoginDialog;->clickListener:Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    if-eq p0, v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/papa91/view/RealNameLoginDialog;

    sget v1, Lcom/papa91/mix/R$style;->MyDialog:I

    invoke-direct {v0, p0, v1}, Lcom/papa91/view/RealNameLoginDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    .line 3
    :cond_1
    sget-object p0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v1, Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;-><init>(Lcom/papa91/view/RealNameLoginDialog;Lcom/papa91/view/RealNameLoginDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v1, Lcom/papa91/view/a;

    invoke-direct {v1, p0}, Lcom/papa91/view/a;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    new-instance v2, Lcom/papa91/view/RealNameLoginDialog$1;

    invoke-direct {v2, p0}, Lcom/papa91/view/RealNameLoginDialog$1;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    iget-object v3, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    new-instance v3, Lcom/papa91/view/RealNameLoginDialog$2;

    invoke-direct {v3, p0}, Lcom/papa91/view/RealNameLoginDialog$2;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    iget-object v3, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    new-instance v3, Lcom/papa91/view/RealNameLoginDialog$3;

    invoke-direct {v3, p0}, Lcom/papa91/view/RealNameLoginDialog$3;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    new-instance v1, Lcom/papa91/view/RealNameLoginDialog$4;

    invoke-direct {v1, p0}, Lcom/papa91/view/RealNameLoginDialog$4;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$initData$0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    sget p1, Lcom/papa91/mix/R$layout;->realname_notice_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcom/papa91/mix/R$id;->tip_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/papa91/mix/R$id;->dialog_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 6
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_left:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    .line 7
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_right:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    .line 8
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_center:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    .line 9
    sget p1, Lcom/papa91/mix/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 15
    invoke-direct {p0}, Lcom/papa91/view/RealNameLoginDialog;->initData()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setDialogData(Lcom/papa91/arc/bean/PopwindowBean;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 2
    iget-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/papa91/view/RealNameLoginDialog;->initData()V

    :cond_0
    return-object p0
.end method

.method public setDialogListener(Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->clickListener:Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;

    return-object p0
.end method

.method public setIsCancelable(Z)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
