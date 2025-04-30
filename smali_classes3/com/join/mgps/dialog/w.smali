.class public Lcom/join/mgps/dialog/w;
.super Landroid/app/Dialog;
.source "CloudNoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/w$e;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/CheckBox;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/join/mgps/dialog/w$e;

.field m:Lcom/join/mgps/dialog/w$e;

.field n:Lcom/join/mgps/dialog/w$e;

.field o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/w;->p:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/dialog/w;->p:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/dialog/w;->p:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->m:Lcom/join/mgps/dialog/w$e;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->l:Lcom/join/mgps/dialog/w$e;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/w;->p:Z

    return-object p0
.end method

.method public i(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w;->n:Lcom/join/mgps/dialog/w$e;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0154

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/j;->B(Landroid/app/Activity;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/w;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->k(Landroid/app/Activity;)I

    move-result v1

    .line 6
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p0, p1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090b5c

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->e:Landroid/widget/TextView;

    const p1, 0x7f0911a4

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->c:Landroid/widget/TextView;

    const p1, 0x7f090216

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->b:Landroid/widget/TextView;

    const p1, 0x7f09100f

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->f:Landroid/widget/TextView;

    const p1, 0x7f0902eb

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->g:Landroid/widget/TextView;

    const p1, 0x7f09024d

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/join/mgps/dialog/w;->d:Landroid/widget/CheckBox;

    const p1, 0x7f090288

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 15
    new-instance v0, Lcom/join/mgps/dialog/w$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/w$a;-><init>(Lcom/join/mgps/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/w;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/w;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/w;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/w$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/w$b;-><init>(Lcom/join/mgps/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/w;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/w$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/w$c;-><init>(Lcom/join/mgps/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/w$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/w$d;-><init>(Lcom/join/mgps/dialog/w;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-boolean p1, p0, Lcom/join/mgps/dialog/w;->p:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/w;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/join/mgps/dialog/w;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
