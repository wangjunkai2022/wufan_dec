.class Lcom/join/mgps/customview/ScrollTextViewLayout$b;
.super Ljava/lang/Object;
.source "ScrollTextViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollTextViewLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->a(Lcom/join/mgps/customview/ScrollTextViewLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v3}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    move-result v0

    .line 7
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x3e8

    .line 8
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 9
    new-instance v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout$b;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
