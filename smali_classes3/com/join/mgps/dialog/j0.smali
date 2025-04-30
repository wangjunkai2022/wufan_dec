.class public Lcom/join/mgps/dialog/j0;
.super Landroid/app/AlertDialog;
.source "FightClientLoadingDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/j0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/j0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j0;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/j0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c0163

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0904a0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/dialog/j0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const v1, 0x7f090656

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/j0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
