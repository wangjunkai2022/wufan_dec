.class public Lcom/join/mgps/dialog/o0;
.super Landroid/app/AlertDialog;
.source "FightWifiErrorDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/o0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c016b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09100f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/o0;->b:Landroid/widget/TextView;

    const v0, 0x7f09075e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/o0;->c:Landroid/widget/TextView;

    const v0, 0x7f090210

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/dialog/o0;->d:Landroid/widget/ImageView;

    const v0, 0x7f090e25

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/o0;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/dialog/o0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o0$a;-><init>(Lcom/join/mgps/dialog/o0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/o0;->e:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/dialog/o0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o0$b;-><init>(Lcom/join/mgps/dialog/o0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
