.class Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;
.super Ljava/lang/Object;
.source "ScrollTextViewLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->b(Lcom/join/mgps/customview/ScrollTextViewLayout;Z)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v2, v2, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->h(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v4, v4, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v4}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v5, v5, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v5}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v4, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v4, v4, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v4}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1}, Lg1/f;->O()I

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    const/4 p1, 0x1

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object v3, v3, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {v3}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->i(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I

    return-void
.end method
