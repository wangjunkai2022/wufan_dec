.class public Lcom/join/mgps/dialog/c2;
.super Landroid/app/Dialog;
.source "WifiFightMismatchDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/ImageView;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/c2;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/c2;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/dialog/c2;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/dialog/c2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c2;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/c2;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0168

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090210

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/c2;->b:Landroid/widget/Button;

    const v0, 0x7f09012c

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c2;->c:Landroid/widget/ImageView;

    const v0, 0x7f09075e

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/c2;->g:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/c2;->e:Ljava/lang/String;

    const-string v2, "$1"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dialog/c2;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/c2;->b:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/dialog/c2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/c2$a;-><init>(Lcom/join/mgps/dialog/c2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/dialog/c2;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/dialog/c2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/c2$b;-><init>(Lcom/join/mgps/dialog/c2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
