.class public Lcom/join/mgps/customview/SlideBottomPanel;
.super Landroid/widget/FrameLayout;
.source "SlideBottomPanel.java"


# static fields
.field private static final E:Ljava/lang/String;

.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static final H:I = -0x1

.field private static final I:I = 0x3c

.field private static final J:I = 0x17c

.field private static final K:I = 0x1e

.field private static final n0:I = 0xfa

.field private static final o0:I = 0x12c

.field private static final p0:Z = true

.field private static final q0:Z = true

.field private static final r0:Z

.field private static s0:F


# instance fields
.field private A:Landroid/view/animation/Interpolator;

.field private B:Landroid/view/animation/Interpolator;

.field private C:Landroid/content/Context;

.field private D:Lcom/join/mgps/customview/DarkFrameLayout;

.field private a:I

.field private b:F

.field private c:Z

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:Landroid/view/VelocityTracker;

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:J

.field private q:Z

.field private r:I

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Ljava/lang/String;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    sput v0, Lcom/join/mgps/customview/SlideBottomPanel;->s0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlideBottomPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 11
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Landroid/view/animation/Interpolator;

    .line 12
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->B:Landroid/view/animation/Interpolator;

    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->b:F

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->h:I

    .line 17
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->i:I

    .line 18
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    .line 19
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlideBottomPanel:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:I

    const/16 p2, 0x17c

    .line 21
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    const/4 p2, 0x2

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    const/16 p2, 0x3c

    .line 23
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sput p2, Lcom/join/mgps/customview/SlideBottomPanel;->s0:F

    const/16 p2, 0x1e

    .line 24
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    const/16 p2, 0xfa

    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:I

    const/4 p2, 0x4

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    const/4 p2, 0x3

    .line 27
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->u()V

    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private B(I)Z
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:F

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    invoke-direct {p0, v0, v1, v3}, Lcom/join/mgps/customview/SlideBottomPanel;->n(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 4
    :cond_0
    instance-of v1, v0, Landroid/widget/AbsListView;

    const/16 v3, 0x13

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Landroid/widget/AbsListView;

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->a(Landroid/widget/AbsListView;I)Z

    move-result p1

    return p1

    .line 9
    :cond_2
    instance-of v1, v0, Landroid/widget/ScrollView;

    const/16 v4, 0xe

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Landroid/widget/ScrollView;

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p1

    return p1

    .line 13
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->z(Landroid/widget/ScrollView;I)Z

    move-result p1

    return p1

    .line 14
    :cond_4
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:F

    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    invoke-direct {p0, v0, v1, v5}, Lcom/join/mgps/customview/SlideBottomPanel;->n(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    return v2

    .line 16
    :cond_5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 17
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_7

    .line 18
    check-cast v0, Landroid/widget/AbsListView;

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->a(Landroid/widget/AbsListView;I)Z

    move-result p1

    return p1

    .line 22
    :cond_7
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_9

    .line 23
    check-cast v0, Landroid/widget/ScrollView;

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_8

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p1

    return p1

    .line 26
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->z(Landroid/widget/ScrollView;I)Z

    move-result p1

    return p1

    :cond_9
    return v2
.end method

.method private a(Landroid/widget/AbsListView;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x1

    if-lez p2, :cond_3

    add-int/lit8 p2, v0, -0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr v2, v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p1

    sub-int/2addr v0, p1

    if-le p2, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 5
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-gtz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p1

    if-ge p2, p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlideBottomPanel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:Z

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:Z

    return p1
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->A(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/SlideBottomPanel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/SlideBottomPanel;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    return p0
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->h:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:F

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    return-void
.end method

.method private j(Landroid/widget/ScrollView;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    sub-int v1, v2, v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p1, :cond_1

    sub-int/2addr v2, p1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    :cond_2
    :goto_0
    return v2
.end method

.method private l(FFFF)D
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private m(I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->b:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private n(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private o(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:J

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 12
    iput-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private p(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->B(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->i()V

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    const/4 p1, 0x2

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->t(Landroid/view/View;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:Z

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v0

    .line 17
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v2, v1

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    int-to-float v2, v1

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    .line 18
    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    sub-float/2addr v4, v0

    const/high16 v0, 0x431f0000    # 159.0f

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    .line 19
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    if-nez v0, :cond_6

    .line 20
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v0

    .line 22
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v4, v3

    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    int-to-float v1, v3

    sub-float/2addr v1, v5

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_7
    add-float v2, v0, v1

    int-to-float v4, v3

    .line 24
    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_8

    int-to-float v1, v3

    sub-float/2addr v1, v5

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_8
    float-to-int v0, v1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method private q(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:J

    sub-long/2addr v0, v2

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->i()V

    .line 4
    iget-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->i:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->k()V

    goto :goto_0

    .line 7
    :cond_3
    iget-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-nez v2, :cond_4

    const-wide/16 v4, 0x12c

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:F

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/join/mgps/customview/SlideBottomPanel;->l(FFFF)D

    move-result-wide v0

    sget v2, Lcom/join/mgps/customview/SlideBottomPanel;->s0:F

    float-to-double v4, v2

    cmpg-double v2, v0, v4

    if-gez v2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->k()V

    goto :goto_0

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 13
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v2

    .line 16
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v5, v4

    iget v6, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_8

    int-to-float v5, v4

    sub-float/2addr v5, v6

    iget v7, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    add-float/2addr v5, v7

    cmpg-float v5, v2, v5

    if-gez v5, :cond_7

    goto :goto_1

    :cond_7
    int-to-float p1, v4

    sub-float/2addr p1, v6

    add-float/2addr p1, v7

    cmpl-float p1, v2, p1

    if-lez p1, :cond_9

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    goto :goto_2

    :cond_8
    :goto_1
    new-array p1, p1, [F

    aput v2, p1, v0

    const/4 v2, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v6

    aput v4, p1, v2

    const-string v2, "y"

    .line 18
    invoke-static {v1, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:I

    int-to-long v1, v1

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 20
    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    .line 22
    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    return-void
.end method

.method private s()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    new-array v0, v0, [F

    const/4 v3, 0x0

    .line 4
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v4, v4

    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 8
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$a;

    invoke-direct {v3, p0, v1, v2}, Lcom/join/mgps/customview/SlideBottomPanel$a;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v2, Lcom/join/mgps/customview/SlideBottomPanel$b;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/SlideBottomPanel$b;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private t(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private u()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/DarkFrameLayout;

    iget-object v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/DarkFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/DarkFrameLayout;->setSlideBottomPanel(Lcom/join/mgps/customview/SlideBottomPanel;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private v(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private x(I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->b:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private z(Landroid/widget/ScrollView;I)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->j(Landroid/widget/ScrollView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    if-gez p2, :cond_2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->v(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->p(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->q(Landroid/view/MotionEvent;)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->y()V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->o(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    return v1
.end method

.method public k()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Lcom/join/mgps/customview/DarkFrameLayout;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DarkFrameLayout;->c(Z)V

    :cond_2
    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    new-array v0, v0, [F

    const/4 v3, 0x0

    .line 5
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v4

    aput v4, v0, v3

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:F

    sub-float/2addr v3, v4

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:I

    int-to-long v3, v3

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$c;

    invoke-direct {v3, p0, v2}, Lcom/join/mgps/customview/SlideBottomPanel$c;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$d;

    invoke-direct {v3, p0}, Lcom/join/mgps/customview/SlideBottomPanel$d;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 13
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/SlideBottomPanel;->t(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->a:I

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    int-to-float p1, p1

    iget p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    iget p4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->a:I

    if-ge p3, p4, :cond_3

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 6
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    if-ne p5, v0, :cond_2

    .line 8
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget p5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    float-to-int p5, p5

    invoke-virtual {p4, p2, p2, p2, p5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p4, p2, p1, p5, v0}, Landroid/view/View;->layout(IIII)V

    const/4 p5, 0x2

    .line 11
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    return v0
.end method
