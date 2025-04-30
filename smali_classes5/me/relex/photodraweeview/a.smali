.class public Lme/relex/photodraweeview/a;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Lme/relex/photodraweeview/d;
.implements Landroid/view/View$OnTouchListener;
.implements Lme/relex/photodraweeview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/photodraweeview/a$c;,
        Lme/relex/photodraweeview/a$b;
    }
.end annotation


# static fields
.field private static final v:I = -0x1

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I = 0x2


# instance fields
.field private final a:[F

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/view/animation/Interpolator;

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:Lme/relex/photodraweeview/i;

.field private i:Landroidx/core/view/GestureDetectorCompat;

.field private j:Z

.field private k:Z

.field private l:I

.field private final m:Landroid/graphics/Matrix;

.field private n:I

.field private o:I

.field private p:Lme/relex/photodraweeview/a$c;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Lme/relex/photodraweeview/e;

.field private s:Lme/relex/photodraweeview/h;

.field private t:Landroid/view/View$OnLongClickListener;

.field private u:Lme/relex/photodraweeview/f;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lme/relex/photodraweeview/a;->a:[F

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lme/relex/photodraweeview/a;->d:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 6
    iput v0, p0, Lme/relex/photodraweeview/a;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 7
    iput v0, p0, Lme/relex/photodraweeview/a;->f:F

    const-wide/16 v0, 0xc8

    .line 8
    iput-wide v0, p0, Lme/relex/photodraweeview/a;->g:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->j:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->k:Z

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lme/relex/photodraweeview/a;->l:I

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lme/relex/photodraweeview/a;->n:I

    iput v0, p0, Lme/relex/photodraweeview/a;->o:I

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->q:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    sget-object v1, Lcom/facebook/drawee/drawable/r$c;->c:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    .line 16
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    new-instance v0, Lme/relex/photodraweeview/i;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/relex/photodraweeview/i;-><init>(Landroid/content/Context;Lme/relex/photodraweeview/g;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    .line 18
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lme/relex/photodraweeview/a$a;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/a$a;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->i:Landroidx/core/view/GestureDetectorCompat;

    .line 19
    new-instance p1, Lme/relex/photodraweeview/c;

    invoke-direct {p1, p0}, Lme/relex/photodraweeview/c;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic e(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->t:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic f(Lme/relex/photodraweeview/a;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/a;->w(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lme/relex/photodraweeview/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lme/relex/photodraweeview/a;->g:J

    return-wide v0
.end method

.method static synthetic h(Lme/relex/photodraweeview/a;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->c:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic i(Lme/relex/photodraweeview/a;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->p:Lme/relex/photodraweeview/a$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lme/relex/photodraweeview/a$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lme/relex/photodraweeview/a;->p:Lme/relex/photodraweeview/a$c;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v1

    iget v2, p0, Lme/relex/photodraweeview/a;->d:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->o()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v8, Lme/relex/photodraweeview/a$b;

    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v4

    iget v5, p0, Lme/relex/photodraweeview/a;->d:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/a$b;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static n(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MidZoom has to be less than MaxZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MinZoom has to be less than MidZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lme/relex/photodraweeview/a;->o:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v3, p0, Lme/relex/photodraweeview/a;->n:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lme/relex/photodraweeview/a;->b:Landroid/graphics/RectF;

    int-to-float v1, v1

    iget v3, p0, Lme/relex/photodraweeview/a;->n:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    iget-object v1, p0, Lme/relex/photodraweeview/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->k(Landroid/graphics/RectF;)V

    .line 5
    iget-object v0, p0, Lme/relex/photodraweeview/a;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lme/relex/photodraweeview/a;->b:Landroid/graphics/RectF;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->a:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object p1, p0, Lme/relex/photodraweeview/a;->a:[F

    aget p1, p1, p2

    return p1
.end method

.method private t()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private w(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    .line 3
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/a;->n:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->x()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {v1}, Lme/relex/photodraweeview/i;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lme/relex/photodraweeview/a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lme/relex/photodraweeview/a;->j:Z

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lme/relex/photodraweeview/a;->l:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_2

    :cond_1
    if-ne v0, v1, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    :cond_2
    const/4 p1, 0x0

    .line 8
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->m()V

    return-void
.end method

.method public c(FFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/a;->u:Lme/relex/photodraweeview/f;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lme/relex/photodraweeview/f;->a(FFF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    :cond_2
    return-void
.end method

.method public d(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Lme/relex/photodraweeview/a$c;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lme/relex/photodraweeview/a$c;-><init>(Lme/relex/photodraweeview/a;Landroid/content/Context;)V

    iput-object p2, p0, Lme/relex/photodraweeview/a;->p:Lme/relex/photodraweeview/a$c;

    .line 3
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->u()I

    move-result v0

    invoke-direct {p0}, Lme/relex/photodraweeview/a;->t()I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p2, v0, v1, p3, p4}, Lme/relex/photodraweeview/a$c;->b(IIII)V

    .line 4
    iget-object p2, p0, Lme/relex/photodraweeview/a;->p:Lme/relex/photodraweeview/a$c;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->f:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->d:F

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/e;

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->s:Lme/relex/photodraweeview/h;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/relex/photodraweeview/a;->s(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lme/relex/photodraweeview/a;->s(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public l()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->q()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 4
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->t()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    cmpg-float v7, v2, v4

    if-gtz v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    .line 6
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v2, v6

    if-lez v7, :cond_2

    neg-float v4, v2

    goto :goto_1

    .line 7
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v7, v2, v4

    if-gez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->u()I

    move-result v2

    int-to-float v2, v2

    const/4 v7, 0x1

    cmpg-float v8, v3, v2

    if-gtz v8, :cond_4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 9
    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v0

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lme/relex/photodraweeview/a;->l:I

    goto :goto_2

    .line 11
    :cond_4
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v6

    if-lez v5, :cond_5

    neg-float v6, v3

    .line 12
    iput v1, p0, Lme/relex/photodraweeview/a;->l:I

    goto :goto_2

    .line 13
    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_6

    sub-float v6, v2, v0

    .line 14
    iput v7, p0, Lme/relex/photodraweeview/a;->l:I

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lme/relex/photodraweeview/a;->l:I

    .line 16
    :goto_2
    iget-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v7
.end method

.method public o()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    .line 2
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->q()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->j()V

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {p1}, Lme/relex/photodraweeview/i;->d()Z

    move-result p1

    .line 8
    iget-object v0, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->c()Z

    move-result v0

    .line 9
    iget-object v3, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {v3, p2}, Lme/relex/photodraweeview/i;->g(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {p1}, Lme/relex/photodraweeview/i;->d()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lme/relex/photodraweeview/a;->h:Lme/relex/photodraweeview/i;

    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .line 12
    :cond_6
    iput-boolean v1, p0, Lme/relex/photodraweeview/a;->j:Z

    .line 13
    iget-object p1, p0, Lme/relex/photodraweeview/a;->i:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    return v2
.end method

.method public q()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public r()Lcom/facebook/drawee/view/DraweeView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeView;

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/relex/photodraweeview/a;->k:Z

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->d:F

    iget v1, p0, Lme/relex/photodraweeview/a;->e:F

    invoke-static {v0, v1, p1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 2
    iput p1, p0, Lme/relex/photodraweeview/a;->f:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->d:F

    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    invoke-static {v0, p1, v1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 2
    iput p1, p0, Lme/relex/photodraweeview/a;->e:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    invoke-static {p1, v0, v1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 2
    iput p1, p0, Lme/relex/photodraweeview/a;->d:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->i:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lme/relex/photodraweeview/a;->i:Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lme/relex/photodraweeview/c;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/c;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->t:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/e;

    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->u:Lme/relex/photodraweeview/f;

    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->s:Lme/relex/photodraweeview/h;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/a;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget v1, p0, Lme/relex/photodraweeview/a;->d:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 6
    new-instance p4, Lme/relex/photodraweeview/a$b;

    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/a$b;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p4, p0, Lme/relex/photodraweeview/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 8
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScale(FZ)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V

    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0xc8

    .line 1
    :cond_0
    iput-wide p1, p0, Lme/relex/photodraweeview/a;->g:J

    return-void
.end method

.method public update(II)V
    .locals 0

    .line 1
    iput p1, p0, Lme/relex/photodraweeview/a;->o:I

    .line 2
    iput p2, p0, Lme/relex/photodraweeview/a;->n:I

    .line 3
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->y()V

    return-void
.end method

.method protected v()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->j()V

    return-void
.end method
