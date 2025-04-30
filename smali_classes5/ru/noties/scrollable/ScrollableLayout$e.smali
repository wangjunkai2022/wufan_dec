.class Lru/noties/scrollable/ScrollableLayout$e;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->q(Lru/noties/scrollable/ScrollableLayout;Z)V

    .line 2
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->r(Lru/noties/scrollable/ScrollableLayout;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->o(Lru/noties/scrollable/ScrollableLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    .line 5
    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    move-result v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;

    move-result-object v1

    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lru/noties/scrollable/c;->b(Lru/noties/scrollable/ScrollableLayout;II)I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v2, v3}, Lru/noties/scrollable/ScrollableLayout;->v(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lru/noties/scrollable/ScrollableLayout$j;

    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    :cond_4
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    :goto_0
    sub-int v2, v1, v0

    .line 15
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    new-instance v4, Lru/noties/scrollable/ScrollableLayout$e$a;

    invoke-direct {v4, p0, v0, v2}, Lru/noties/scrollable/ScrollableLayout$e$a;-><init>(Lru/noties/scrollable/ScrollableLayout$e;II)V

    invoke-static {v3, v4}, Lru/noties/scrollable/ScrollableLayout;->b(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 18
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;

    move-result-object v2

    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v3}, Lru/noties/scrollable/ScrollableLayout;->l(Lru/noties/scrollable/ScrollableLayout;)I

    move-result v4

    invoke-interface {v2, v3, v0, v1, v4}, Lru/noties/scrollable/e;->a(Lru/noties/scrollable/ScrollableLayout;III)J

    move-result-wide v0

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0xc8

    .line 19
    :goto_1
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;

    move-result-object v0

    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v1}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/noties/scrollable/d;->a(Landroid/animation/ValueAnimator;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
