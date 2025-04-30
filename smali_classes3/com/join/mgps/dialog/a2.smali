.class public Lcom/join/mgps/dialog/a2;
.super Landroid/app/Dialog;
.source "WhiteBackDialogDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/a2$c;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/widget/TextView;

.field c:Lcom/join/mgps/dialog/a2$c;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/dialog/a2$c;)V
    .locals 1

    const v0, 0x7f120176

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/a2;->c:Lcom/join/mgps/dialog/a2$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    iget-object p1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c05f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/j;->B(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    const v0, 0x7f09100a

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f090364

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09036b

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902eb

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/dialog/a2;->d:Landroid/widget/TextView;

    .line 12
    new-instance v2, Lcom/join/mgps/dialog/a2$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/a2$a;-><init>(Lcom/join/mgps/dialog/a2;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v0, Lcom/join/mgps/dialog/a2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/a2$b;-><init>(Lcom/join/mgps/dialog/a2;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
