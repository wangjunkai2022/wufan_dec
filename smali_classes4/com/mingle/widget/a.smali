.class public Lcom/mingle/widget/a;
.super Ljava/lang/Object;
.source "ShapeLoadingDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Lcom/mingle/widget/LoadingView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/mingle/widget/a;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    sget v2, Lcom/mingle/shapeloading/R$style;->custom_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 2
    iget-object v0, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mingle/shapeloading/R$layout;->layout_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    .line 3
    sget v1, Lcom/mingle/shapeloading/R$id;->loadView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mingle/widget/LoadingView;

    iput-object v0, p0, Lcom/mingle/widget/a;->c:Lcom/mingle/widget/LoadingView;

    .line 4
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->c:Lcom/mingle/widget/LoadingView;

    invoke-virtual {v0, p1}, Lcom/mingle/widget/LoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
