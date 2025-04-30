.class public Lcom/xpleemoon/view/CarouselViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CarouselViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xpleemoon/view/CarouselViewPager$LifeCycle;
    }
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/xpleemoon/view/CarouselViewPager;->a:I

    .line 3
    iput-boolean p1, p0, Lcom/xpleemoon/view/CarouselViewPager;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/xpleemoon/view/CarouselViewPager;->a:I

    .line 6
    iput-boolean p1, p0, Lcom/xpleemoon/view/CarouselViewPager;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/xpleemoon/view/CarouselViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xpleemoon/view/CarouselViewPager;->a:I

    return p0
.end method

.method static synthetic b(Lcom/xpleemoon/view/CarouselViewPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xpleemoon/view/CarouselViewPager;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/xpleemoon/view/CarouselViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xpleemoon/view/CarouselViewPager;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/xpleemoon/view/CarouselViewPager;->d()V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v1, Lcom/xpleemoon/view/CarouselViewPager$a;

    invoke-direct {v1, p0}, Lcom/xpleemoon/view/CarouselViewPager$a;-><init>(Lcom/xpleemoon/view/CarouselViewPager;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x7d0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/xpleemoon/view/CarouselViewPager;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xpleemoon/view/CarouselViewPager;->b:Z

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/xpleemoon/view/CarouselViewPager;->b:Z

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setLifeCycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xpleemoon/view/CarouselViewPager;->a:I

    return-void
.end method
