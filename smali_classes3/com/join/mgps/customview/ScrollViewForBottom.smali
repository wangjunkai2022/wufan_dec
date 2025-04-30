.class public Lcom/join/mgps/customview/ScrollViewForBottom;
.super Landroid/widget/ScrollView;
.source "ScrollViewForBottom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScrollViewForBottom$a;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/ScrollViewForBottom$a;

.field b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-gtz v3, :cond_1

    const/high16 v3, -0x3f600000    # -5.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->b:F

    .line 12
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->a:Lcom/join/mgps/customview/ScrollViewForBottom$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/join/mgps/customview/ScrollViewForBottom$a;->a(Lcom/join/mgps/customview/ScrollViewForBottom;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScroll(Lcom/join/mgps/customview/ScrollViewForBottom$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewForBottom;->a:Lcom/join/mgps/customview/ScrollViewForBottom$a;

    return-void
.end method
