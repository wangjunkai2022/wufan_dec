.class public Lcom/papa91/view/AutoSlotDialog;
.super Lcom/papa91/view/BaseDialog;
.source "AutoSlotDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;
    }
.end annotation


# instance fields
.field b1:Landroid/view/View;

.field b2:Landroid/view/View;

.field b3:Landroid/view/View;

.field buyVip:Landroid/widget/TextView;

.field buyVip1:Landroid/view/View;

.field close:Landroid/view/View;

.field flag:Landroid/view/View;

.field img1:Lcom/facebook/drawee/view/SimpleDraweeView;

.field img2:Lcom/facebook/drawee/view/SimpleDraweeView;

.field img3:Lcom/facebook/drawee/view/SimpleDraweeView;

.field load1:Landroid/view/View;

.field load2:Landroid/view/View;

.field load3:Landroid/view/View;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field time1:Landroid/widget/TextView;

.field time2:Landroid/widget/TextView;

.field time3:Landroid/widget/TextView;

.field vipLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget p2, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {p0, p1, p2}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    return-void
.end method

.method evictImageCache(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    return-void
.end method

.method getTimeFormat(J)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    const-wide/16 p1, 0x3c

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\u79d2\u524d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xe10

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u5206\u949f\u524d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x15180

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p1

    div-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u5c0f\u65f6\u524d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x278d00

    const-wide/16 v4, 0x18

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p1

    div-long/2addr v0, p1

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u5929\u524d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p1

    div-long/2addr v0, p1

    div-long/2addr v0, v4

    const-wide/16 p1, 0x1e

    div-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\u6708\u524d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method goBuyVip(Landroid/content/Context;)V
    .locals 6

    const-string v1, "4"

    const-string v2, ""

    const-string v3, "https://anv3cjapi.5fun.com/member/vip_view/fc_archive"

    const-string v4, ""

    const-string v5, ""

    move-object v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "vipAutosave"

    .line 2
    invoke-static {v0, p1}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/papa91/mix/R$id;->buyVip1:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/view/AutoSlotDialog;->goBuyVip(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/papa91/mix/R$id;->close:I

    if-ne v0, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->dismiss()V

    :cond_1
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
    sget p1, Lcom/papa91/mix/R$layout;->dialog_auto_saved_slot:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    new-instance p1, Lcom/papa91/view/AutoSlotDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/AutoSlotDialog$1;-><init>(Lcom/papa91/view/AutoSlotDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 5
    sget p1, Lcom/papa91/mix/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->close:Landroid/view/View;

    .line 6
    sget p1, Lcom/papa91/mix/R$id;->buyVip:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip:Landroid/widget/TextView;

    .line 7
    sget p1, Lcom/papa91/mix/R$id;->buyVip1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    .line 8
    sget p1, Lcom/papa91/mix/R$id;->flag:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 9
    sget p1, Lcom/papa91/mix/R$id;->b1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b1:Landroid/view/View;

    .line 10
    sget p1, Lcom/papa91/mix/R$id;->b2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b2:Landroid/view/View;

    .line 11
    sget p1, Lcom/papa91/mix/R$id;->b3:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b3:Landroid/view/View;

    .line 12
    sget p1, Lcom/papa91/mix/R$id;->load1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load1:Landroid/view/View;

    .line 13
    sget p1, Lcom/papa91/mix/R$id;->load2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load2:Landroid/view/View;

    .line 14
    sget p1, Lcom/papa91/mix/R$id;->load3:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load3:Landroid/view/View;

    .line 15
    sget p1, Lcom/papa91/mix/R$id;->time1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time1:Landroid/widget/TextView;

    .line 16
    sget p1, Lcom/papa91/mix/R$id;->time2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time2:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/papa91/mix/R$id;->time3:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time3:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/papa91/mix/R$id;->img1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    sget p1, Lcom/papa91/mix/R$id;->img2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    sget p1, Lcom/papa91/mix/R$id;->img3:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->close:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->update()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public show(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 11
    iput p1, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 12
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->show()V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->update()V

    return-void
.end method

.method showConfirmDialog(Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {v0, v1, v2}, Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    sget v1, Lcom/papa91/mix/R$layout;->dialog_load_slot:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget v1, Lcom/papa91/mix/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/papa91/view/AutoSlotDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/papa91/view/AutoSlotDialog$3;-><init>(Lcom/papa91/view/AutoSlotDialog;Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v1, Lcom/papa91/mix/R$id;->ok:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/papa91/view/AutoSlotDialog$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/papa91/view/AutoSlotDialog$4;-><init>(Lcom/papa91/view/AutoSlotDialog;ILcom/papa91/view/AutoSlotDialog$ConfirmDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->show()V

    return-void
.end method

.method update()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v0, 0x3

    new-array v3, v0, [Landroid/view/View;

    .line 8
    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b1:Landroid/view/View;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b2:Landroid/view/View;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b3:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-array v4, v0, [Landroid/view/View;

    .line 9
    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load1:Landroid/view/View;

    aput-object v7, v4, v2

    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load2:Landroid/view/View;

    aput-object v7, v4, v5

    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load3:Landroid/view/View;

    aput-object v7, v4, v6

    new-array v7, v0, [Landroid/widget/TextView;

    .line 10
    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time1:Landroid/widget/TextView;

    aput-object v8, v7, v2

    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time2:Landroid/widget/TextView;

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time3:Landroid/widget/TextView;

    aput-object v8, v7, v6

    new-array v8, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img1:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v9, v8, v2

    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img2:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img3:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v9, v8, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 12
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v6, v9, :cond_1

    .line 13
    aget-object v9, v3, v6

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_1
    aget-object v9, v3, v6

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {p0, v9}, Lcom/papa91/view/AutoSlotDialog;->evictImageCache(Ljava/lang/String;)V

    .line 17
    aget-object v10, v8, v6

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 18
    new-instance v9, Lcom/papa91/view/AutoSlotDialog$2;

    invoke-direct {v9, p0, v6}, Lcom/papa91/view/AutoSlotDialog$2;-><init>(Lcom/papa91/view/AutoSlotDialog;I)V

    .line 19
    aget-object v10, v4, v6

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    aget-object v10, v8, v6

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 23
    aget-object v10, v7, v6

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {p0, v11, v12}, Lcom/papa91/view/AutoSlotDialog;->getTimeFormat(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez v6, :cond_4

    .line 24
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    if-ge v9, v5, :cond_3

    .line 25
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method
