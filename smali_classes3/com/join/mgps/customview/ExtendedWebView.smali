.class public Lcom/join/mgps/customview/ExtendedWebView;
.super Landroid/webkit/WebView;
.source "ExtendedWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollOffset()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-gez p1, :cond_1

    if-lez v0, :cond_2

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    :goto_0
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
