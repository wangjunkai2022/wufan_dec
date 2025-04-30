.class public Lcom/join/mgps/dialog/b;
.super Landroid/app/Dialog;
.source "AccountLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/join/mgps/dialog/b$c;

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, "\u63d0\u793a"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->l:Z

    const/16 p1, 0x8

    .line 7
    iput p1, p0, Lcom/join/mgps/dialog/b;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "\u63d0\u793a"

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 11
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->l:Z

    const/16 p1, 0x8

    .line 14
    iput p1, p0, Lcom/join/mgps/dialog/b;->n:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, "\u63d0\u793a"

    .line 16
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 17
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 18
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->l:Z

    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lcom/join/mgps/dialog/b;->n:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/b;)Lcom/join/mgps/dialog/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/b;->k:Lcom/join/mgps/dialog/b$c;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dialog/b;->m:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/b;->m:I

    return-object p0
.end method

.method public f(I)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/b;->n:I

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->k:Lcom/join/mgps/dialog/b$c;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/b;->l:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0c001f

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090354

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->f:Landroid/widget/CheckBox;

    const p1, 0x7f09100a

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->a:Landroid/widget/TextView;

    const p1, 0x7f09036e

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->b:Landroid/widget/TextView;

    const p1, 0x7f09036b

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    const p1, 0x7f090365

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    const p1, 0x7f090a55

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/b;->e:Landroid/view/View;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->f:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/join/mgps/dialog/b;->n:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget p1, p0, Lcom/join/mgps/dialog/b;->m:I

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->e:Landroid/view/View;

    iget v0, p0, Lcom/join/mgps/dialog/b;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 19
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 21
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07125c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/dialog/b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b$a;-><init>(Lcom/join/mgps/dialog/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/dialog/b$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b$b;-><init>(Lcom/join/mgps/dialog/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-boolean v0, p0, Lcom/join/mgps/dialog/b;->l:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
