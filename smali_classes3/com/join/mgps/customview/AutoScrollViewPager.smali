.class public Lcom/join/mgps/customview/AutoScrollViewPager;
.super Landroid/widget/FrameLayout;
.source "AutoScrollViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AutoScrollViewPager$d;,
        Lcom/join/mgps/customview/AutoScrollViewPager$f;,
        Lcom/join/mgps/customview/AutoScrollViewPager$e;,
        Lcom/join/mgps/customview/AutoScrollViewPager$b;,
        Lcom/join/mgps/customview/AutoScrollViewPager$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:Lcom/join/mgps/customview/AutoScrollViewPager$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "TT;>.c;"
        }
    .end annotation
.end field

.field private j:Lcom/join/mgps/customview/AutoScrollViewPager$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private k:F

.field private l:F

.field private m:J

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Handler;

.field private p:Lcom/join/mgps/customview/AutoScrollViewPager$e;

.field private q:Lcom/join/mgps/customview/AutoScrollViewPager$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1388

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:I

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->f:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/AutoScrollViewPager$a;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->c:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/AutoScrollViewPager;->k()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/AutoScrollViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/AutoScrollViewPager;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->j(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/AutoScrollViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    return p1
.end method

.method private j(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Lcom/join/mgps/customview/AutoScrollViewPager$e;

    const-string v1, "view is not null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager$e;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private k()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    if-lez v0, :cond_0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    if-le v0, v1, :cond_1

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    :cond_1
    return-void
.end method


# virtual methods
.method public l(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4
    new-instance v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 6
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/join/mgps/customview/AutoScrollViewPager$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/AutoScrollViewPager$d;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 3
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager$b;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->j:Lcom/join/mgps/customview/AutoScrollViewPager$b;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager$c;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:Lcom/join/mgps/customview/AutoScrollViewPager$c;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:Lcom/join/mgps/customview/AutoScrollViewPager$c;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Landroidx/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    iget v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 3
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->k:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->k:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->q:Lcom/join/mgps/customview/AutoScrollViewPager$f;

    if-eqz v0, :cond_2

    .line 9
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    invoke-interface {v0, p1, v2}, Lcom/join/mgps/customview/AutoScrollViewPager$f;->a(Landroid/view/View;I)V

    .line 10
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    if-lez p1, :cond_4

    iget-boolean v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->c:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 12
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->k:F

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:J

    .line 16
    iget p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->c:Z

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    :cond_4
    :goto_0
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setLoopTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->a:I

    return-void
.end method

.method public setOnCreateItemViewListener(Lcom/join/mgps/customview/AutoScrollViewPager$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Lcom/join/mgps/customview/AutoScrollViewPager$e;

    return-void
.end method

.method public setOnItemClickListener(Lcom/join/mgps/customview/AutoScrollViewPager$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->q:Lcom/join/mgps/customview/AutoScrollViewPager$f;

    return-void
.end method
