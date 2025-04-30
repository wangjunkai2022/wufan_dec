.class public Lcom/join/mgps/control/RhythmLayout;
.super Landroid/widget/HorizontalScrollView;
.source "RhythmLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/control/RhythmLayout$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/control/b;

.field private c:Landroid/os/Handler;

.field private d:Lcom/join/mgps/control/RhythmLayout$b;

.field private e:Lcom/join/mgps/control/a;

.field private f:Landroid/widget/LinearLayout;

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/control/RhythmLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->p()V

    return-void
.end method

.method private A(J)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->l:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/control/RhythmLayout;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/control/RhythmLayout;->m:J

    return-wide v0
.end method

.method static synthetic d(Lcom/join/mgps/control/RhythmLayout;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/control/RhythmLayout;->m:J

    return-wide p1
.end method

.method static synthetic e(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/control/RhythmLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    return p1
.end method

.method static synthetic g(Lcom/join/mgps/control/RhythmLayout;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->o(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getVisibleViews()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x7

    .line 4
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic h(Lcom/join/mgps/control/RhythmLayout;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->r(ILjava/util/List;)V

    return-void
.end method

.method static synthetic i(Lcom/join/mgps/control/RhythmLayout;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->A(J)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/control/RhythmLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/control/RhythmLayout;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Lcom/join/mgps/control/RhythmLayout$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 2
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    if-gez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    add-int/2addr v1, v0

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->getVisibleViews()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    iget v4, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    if-le v3, v4, :cond_1

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 9
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 10
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->c:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/control/RhythmLayout$a;

    invoke-direct {v3, p0, v2}, Lcom/join/mgps/control/RhythmLayout$a;-><init>(Lcom/join/mgps/control/RhythmLayout;Ljava/util/List;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/a;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, v1}, Lcom/join/mgps/control/a;->onSelected(I)V

    :cond_4
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    return-void
.end method

.method private o(ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x7

    .line 4
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :cond_1
    if-eqz p1, :cond_2

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_0
    if-ge v1, v2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/h;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->l:I

    .line 2
    div-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->h:I

    .line 4
    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->i:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dd2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    .line 7
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->n:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/join/mgps/control/RhythmLayout;->m:J

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->c:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/join/mgps/control/RhythmLayout$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/control/RhythmLayout$b;-><init>(Lcom/join/mgps/control/RhythmLayout;)V

    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Lcom/join/mgps/control/RhythmLayout$b;

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout$b;->d()V

    return-void
.end method

.method private r(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, p1, v1

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->i:I

    mul-int v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->z(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private x(IIIZ)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/c;->i(Landroid/view/View;IIIZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private y(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->getVisibleViews()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/control/RhythmLayout;->r(ILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Lcom/join/mgps/Util/c;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->y(F)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->k()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Lcom/join/mgps/control/RhythmLayout$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/join/mgps/control/RhythmLayout;->m:J

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->y(F)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/a;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/join/mgps/control/a;->a()V

    :cond_3
    :goto_0
    return v1
.end method

.method public getFirstVisibleItemPosition()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget v5, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getRhythmItemWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public l(IZ)Landroid/animation/Animator;
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->m(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0x15e

    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v0, v1, p2, v2}, Lcom/join/mgps/Util/c;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {v1}, Lcom/join/mgps/control/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {v1}, Lcom/join/mgps/control/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/join/mgps/control/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(IIIZ)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/control/RhythmLayout;->x(IIIZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Lcom/join/mgps/control/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    invoke-virtual {p1, v1}, Lcom/join/mgps/control/b;->d(F)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {p1}, Lcom/join/mgps/control/b;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/join/mgps/control/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRhythmListener(Lcom/join/mgps/control/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/a;

    return-void
.end method

.method public setScrollRhythmStartDelayTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->n:I

    return-void
.end method

.method public t(IIZ)Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int v0, v0

    :cond_0
    const/16 p1, 0x12c

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/control/RhythmLayout;->x(IIIZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public u(IZ)Landroid/animation/Animator;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->v(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->h:I

    const/16 v1, 0x15e

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Lcom/join/mgps/Util/c;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public w(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRhythmAtPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {v0}, Lcom/join/mgps/control/b;->getCount()I

    move-result v0

    const/4 v3, 0x7

    if-le v0, v3, :cond_3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {v4}, Lcom/join/mgps/control/b;->getCount()I

    move-result v4

    sub-int/2addr v4, p1

    if-gt v4, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->b:Lcom/join/mgps/control/b;

    invoke-virtual {v0}, Lcom/join/mgps/control/b;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->n:I

    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, -0x3

    .line 6
    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->n:I

    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->n:I

    invoke-virtual {p0, v2, v0, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    move-result-object v0

    .line 8
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/control/RhythmLayout;->l(IZ)Landroid/animation/Animator;

    move-result-object v3

    .line 9
    iget v4, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/control/RhythmLayout;->u(IZ)Landroid/animation/Animator;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    new-array v7, v6, [Landroid/animation/Animator;

    aput-object v3, v7, v2

    .line 11
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    if-eqz v4, :cond_5

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v4, v3, v2

    .line 12
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object v5, v4, v6

    .line 14
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 15
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 16
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
