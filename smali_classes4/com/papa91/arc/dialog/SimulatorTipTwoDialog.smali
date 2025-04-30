.class public Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SimulatorTipTwoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_ok:Landroid/widget/Button;

.field private iv_close:Landroid/widget/ImageView;

.field private listener:Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;

.field private tv_content:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_simulator_tip_two:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->initView()V

    .line 6
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setListener()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->tv_title:Landroid/widget/TextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->tv_content:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->iv_close:Landroid/widget/ImageView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_cancel:Landroid/widget/Button;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_ok:Landroid/widget/Button;

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->listener:Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;->onConfirm()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_cancel:I

    if-ne v0, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->listener:Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;->onCancel()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    if-ne p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->listener:Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;->onClose()V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCancelText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setListener(Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->listener:Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;

    return-void
.end method

.method public setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
