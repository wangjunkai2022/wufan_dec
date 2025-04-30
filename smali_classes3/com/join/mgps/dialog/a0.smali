.class public Lcom/join/mgps/dialog/a0;
.super Landroid/app/Dialog;
.source "CloudShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/a0$c;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/join/mgps/dialog/a0$c;

.field m:Lcom/join/mgps/dialog/a0$c;

.field n:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->m:Lcom/join/mgps/dialog/a0$c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->j:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->l:Lcom/join/mgps/dialog/a0$c;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0158

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f090b5c

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f090216

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->b:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->e:Landroid/widget/TextView;

    const p1, 0x7f0902eb

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->f:Landroid/widget/TextView;

    const p1, 0x7f090b51

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/a0;->c:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/a0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/a0$a;-><init>(Lcom/join/mgps/dialog/a0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/a0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/a0;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/a0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/a0$b;-><init>(Lcom/join/mgps/dialog/a0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
