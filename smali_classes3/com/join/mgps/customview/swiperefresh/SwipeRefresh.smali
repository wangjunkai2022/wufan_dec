.class public Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
.super Landroid/view/ViewGroup;
.source "SwipeRefresh.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;,
        Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;
    }
.end annotation


# static fields
.field private static final A0:I = 0x96

.field private static final B0:I = 0x12c

.field private static final C0:I = 0xc8

.field private static final D0:I = 0xc8

.field private static final E0:I = 0xffffff

.field private static final F0:I = 0x40

.field private static final G0:[I

.field public static final p0:I = 0x0

.field public static final q0:I = 0x1

.field static final r0:I = 0x32
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final s0:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final t0:Ljava/lang/String;

.field private static final u0:I = 0xff

.field private static final v0:I = 0x4c

.field private static final w0:F = 2.0f

.field private static final x0:I = -0x1

.field private static final y0:F = 0.5f

.field private static final z0:F = 0.8f


# instance fields
.field A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field G:Z

.field private H:I

.field I:Z

.field private J:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

.field private K:Landroid/view/animation/Animation$AnimationListener;

.field private a:Landroid/view/View;

.field b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

.field c:Z

.field private d:I

.field private e:F

.field private f:F

.field private final g:Landroidx/core/view/NestedScrollingParentHelper;

.field private final h:Landroidx/core/view/NestedScrollingChildHelper;

.field private final i:[I

.field private final j:[I

.field private k:Z

.field private l:I

.field m:I

.field private n:F

.field private final n0:Landroid/view/animation/Animation;

.field private o:F

.field private final o0:Landroid/view/animation/Animation;

.field private p:Z

.field private q:I

.field r:Z

.field private s:Z

.field private final t:Landroid/view/animation/DecelerateInterpolator;

.field u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

.field private v:I

.field protected w:I

.field x:F

.field protected y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t0:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    .line 2
    sput-object v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    iput-object v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:[I

    new-array v1, v1, [I

    .line 6
    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j:[I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:I

    .line 9
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Landroid/view/animation/Animation$AnimationListener;

    .line 10
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n0:Landroid/view/animation/Animation;

    .line 11
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$g;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o0:Landroid/view/animation/Animation;

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Landroid/view/animation/DecelerateInterpolator;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 17
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d()V

    const/4 v2, 0x1

    .line 19
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 20
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    int-to-float v1, v1

    .line 21
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    .line 22
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:Landroidx/core/view/NestedScrollingParentHelper;

    .line 23
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    .line 24
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setNestedScrollingEnabled(Z)V

    .line 25
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    neg-int v1, v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k(F)V

    .line 27
    sget-object v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G0:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setEnabled(Z)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n0:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n0:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n0:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n0:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o0:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o0:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o0:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o0:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0xffffff

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 3
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08077f

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private f(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k(FF)V

    const/4 v0, 0x0

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-nez v1, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m(Z)V

    :goto_0
    return-void
.end method

.method private g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(F)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m(Z)V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    div-float v0, p1, v0

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    sub-float/2addr v4, v5

    .line 6
    iget-boolean v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    iget v6, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    sub-int/2addr v5, v6

    goto :goto_0

    .line 7
    :cond_0
    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    :goto_0
    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    .line 8
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v5

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v4, v8

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 9
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    double-to-float v4, v8

    mul-float v4, v4, v6

    mul-float v8, v5, v4

    mul-float v8, v8, v6

    .line 10
    iget v9, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    mul-float v5, v5, v0

    add-float/2addr v5, v8

    float-to-int v0, v5

    add-int/2addr v9, v0

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-eqz v0, :cond_3

    .line 17
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    div-float v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    .line 18
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->D:Landroid/view/animation/Animation;

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s()V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->E:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r()V

    :cond_5
    :goto_1
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v3, p1

    .line 24
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v5, v7, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k(FF)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v0

    add-float/2addr v3, p1

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h(F)V

    .line 27
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    sub-int/2addr v9, p1

    invoke-virtual {p0, v9, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    return-void
.end method

.method private l(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    :cond_1
    return-void
.end method

.method private n(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p(II)Landroid/view/animation/Animation;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;II)V

    const-wide/16 p1, 0x12c

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private q(F)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o:F

    sub-float/2addr p1, v0

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->E:Landroid/view/animation/Animation;

    return-void
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->D:Landroid/view/animation/Animation;

    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private u(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:F

    .line 5
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->F:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->F:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private v(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Landroid/view/animation/Animation;

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;->a(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, -0x1

    if-ge v0, v1, :cond_6

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Landroid/widget/AbsListView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3

    .line 9
    :cond_3
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    return v3

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method k(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    return-void
.end method

.method m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->stop()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xff

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorViewAlpha(I)V

    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    return-void
.end method

.method o(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    if-eqz p2, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-ge p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    if-ne v0, v3, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v2

    .line 9
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q(F)V

    goto :goto_0

    .line 11
    :cond_6
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    .line 12
    iput v3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    goto :goto_0

    .line 13
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    .line 15
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    return v2

    .line 17
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o:F

    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    return p1

    :cond_9
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-nez p3, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    .line 11
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 13
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 14
    iget-object p4, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    .line 11
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:I

    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    if-ne p2, v0, :cond_2

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 1
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    float-to-int v1, v1

    sub-int v1, p3, v1

    .line 2
    aput v1, p4, v0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 5
    aput p3, p4, v0

    .line 6
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    invoke-direct {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:Z

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    aget p1, p4, v0

    sub-int p1, p3, p1

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:[I

    const/4 v1, 0x0

    .line 11
    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    .line 13
    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedScroll(IIII[I)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->startNestedScroll(I)Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:Z

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f(F)V

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    if-gez v0, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    goto :goto_0

    :cond_5
    return v2

    .line 8
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    return v2

    .line 9
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q(F)V

    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    if-eqz v0, :cond_d

    .line 12
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 13
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    goto :goto_0

    :cond_8
    return v2

    .line 14
    :cond_9
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_a

    return v2

    .line 15
    :cond_a
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    if-eqz v1, :cond_b

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 17
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    .line 18
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    .line 19
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f(F)V

    :cond_b
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    return v2

    .line 21
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:I

    .line 22
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:Z

    :cond_d
    :goto_0
    return v1

    :cond_e
    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorViewAlpha(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->g([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 4
    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

    return-void
.end method

.method public setOnRefreshListener(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    .line 3
    iput p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:Z

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-eq v1, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:Z

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    add-int/2addr p1, v1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 6
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G:Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n(ZZ)V

    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42480000    # 50.0f

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->o(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method t(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->C:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->C:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
