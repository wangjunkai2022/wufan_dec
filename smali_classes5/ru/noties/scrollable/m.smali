.class public abstract Lru/noties/scrollable/m;
.super Ljava/lang/Object;
.source "OverScrollListenerBase.java"

# interfaces
.implements Lru/noties/scrollable/l;


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lru/noties/scrollable/m;->b:F

    return-void
.end method

.method static synthetic d(Lru/noties/scrollable/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lru/noties/scrollable/m;->a:I

    return p0
.end method

.method static synthetic e(Lru/noties/scrollable/m;I)I
    .locals 0

    .line 1
    iput p1, p0, Lru/noties/scrollable/m;->a:I

    return p1
.end method


# virtual methods
.method public a(Lru/noties/scrollable/ScrollableLayout;I)Z
    .locals 0

    .line 1
    iget p1, p0, Lru/noties/scrollable/m;->a:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/noties/scrollable/m;->f()V

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->i(Lru/noties/scrollable/ScrollableLayout;)F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p0, v1}, Lru/noties/scrollable/m;->g(Landroid/animation/ValueAnimator;)V

    .line 5
    iget-object v1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lru/noties/scrollable/m$a;

    invoke-direct {v2, p0, p1, v0}, Lru/noties/scrollable/m$a;-><init>(Lru/noties/scrollable/m;Lru/noties/scrollable/ScrollableLayout;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object p1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c(Lru/noties/scrollable/ScrollableLayout;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru/noties/scrollable/m;->f()V

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->h(Lru/noties/scrollable/ScrollableLayout;)I

    move-result v0

    .line 3
    iget v1, p0, Lru/noties/scrollable/m;->a:I

    neg-int p2, p2

    add-int/2addr v1, p2

    iput v1, p0, Lru/noties/scrollable/m;->a:I

    if-le v1, v0, :cond_0

    .line 4
    iput v0, p0, Lru/noties/scrollable/m;->a:I

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->i(Lru/noties/scrollable/ScrollableLayout;)F

    move-result p2

    .line 6
    iget v0, p0, Lru/noties/scrollable/m;->b:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2}, Lru/noties/scrollable/m;->j(Lru/noties/scrollable/ScrollableLayout;F)V

    .line 8
    iput p2, p0, Lru/noties/scrollable/m;->b:F

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lru/noties/scrollable/m;->a:I

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected g(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method protected h(Lru/noties/scrollable/ScrollableLayout;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lru/noties/scrollable/ScrollableLayout;->getMaxScrollY()I

    move-result p1

    return p1
.end method

.method protected i(Lru/noties/scrollable/ScrollableLayout;)F
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/m;->a:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->h(Lru/noties/scrollable/ScrollableLayout;)I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    :goto_0
    return p1
.end method

.method protected abstract j(Lru/noties/scrollable/ScrollableLayout;F)V
.end method
