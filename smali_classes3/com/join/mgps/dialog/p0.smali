.class public Lcom/join/mgps/dialog/p0;
.super Landroid/app/Dialog;
.source "ForumDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1204ce

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c016d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f090c35

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->b:Landroid/widget/Button;

    const p1, 0x7f090ae4

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->c:Landroid/widget/Button;

    const p1, 0x7f09100a

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->d:Landroid/widget/TextView;

    const p1, 0x7f091009

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->e:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/p0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
