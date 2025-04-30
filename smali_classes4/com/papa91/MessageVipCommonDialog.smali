.class public Lcom/papa91/MessageVipCommonDialog;
.super Landroid/app/AlertDialog;
.source "MessageVipCommonDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ad_id:Ljava/lang/String;

.field private btn_l:Ljava/lang/String;

.field private btn_r:Ljava/lang/String;

.field private btn_url:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private count:Landroid/widget/TextView;

.field private dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private emusVipCancelTv:Landroid/widget/TextView;

.field private emusVipContentTv:Landroid/widget/TextView;

.field private emusVipOkTv:Landroid/widget/TextView;

.field private flag:Landroid/view/View;

.field private pic:Ljava/lang/String;

.field private rootLl:Landroid/widget/LinearLayout;

.field private times:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/papa91/MessageVipCommonDialog;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/papa91/MessageVipCommonDialog;->ad_id:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/papa91/MessageVipCommonDialog;->btn_url:Ljava/lang/String;

    .line 10
    iput p9, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    return-void
.end method


# virtual methods
.method public getBtn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x11

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 13
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    sget v0, Lcom/papa91/mix/R$layout;->dialog_vip_common_view:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 15
    sget v0, Lcom/papa91/mix/R$id;->rootLl:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->rootLl:Landroid/widget/LinearLayout;

    .line 16
    sget v0, Lcom/papa91/mix/R$id;->emusVipCancelTv:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    .line 17
    sget v0, Lcom/papa91/mix/R$id;->emusVipOkTv:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    .line 18
    sget v0, Lcom/papa91/mix/R$id;->emusVipContentTv:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    .line 19
    sget v0, Lcom/papa91/mix/R$id;->dialogAdImg:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    sget v0, Lcom/papa91/mix/R$id;->flag:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    .line 21
    sget v0, Lcom/papa91/mix/R$id;->count:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->count:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_3
    iget v0, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 31
    iget-object p1, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/papa91/MessageVipCommonDialog;->count:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5269\u4f59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public setCancelBtn(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEmusVipContentTv(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setImgListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOkBtn(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
