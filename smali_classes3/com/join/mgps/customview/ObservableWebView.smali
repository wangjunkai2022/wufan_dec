.class public Lcom/join/mgps/customview/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/join/mgps/enums/ScrollState;

.field d:F

.field e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableWebView;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/ObservableWebView;->b:I

    if-ge p1, p2, :cond_0

    .line 3
    sget-object p1, Lcom/join/mgps/enums/ScrollState;->UP:Lcom/join/mgps/enums/ScrollState;

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableWebView;->c:Lcom/join/mgps/enums/ScrollState;

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    .line 5
    sget-object p1, Lcom/join/mgps/enums/ScrollState;->DOWN:Lcom/join/mgps/enums/ScrollState;

    iput-object p1, p0, Lcom/join/mgps/customview/ObservableWebView;->c:Lcom/join/mgps/enums/ScrollState;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getScrollY()="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    :cond_1
    :goto_0
    iput p2, p0, Lcom/join/mgps/customview/ObservableWebView;->b:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/join/mgps/customview/ObservableWebView;->d:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/join/mgps/customview/ObservableWebView;->e:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableWebView;->d:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableWebView;->e:F

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
