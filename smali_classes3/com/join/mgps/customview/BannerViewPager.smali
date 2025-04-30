.class public Lcom/join/mgps/customview/BannerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "BannerViewPager.java"


# static fields
.field public static final e:I = 0x5


# instance fields
.field protected a:Landroidx/viewpager/widget/ViewPager;

.field private b:I

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/BannerViewPager;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/BannerViewPager;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    .line 4
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 5
    iput-boolean v3, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    goto :goto_0

    .line 8
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    goto :goto_0

    .line 10
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/BannerViewPager;->c:F

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:Z

    .line 12
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->b:I

    return-void
.end method
