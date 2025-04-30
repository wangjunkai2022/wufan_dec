.class public Lru/noties/scrollable/ScrollableLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;,
        Lru/noties/scrollable/ScrollableLayout$j;,
        Lru/noties/scrollable/ScrollableLayout$h;,
        Lru/noties/scrollable/ScrollableLayout$g;,
        Lru/noties/scrollable/ScrollableLayout$f;,
        Lru/noties/scrollable/ScrollableLayout$i;
    }
.end annotation


# static fields
.field private static final K:J = 0xc8L

.field private static final n0:I = 0x64

.field private static final o0:F = 0.0565f


# instance fields
.field private A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private B:I

.field private C:Z

.field private D:Lru/noties/scrollable/l;

.field private E:I

.field private F:Landroid/view/View;

.field private G:Landroid/animation/ValueAnimator;

.field private H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private final a:Landroid/graphics/Rect;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/noties/scrollable/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lru/noties/scrollable/n;

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/view/GestureDetector;

.field private f:Lru/noties/scrollable/b;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lru/noties/scrollable/ScrollableLayout$g;

.field private k:Lru/noties/scrollable/c;

.field private l:Landroid/animation/ValueAnimator;

.field private m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lru/noties/scrollable/e;

.field private r:Lru/noties/scrollable/d;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:J

.field private v:Z

.field private w:F

.field private x:F

