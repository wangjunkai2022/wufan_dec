.class public Lcom/join/mgps/dialog/k0;
.super Landroid/app/AlertDialog;
.source "FightCreateServerDialog.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/k0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/k0;->a:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/k0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0165

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
