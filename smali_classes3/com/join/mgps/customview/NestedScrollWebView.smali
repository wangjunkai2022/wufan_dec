.class public Lcom/join/mgps/customview/NestedScrollWebView;
.super Landroid/webkit/WebView;
.source "NestedScrollWebView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field private a:I

.field private final b:[I

.field private final c:[I

.field private d:I

.field private e:Landroidx/core/view/NestedScrollingChildHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/NestedScrollWebView;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedScrollWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput v2, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 5
    iget v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    goto/16 :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->a:I

    sub-int/2addr p1, v3

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/join/mgps/customview/NestedScrollWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    aget v1, v1, v6

    sub-int/2addr p1, v1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 10
    iget v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget v4, v4, v6

    add-int/2addr v1, v4

    iput v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 12
    iget-object v4, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/join/mgps/customview/NestedScrollWebView;->a:I

    add-int v3, v1, p1

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v1, v3, v1

    sub-int v11, p1, v1

    const/4 v8, 0x0

    sub-int v9, v3, v11

    const/4 v10, 0x0

    .line 14
    iget-object v12, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/customview/NestedScrollWebView;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->a:I

    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget v3, v1, v6

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->a:I

    .line 16
    aget p1, v1, v6

    int-to-float p1, p1

    invoke-virtual {v0, v5, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 17
    iget p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    iget-object v1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget v1, v1, v6

    add-int/2addr p1, v1

    iput p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->d:I

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->c:[I

    aget p1, p1, v6

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/customview/NestedScrollWebView;->b:[I

    aget p1, p1, v6

    if-nez p1, :cond_6

    .line 19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 20
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedScrollWebView;->stopNestedScroll()V

    .line 22
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 23
    :cond_5
    iput v3, p0, Lcom/join/mgps/customview/NestedScrollWebView;->a:I

    .line 24
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/NestedScrollWebView;->startNestedScroll(I)Z

    .line 25
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    :goto_0
    return v2
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedScrollWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
