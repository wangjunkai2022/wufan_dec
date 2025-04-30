.class public Lcom/join/mgps/customview/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:Ll1/j;

.field private c:I

.field private d:I

.field private e:Lcom/join/mgps/enums/ScrollState;

.field private f:Z

.field private g:Z

.field h:Z

.field i:F

.field j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->h:Z

    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->g:Z

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->b:Ll1/j;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p3, p0, Lcom/join/mgps/customview/ObservableScrollView;->f:Z

    iget-boolean p4, p0, Lcom/join/mgps/customview/ObservableScrollView;->g:Z

    invoke-interface {p1, p2, p3, p4}, Ll1/j;->a(IZZ)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->f:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/ObservableScrollView;->f:Z

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->c:I

    if-ge p1, p2, :cond_2

    .line 7
    sget-object p1, Lcom/join/mgps/enums/ScrollState;->UP:Lcom/join/mgps/enums/ScrollState;

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->e:Lcom/join/mgps/enums/ScrollState;

    .line 8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    if-ge p2, p1, :cond_3

    .line 9
    sget-object p1, Lcom/join/mgps/enums/ScrollState;->DOWN:Lcom/join/mgps/enums/ScrollState;

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->e:Lcom/join/mgps/enums/ScrollState;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getScrollY()="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    :cond_3
    :goto_0
    iput p2, p0, Lcom/join/mgps/customview/ObservableScrollView;->c:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableScrollView;->g:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->b:Ll1/j;

    if-eqz v0, :cond_7

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/ObservableScrollView;->e:Lcom/join/mgps/enums/ScrollState;

    invoke-interface {v0, v1}, Ll1/j;->b(Lcom/join/mgps/enums/ScrollState;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/join/mgps/customview/ObservableScrollView;->i:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/join/mgps/customview/ObservableScrollView;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 11
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableScrollView;->h:Z

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableScrollView;->h:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->i:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->j:F

    .line 16
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableScrollView;->g:Z

    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableScrollView;->f:Z

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableScrollView;->b:Ll1/j;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0}, Ll1/j;->c()V

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollViewCallbacks(Ll1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableScrollView;->b:Ll1/j;

    return-void
.end method
