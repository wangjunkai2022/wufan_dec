.class public Lcom/airsaid/pickerviewlibrary/c;
.super Lcom/airsaid/pickerviewlibrary/widget/a;
.source "OptionsPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airsaid/pickerviewlibrary/widget/a;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private n:Landroid/content/Context;

.field private o:Lcom/airsaid/pickerviewlibrary/c$a;

.field private p:Lcom/airsaid/pickerviewlibrary/widget/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airsaid/pickerviewlibrary/widget/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->n:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/c;->o()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/airsaid/pickerviewlibrary/R$layout;->pickerview_options:I

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/b;

    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->optionspicker:I

    invoke-virtual {p0, v1}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 3
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->rlt_head_view:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/view/View;

    .line 4
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Landroid/widget/Button;

    .line 6
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 7
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public B(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public C(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    return-void
.end method

.method public D(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    return-void
.end method

.method public E(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public H(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    return-void
.end method

.method public I(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->s(F)V

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public L(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->o:Lcom/airsaid/pickerviewlibrary/c$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->g()[I

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->o:Lcom/airsaid/pickerviewlibrary/c$a;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-interface {v0, v1, v2, p1}, Lcom/airsaid/pickerviewlibrary/c$a;->a(III)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    if-ne p1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public r(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->k(Z)V

    return-void
.end method

.method public t(ZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->l(ZZZ)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y(Lcom/airsaid/pickerviewlibrary/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->o:Lcom/airsaid/pickerviewlibrary/c$a;

    return-void
.end method

.method public z(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/widget/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method
