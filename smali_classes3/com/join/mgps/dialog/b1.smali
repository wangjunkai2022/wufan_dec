.class public Lcom/join/mgps/dialog/b1;
.super Landroid/app/AlertDialog;
.source "ModFeedBackDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/b1$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/ImageView;

.field f:Lcom/join/mgps/dialog/b1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showmodRunNormal:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v2, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/dialog/b1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p3, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Lcom/join/mgps/dialog/b1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->f:Lcom/join/mgps/dialog/b1$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const v0, 0x7f09114e

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->f:Lcom/join/mgps/dialog/b1$a;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/b1$a;->b(Lcom/join/mgps/dialog/b1;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09114f

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->f:Lcom/join/mgps/dialog/b1$a;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/b1$a;->a(Lcom/join/mgps/dialog/b1;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0183

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f09113e

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->a:Landroid/widget/TextView;

    const p1, 0x7f09114e

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->b:Landroid/widget/TextView;

    const p1, 0x7f09114f

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->c:Landroid/widget/TextView;

    const p1, 0x7f090dd1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0907ee

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b1;->e:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 10
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/b1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
