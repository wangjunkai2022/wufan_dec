.class public Lcom/join/mgps/dialog/a1;
.super Lcom/join/mgps/dialog/q;
.source "ModDownloadSupportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/a1$a;
    }
.end annotation


# instance fields
.field private j:Landroid/widget/TextView;

.field k:Lcom/join/mgps/dialog/a1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/q;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n(Lcom/join/mgps/dialog/a1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->k:Lcom/join/mgps/dialog/a1$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0910f5

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/a1;->k:Lcom/join/mgps/dialog/a1$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/a1$a;->a(Lcom/join/mgps/dialog/a1;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/q;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0182

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0910f5

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->j:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/a1;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
