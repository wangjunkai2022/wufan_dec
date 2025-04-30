.class public Lcom/mingle/widget/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"


# static fields
.field private static final i:I = 0x1f4

.field private static j:F = 200.0f


# instance fields
.field private a:Lcom/mingle/widget/ShapeLoadingView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/nineoldandroids/animation/d;

.field private g:Ljava/lang/Runnable;

.field public h:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    .line 3
    new-instance p1, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p1, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p1, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    const p1, 0x3f99999a    # 1.2f

    .line 4
    iput p1, p0, Lcom/mingle/widget/LoadingView;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    .line 7
    new-instance v0, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    const v0, 0x3f99999a    # 1.2f

    .line 8
    iput v0, p0, Lcom/mingle/widget/LoadingView;->h:F

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    .line 12
    new-instance p3, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p3, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    const p3, 0x3f99999a    # 1.2f

    .line 13
    iput p3, p0, Lcom/mingle/widget/LoadingView;->h:F

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 16
    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    .line 17
    new-instance p3, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p3, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    const p3, 0x3f99999a    # 1.2f

    .line 18
    iput p3, p0, Lcom/mingle/widget/LoadingView;->h:F

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mingle/widget/LoadingView;)Lcom/mingle/widget/ShapeLoadingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    return-object p0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mingle/shapeloading/R$styleable;->LoadingView:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/mingle/shapeloading/R$styleable;->LoadingView_loadingText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mingle/widget/LoadingView;->e:Ljava/lang/String;

    .line 4
    sget p2, Lcom/mingle/shapeloading/R$styleable;->LoadingView_loadingTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/mingle/widget/LoadingView;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private e(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->f:Lcom/nineoldandroids/animation/d;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public b(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/mingle/widget/LoadingView;->j:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->b:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v6, "scaleX"

    invoke-static {v2, v6, v3}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v2

    const-wide/16 v6, 0x1f4

    .line 3
    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/l;->x0(J)Lcom/nineoldandroids/animation/l;

    .line 4
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    iget v8, p0, Lcom/mingle/widget/LoadingView;->h:F

    invoke-direct {v3, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/q;->l(Landroid/view/animation/Interpolator;)V

    .line 5
    new-instance v3, Lcom/nineoldandroids/animation/d;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/d;-><init>()V

    .line 6
    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/animation/d;->D(J)Lcom/nineoldandroids/animation/d;

    new-array v1, v1, [Lcom/nineoldandroids/animation/a;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    .line 7
    invoke-virtual {v3, v1}, Lcom/nineoldandroids/animation/d;->C([Lcom/nineoldandroids/animation/a;)V

    .line 8
    new-instance v0, Lcom/mingle/widget/LoadingView$c;

    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$c;-><init>(Lcom/mingle/widget/LoadingView;)V

    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 9
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/d;->q()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    sget v3, Lcom/mingle/widget/LoadingView;->j:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->b:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v6, "scaleX"

    invoke-static {v2, v6, v3}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/mingle/widget/LoadingView$d;->a:[I

    iget-object v6, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    invoke-virtual {v6}, Lcom/mingle/widget/ShapeLoadingView;->getShape()Lcom/mingle/widget/ShapeLoadingView$Shape;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x3

    const-string v7, "rotation"

    if-eq v3, v5, :cond_2

    if-eq v3, v1, :cond_1

    if-eq v3, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v3

    :goto_0
    const-wide/16 v7, 0x1f4

    .line 7
    invoke-virtual {v0, v7, v8}, Lcom/nineoldandroids/animation/l;->x0(J)Lcom/nineoldandroids/animation/l;

    .line 8
    invoke-virtual {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->x0(J)Lcom/nineoldandroids/animation/l;

    .line 9
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    iget v10, p0, Lcom/mingle/widget/LoadingView;->h:F

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/q;->l(Landroid/view/animation/Interpolator;)V

    .line 10
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    iget v10, p0, Lcom/mingle/widget/LoadingView;->h:F

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v9}, Lcom/nineoldandroids/animation/q;->l(Landroid/view/animation/Interpolator;)V

    .line 11
    new-instance v9, Lcom/nineoldandroids/animation/d;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/d;-><init>()V

    .line 12
    invoke-virtual {v9, v7, v8}, Lcom/nineoldandroids/animation/d;->D(J)Lcom/nineoldandroids/animation/d;

    new-array v6, v6, [Lcom/nineoldandroids/animation/a;

    aput-object v0, v6, v4

    aput-object v3, v6, v5

    aput-object v2, v6, v1

    .line 13
    invoke-virtual {v9, v6}, Lcom/nineoldandroids/animation/d;->C([Lcom/nineoldandroids/animation/a;)V

    .line 14
    new-instance v0, Lcom/mingle/widget/LoadingView$b;

    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$b;-><init>(Lcom/mingle/widget/LoadingView;)V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 15
    invoke-virtual {v9}, Lcom/nineoldandroids/animation/d;->q()V

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x3d100000    # -120.0f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mingle/shapeloading/R$layout;->load_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42580000    # 54.0f

    .line 3
    invoke-virtual {p0, v1}, Lcom/mingle/widget/LoadingView;->b(F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/mingle/widget/LoadingView;->j:F

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 5
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    sget v2, Lcom/mingle/shapeloading/R$id;->shapeLoadingView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mingle/widget/ShapeLoadingView;

    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->a:Lcom/mingle/widget/ShapeLoadingView;

    .line 7
    sget v2, Lcom/mingle/shapeloading/R$id;->indication:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->b:Landroid/widget/ImageView;

    .line 8
    sget v2, Lcom/mingle/shapeloading/R$id;->promptTV:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/TextView;

    .line 9
    iget v3, p0, Lcom/mingle/widget/LoadingView;->d:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/mingle/widget/LoadingView;->d:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mingle/widget/LoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v0, 0x384

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/mingle/widget/LoadingView;->e(J)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const-wide/16 v0, 0xc8

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/mingle/widget/LoadingView;->e(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/mingle/widget/LoadingView;->f()V

    :goto_0
    return-void
.end method
