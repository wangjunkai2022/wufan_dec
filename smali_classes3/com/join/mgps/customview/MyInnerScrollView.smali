.class public Lcom/join/mgps/customview/MyInnerScrollView;
.super Landroid/widget/ScrollView;
.source "MyInnerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyInnerScrollView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/join/mgps/customview/PullableScrollView;

.field private b:Lcom/join/mgps/customview/MyInnerScrollView$a;

.field private c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:I

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    return-void
.end method

.method private getScrollRange()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private setParentScrollAble(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/PullableScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:I

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-direct {p0}, Lcom/join/mgps/customview/MyInnerScrollView;->getScrollRange()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    sub-int/2addr p1, v1

    sub-int v3, p1, v0

    .line 3
    iput v3, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-direct {p0}, Lcom/join/mgps/customview/MyInnerScrollView;->getScrollRange()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    return-void
.end method

.method public getParentScrollView()Lcom/join/mgps/customview/PullableScrollView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onInterceptTouchEvent() called.parentScrollView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/PullableScrollView;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->e:I

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 8
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 10
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 13
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result p1

    add-int/lit16 p1, p1, -0x12c

    if-lt p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/MyInnerScrollView$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/join/mgps/customview/MyInnerScrollView$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 8
    iget v4, p0, Lcom/join/mgps/customview/MyInnerScrollView;->e:I

    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    if-gtz v2, :cond_0

    .line 9
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    return v0

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    goto :goto_0

    :cond_1
    if-le v4, v3, :cond_3

    if-lt v2, v1, :cond_2

    .line 11
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    return v0

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 13
    :cond_3
    :goto_0
    iput v3, p0, Lcom/join/mgps/customview/MyInnerScrollView;->e:I

    .line 14
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setParentScrollView(Lcom/join/mgps/customview/PullableScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->a:Lcom/join/mgps/customview/PullableScrollView;

    return-void
.end method

.method public setScrollBottomListener(Lcom/join/mgps/customview/MyInnerScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/MyInnerScrollView$a;

    return-void
.end method
