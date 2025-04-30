.class Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;
.super Ljava/lang/Object;
.source "QuickReturnFooterBehavior.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->f(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->b:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
