.class public Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MultiTouchViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->a:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;->a:Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
