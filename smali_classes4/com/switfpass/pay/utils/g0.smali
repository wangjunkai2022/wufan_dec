.class public Lcom/switfpass/pay/utils/g0;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V
    .locals 2

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getStyle_dialog()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/switfpass/pay/utils/g0;->b:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_clor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_dialog()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/switfpass/pay/utils/g0;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_stop()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/switfpass/pay/utils/g0;->c:Landroid/widget/ImageView;

    if-nez p3, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/g0;->c:Landroid/widget/ImageView;

    new-instance v0, Lcom/switfpass/pay/utils/z0;

    invoke-direct {v0, p3}, Lcom/switfpass/pay/utils/z0;-><init>(Lcom/switfpass/pay/utils/f0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/g0;->a:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_tv_dialog()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/utils/g0;->b:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
