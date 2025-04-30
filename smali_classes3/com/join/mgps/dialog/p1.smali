.class public Lcom/join/mgps/dialog/p1;
.super Landroid/app/Dialog;
.source "PaiWeiRuleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/p1$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/join/mgps/dialog/p1$b;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/dialog/p1;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/dialog/p1;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/p1;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/p1;)Lcom/join/mgps/dialog/p1$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/p1;->c:Lcom/join/mgps/dialog/p1$b;

    return-object p0
.end method


# virtual methods
.method public b(Z)Lcom/join/mgps/dialog/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public c(Lcom/join/mgps/dialog/p1$b;)Lcom/join/mgps/dialog/p1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/p1;->c:Lcom/join/mgps/dialog/p1$b;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/p1;->d:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0c0505

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090bb3

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/p1;->a:Landroid/widget/TextView;

    const p1, 0x7f090baa

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/p1;->b:Landroid/widget/ImageView;

    .line 6
    new-instance v0, Lcom/join/mgps/dialog/p1$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p1$a;-><init>(Lcom/join/mgps/dialog/p1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-boolean v0, p0, Lcom/join/mgps/dialog/p1;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