.field private y:Lru/noties/scrollable/j;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->a:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->a:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    .line 10
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    .line 12
    invoke-direct {p0, p1, p2}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->a:Landroid/graphics/Rect;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    .line 16
    new-instance p3, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {p3, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    .line 17
    new-instance p3, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {p3, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    .line 18
    invoke-direct {p0, p1, p2}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->D:Lru/noties/scrollable/l;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->C:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lru/noties/scrollable/l;->b(Lru/noties/scrollable/ScrollableLayout;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->C:Z

    return-void
.end method

.method private C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ScrollableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, v0}, Lru/noties/scrollable/ScrollableLayout;->D(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)Lru/noties/scrollable/n;

    move-result-object v0

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Lru/noties/scrollable/n;

    const/4 v0, 0x6

    const v3, 0x3d676c8b    # 0.0565f

    .line 4
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->setFriction(F)V

    const/4 v0, 0x7

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    .line 8
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->B:I

    const/4 v0, 0x4

    const/16 v3, 0x64

    .line 9
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v3, v0

    .line 10
    invoke-virtual {p0, v3, v4}, Lru/noties/scrollable/ScrollableLayout;->setConsiderIdleMillis(J)V

    const/4 v0, 0x5

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lru/noties/scrollable/f;

    invoke-direct {v0}, Lru/noties/scrollable/f;-><init>()V

    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->setCloseUpAlgorithm(Lru/noties/scrollable/c;)V

    :cond_1
    const/4 v0, 0x2

    const/4 v3, -0x1

    .line 13
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 14
    new-instance v3, Lru/noties/scrollable/o;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lru/noties/scrollable/o;-><init>(J)V

    invoke-virtual {p0, v3}, Lru/noties/scrollable/ScrollableLayout;->setCloseUpIdleAnimationTime(Lru/noties/scrollable/e;)V

    :cond_2
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 17
    new-instance v3, Lru/noties/scrollable/i;

    invoke-direct {v3, v0}, Lru/noties/scrollable/i;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v3}, Lru/noties/scrollable/ScrollableLayout;->setCloseAnimatorConfigurator(Lru/noties/scrollable/d;)V

    :cond_3
    const/16 v0, 0x9

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->E:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lru/noties/scrollable/ScrollableLayout$i;

    invoke-direct {v0, p0, v2}, Lru/noties/scrollable/ScrollableLayout$i;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->d:Landroid/view/GestureDetector;

    .line 21
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lru/noties/scrollable/ScrollableLayout$f;

    invoke-direct {v0, p0, p1}, Lru/noties/scrollable/ScrollableLayout$f;-><init>(Lru/noties/scrollable/ScrollableLayout;Landroid/content/Context;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->e:Landroid/view/GestureDetector;

    .line 22
    new-instance p2, Lru/noties/scrollable/ScrollableLayout$g;

    new-instance v0, Lru/noties/scrollable/ScrollableLayout$a;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$a;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    invoke-direct {p2, v0}, Lru/noties/scrollable/ScrollableLayout$g;-><init>(Lru/noties/scrollable/ScrollableLayout$h;)V

    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->j:Lru/noties/scrollable/ScrollableLayout$g;

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->x:F

    return-void

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    throw p1
.end method

.method static synthetic a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic b(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p1
.end method

.method static synthetic c(Lru/noties/scrollable/ScrollableLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->q:Lru/noties/scrollable/e;

    return-object p0
.end method

.method static synthetic e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->r:Lru/noties/scrollable/d;

    return-object p0
.end method

.method static synthetic f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->D:Lru/noties/scrollable/l;

    return-object p0
.end method

.method static synthetic g(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->C:Z

    return p0
.end method

.method static synthetic h(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->C:Z

    return p1
.end method

.method static synthetic i(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    return p0
.end method

.method static synthetic j(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->y:Lru/noties/scrollable/j;

    return-object p0
.end method

.method static synthetic k(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->f:Lru/noties/scrollable/b;

    return-object p0
.end method

.method static synthetic l(Lru/noties/scrollable/ScrollableLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    return p0
.end method

.method static synthetic m(Lru/noties/scrollable/ScrollableLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    return p1
.end method

.method static synthetic n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Lru/noties/scrollable/n;

    return-object p0
.end method

.method static synthetic o(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    return p0
.end method

.method static synthetic p(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    return p1
.end method

.method static synthetic q(Lru/noties/scrollable/ScrollableLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->z(Z)V

    return-void
.end method

.method static synthetic r(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    return p0
.end method

.method static synthetic s(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    return p1
.end method

.method static synthetic t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/c;

    return-object p0
.end method

.method static synthetic u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic v(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private y(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private z(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    :cond_0
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected B(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    sub-int v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->f:Lru/noties/scrollable/b;

    if-eqz v5, :cond_5

    if-eqz v4, :cond_2

    .line 3
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    if-nez v0, :cond_5

    .line 4
    invoke-interface {v5, v2}, Lru/noties/scrollable/b;->o(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 5
    :cond_2
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    if-nez v4, :cond_3

    invoke-direct {p0, v2}, Lru/noties/scrollable/ScrollableLayout;->y(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->f:Lru/noties/scrollable/b;

    .line 6
    invoke-interface {v0, v2}, Lru/noties/scrollable/b;->o(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_6
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    if-le p1, v0, :cond_7

    move p1, v0

    :cond_7
    :goto_1
    return p1
.end method

.method protected D(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)Lru/noties/scrollable/n;
    .locals 1

    .line 1
    new-instance v0, Lru/noties/scrollable/n;

    invoke-direct {v0, p1, p2, p3}, Lru/noties/scrollable/n;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    return v0
.end method

.method protected G(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->B:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz p1, :cond_4

    .line 6
    invoke-static {v0, p1}, Lru/noties/scrollable/p;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_4

    .line 9
    new-instance p1, Lru/noties/scrollable/ScrollableLayout$c;

    invoke-direct {p1, p0, v0}, Lru/noties/scrollable/ScrollableLayout$c;-><init>(Lru/noties/scrollable/ScrollableLayout;Landroid/view/View;)V

    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public H(Lru/noties/scrollable/k;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->f:Lru/noties/scrollable/b;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p1}, Lru/noties/scrollable/b;->o(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    .line 3
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    .line 4
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->h:Z

    .line 5
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 6
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->C:Z

    .line 7
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 11
    iput-boolean v3, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    .line 12
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->c:Lru/noties/scrollable/n;

    invoke-virtual {v4}, Lru/noties/scrollable/n;->a()V

    .line 13
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->s:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 16
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    iput-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    goto :goto_0

    .line 17
    :cond_1
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->t:Z

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_7

    .line 18
    :cond_3
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    .line 19
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/c;

    if-eqz v4, :cond_4

    .line 20
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    iget-wide v5, p0, Lru/noties/scrollable/ScrollableLayout;->u:J

    invoke-virtual {p0, v4, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    :cond_4
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->v:Z

    if-eqz v4, :cond_6

    if-ne v0, v3, :cond_5

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->w:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 24
    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->x:F

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_5

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 26
    :cond_5
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->v:Z

    .line 27
    :cond_6
    invoke-direct {p0}, Lru/noties/scrollable/ScrollableLayout;->A()V

    .line 28
    :cond_7
    :goto_0
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->h:Z

    .line 29
    iget-boolean v5, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 30
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->e:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    iput-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 31
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->d:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    iput-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->h:Z

    .line 32
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 34
    iget-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->h:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v4, 0x1

    :goto_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_c

    if-nez v6, :cond_c

    if-eqz v4, :cond_c

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    if-ne v0, v5, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-nez v6, :cond_d

    if-eqz v4, :cond_e

    .line 36
    :cond_d
    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->j:Lru/noties/scrollable/ScrollableLayout$g;

    invoke-virtual {v5, p1, v2}, Lru/noties/scrollable/ScrollableLayout$g;->a(Landroid/view/MotionEvent;I)V

    if-nez v4, :cond_e

    return v3

    :cond_e
    if-eqz v0, :cond_f

    .line 37
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->j:Lru/noties/scrollable/ScrollableLayout$g;

    invoke-virtual {v0, p1, v1}, Lru/noties/scrollable/ScrollableLayout$g;->a(Landroid/view/MotionEvent;I)V

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->w:F

    .line 39
    iput-boolean v3, p0, Lru/noties/scrollable/ScrollableLayout;->v:Z

    .line 40
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method public getConsiderIdleMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lru/noties/scrollable/ScrollableLayout;->u:J

    return-wide v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    .line 4
    :cond_0
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->E:I

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->F:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p3, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 6
    iget-boolean p1, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->b:Z

    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    .line 7
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    invoke-direct {v1, v0}, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iput v0, v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->a:I

    .line 4
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    iput-boolean v0, v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->b:Z

    return-object v1
.end method

.method public onScrollChanged(IIII)V
    .locals 5

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 2
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/noties/scrollable/k;

    iget v4, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    invoke-interface {v3, p2, p4, v4}, Lru/noties/scrollable/k;->a(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/c;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->J:Ljava/lang/Runnable;

    iget-wide v1, p0, Lru/noties/scrollable/ScrollableLayout;->u:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lru/noties/scrollable/ScrollableLayout;->B(I)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method public setAutoMaxScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->z:Z

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    return-void
.end method

.method public setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->f:Lru/noties/scrollable/b;

    return-void
.end method

.method public setCloseAnimatorConfigurator(Lru/noties/scrollable/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->r:Lru/noties/scrollable/d;

    return-void
.end method

.method public setCloseUpAlgorithm(Lru/noties/scrollable/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/c;

    return-void
.end method

.method public setCloseUpIdleAnimationTime(Lru/noties/scrollable/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->q:Lru/noties/scrollable/e;

    return-void
.end method

.method public setConsiderIdleMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lru/noties/scrollable/ScrollableLayout;->u:J

    return-void
.end method

.method public setDraggableView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->s:Landroid/view/View;

    return-void
.end method

.method public setFriction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Lru/noties/scrollable/n;

    invoke-virtual {v0, p1}, Lru/noties/scrollable/n;->m(F)V

    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    return-void
.end method

.method public setOnFlingOverListener(Lru/noties/scrollable/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->y:Lru/noties/scrollable/j;

    return-void
.end method

.method public setOnScrollChangedListener(Lru/noties/scrollable/k;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    return-void
.end method

.method public setOverScrollListener(Lru/noties/scrollable/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->D:Lru/noties/scrollable/l;

    return-void
.end method

.method public setSelfUpdateScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->n:Z

    return-void
.end method

.method public w(Lru/noties/scrollable/k;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public x(I)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 4
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    new-instance v1, Lru/noties/scrollable/ScrollableLayout$j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_0
    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 9
    :cond_3
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:I

    if-le p1, v0, :cond_4

    move p1, v0

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 11
    new-instance v1, Lru/noties/scrollable/ScrollableLayout$b;

    invoke-direct {v1, p0, v0, p1}, Lru/noties/scrollable/ScrollableLayout$b;-><init>(Lru/noties/scrollable/ScrollableLayout;II)V

    iput-object v1, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 12
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/animation/ValueAnimator;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
