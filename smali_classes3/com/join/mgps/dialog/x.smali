.class public Lcom/join/mgps/dialog/x;
.super Landroid/app/Dialog;
.source "CloudNoticeProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/x$c;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ProgressBar;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/join/mgps/dialog/x$c;

.field m:Lcom/join/mgps/dialog/x$c;

.field n:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->m:Lcom/join/mgps/dialog/x$c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/x;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->l:Lcom/join/mgps/dialog/x$c;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->i:Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0157

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f090b5c

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->d:Landroid/widget/TextView;

    const p1, 0x7f090216

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/widget/TextView;

    const p1, 0x7f09100f

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->e:Landroid/widget/TextView;

    const p1, 0x7f0903b3

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->g:Landroid/widget/TextView;

    const p1, 0x7f0903dc

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->f:Landroid/widget/TextView;

    const p1, 0x7f090c58

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/dialog/x;->c:Landroid/widget/ProgressBar;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/x;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/x;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/x$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x$a;-><init>(Lcom/join/mgps/dialog/x;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/x;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/dialog/x$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x$b;-><init>(Lcom/join/mgps/dialog/x;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
