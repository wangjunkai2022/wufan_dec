.class public Lcom/join/mgps/customview/PullableScrollView;
.super Landroid/widget/ScrollView;
.source "PullableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/PullableScrollView$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Z

.field private c:Lcom/join/mgps/customview/PullableScrollView$a;

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/PullableScrollView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/PullableScrollView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/PullableScrollView;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/PullableScrollView;->a:Z

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/PullableScrollView;->b:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getBottomFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/PullableScrollView;->b:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getTopFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/PullableScrollView;->d:F

    iget v3, p0, Lcom/join/mgps/customview/PullableScrollView;->f:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/PullableScrollView;->d:F

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/PullableScrollView;->e:F

    iget v3, p0, Lcom/join/mgps/customview/PullableScrollView;->g:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/PullableScrollView;->e:F

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/PullableScrollView;->f:F

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/PullableScrollView;->g:F

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/PullableScrollView;->d:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/PullableScrollView;->e:F

    iput v0, p0, Lcom/join/mgps/customview/PullableScrollView;->d:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PullableScrollView;->f:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PullableScrollView;->g:F

    .line 12
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/PullableScrollView;->c:Lcom/join/mgps/customview/PullableScrollView$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/join/mgps/customview/PullableScrollView$a;->a(Landroid/widget/ScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIsInnerScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/PullableScrollView;->a:Z

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/join/mgps/customview/PullableScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PullableScrollView;->c:Lcom/join/mgps/customview/PullableScrollView$a;

    return-void
.end method
