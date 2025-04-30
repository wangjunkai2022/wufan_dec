.class public Lcom/join/mgps/customview/InterceptEventViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "InterceptEventViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/InterceptEventViewPager$c;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "InterceptEventViewPager"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View$OnTouchListener;

.field private l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private m:Lcom/join/mgps/customview/InterceptEventViewPager$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:Z

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 10
    new-instance p1, Lcom/join/mgps/customview/InterceptEventViewPager$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/InterceptEventViewPager$a;-><init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V

    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->k:Landroid/view/View$OnTouchListener;

    .line 11
    new-instance p1, Lcom/join/mgps/customview/InterceptEventViewPager$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/InterceptEventViewPager$b;-><init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V

    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/InterceptEventViewPager;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->h:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/InterceptEventViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->h:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->a:I

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->m:Lcom/join/mgps/customview/InterceptEventViewPager$c;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    return p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/InterceptEventViewPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:Z

    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:Z

    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->b:I

    return p0
.end method

.method static synthetic j(Lcom/join/mgps/customview/InterceptEventViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->b:I

    return p1
.end method

.method static synthetic k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    return p1
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    .line 1
    :try_start_0
    instance-of v1, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_0

    if-gez p3, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    if-lez p3, :cond_1

    return v0

    :cond_1
    return p4

    .line 5
    :cond_2
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:Z

    return v0
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->a:I

    :cond_0
    return-void
.end method

.method public setCanScrollView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:Z

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIsAsParentViewPager(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    return-void
.end method

.method public setViewPagerCallback(Lcom/join/mgps/customview/InterceptEventViewPager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->m:Lcom/join/mgps/customview/InterceptEventViewPager$c;

    return-void
.end method
