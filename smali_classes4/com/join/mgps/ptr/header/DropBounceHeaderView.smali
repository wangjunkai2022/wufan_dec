.class public Lcom/join/mgps/ptr/header/DropBounceHeaderView;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "DropBounceHeaderView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private c:Lcom/join/mgps/ptr/indicator/b;

.field private d:Landroid/graphics/drawable/AnimationDrawable;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Paint;

.field g:F

.field h:F

.field private i:F

.field private j:Landroid/graphics/RectF;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/ValueAnimator;

.field private t:Landroid/animation/ValueAnimator;

.field private u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    const-string p1, "DropBounceHeaderView"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->a:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 4
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    .line 9
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "DropBounceHeaderView"

    .line 12
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->a:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 14
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 15
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    .line 19
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "DropBounceHeaderView"

    .line 22
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->a:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 24
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 25
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    .line 28
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    .line 29
    new-instance p1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 30
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q()V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/ptr/header/DropBounceHeaderView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:F

    return p1
.end method

.method private h(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:Landroid/graphics/RectF;

    const v1, 0x7f08077f

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m()V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k()V

    return-void
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/Path;

    return-void
.end method

.method private o()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/join/mgps/ptr/header/DropBounceInterpolator;

    invoke-direct {v4}, Lcom/join/mgps/ptr/header/DropBounceInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xb4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceInterpolator;

    invoke-direct {v1}, Lcom/join/mgps/ptr/header/DropBounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    long-to-double v4, v4

    long-to-double v1, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-long v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private p()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x3eaaaaab

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xc8

    .line 4
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/join/mgps/ptr/header/DropBounceHeaderView$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$b;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v1, [F

    .line 8
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget v2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-array v1, v1, [F

    .line 13
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, v4, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$c;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    new-array v0, v0, [F

    const/4 v4, 0x0

    .line 8
    iget-object v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    div-float/2addr v1, v6

    sub-float/2addr v4, v1

    aput v4, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;-><init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3eaaaaab
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    const-string p1, "DropBounceHeaderView"

    const-string v0, "onUIRefreshComplete method called."

    .line 1
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 4

    const-string p1, "DropBounceHeaderView"

    const-string p2, "onUIPositionChange method called."

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result p2

    int-to-float p2, p2

    .line 5
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 6
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 7
    iget-object p3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    const/4 p3, 0x0

    const p4, 0x3eaaaaab

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    cmpl-float v2, p1, p3

    if-lez v2, :cond_1

    cmpg-float v2, p1, p4

    if-gez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, v0

    sub-float/2addr p4, p2

    .line 9
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    goto :goto_0

    :cond_1
    const p3, 0x3f2aaaab

    cmpg-float v2, p1, p3

    if-gez v2, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, v0

    sub-float p2, p3, p2

    sub-float p3, p1, p4

    mul-float p3, p3, v0

    .line 11
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    move p4, p2

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_3

    mul-float v3, p1, v0

    sub-float/2addr v3, p3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p2, v2

    div-float/2addr p2, p1

    sub-float p1, p3, p2

    sub-float p2, v3, p4

    mul-float p3, p2, v0

    .line 13
    iput v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    move p4, p1

    move p1, v3

    :goto_0
    const/4 p2, 0x2

    new-array v0, p2, [F

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    .line 14
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    new-array p1, p2, [F

    aput p4, p1, v1

    aput p4, p1, v2

    .line 15
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    new-array p1, p2, [F

    aput p3, p1, v1

    aput p3, p1, v2

    .line 16
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p()V

    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    const-string p1, "DropBounceHeaderView"

    const-string v0, "onUIReset method called."

    .line 1
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->k()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->p:Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    const-string p1, "DropBounceHeaderView"

    const-string v0, "onUIRefreshPrepare method called."

    .line 1
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    const-string p1, "DropBounceHeaderView"

    const-string v0, "onUIRefreshBegin method called."

    .line 1
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 13
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->o:F

    .line 5
    iget v1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->l:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 9
    iget v6, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->n:I

    int-to-float v6, v6

    .line 10
    iget v7, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->i:F

    mul-float v8, v4, v6

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    mul-float v10, v7, v8

    mul-float v10, v10, v3

    sub-float v10, v1, v10

    mul-float v11, v7, v5

    div-float/2addr v11, v2

    add-float/2addr v10, v11

    mul-float v6, v6, v5

    add-float/2addr v6, v9

    mul-float v9, v7, v6

    mul-float v9, v9, v3

    add-float/2addr v9, v0

    mul-float v11, v7, v4

    div-float/2addr v11, v2

    sub-float/2addr v9, v11

    mul-float v8, v8, v7

    mul-float v8, v8, v3

    add-float/2addr v1, v8

    mul-float v5, v5, v7

    div-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v6, v6, v7

    mul-float v6, v6, v3

    sub-float/2addr v0, v6

    mul-float v7, v7, v4

    div-float/2addr v7, v2

    add-float/2addr v0, v7

    .line 11
    iget v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    div-float v4, v3, v2

    add-float/2addr v10, v4

    add-float/2addr v9, v3

    sub-float/2addr v1, v4

    .line 12
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v10, v9, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 14
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v10, v2

    float-to-int v3, v10

    add-float/2addr v0, v2

    float-to-int v0, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sub-float/2addr v9, v2

    float-to-int v2, v9

    .line 17
    iget-object v4, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q:Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->t:Landroid/animation/ValueAnimator;

    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->s:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->l()V

    .line 26
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->h:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->l:I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->m:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    new-instance p1, Lcom/join/mgps/ptr/indicator/b;

    invoke-direct {p1}, Lcom/join/mgps/ptr/indicator/b;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V

    return-void
.end method
