.class public Lcom/join/mgps/customview/TouchWebView;
.super Landroid/webkit/WebView;
.source "TouchWebView.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/TouchWebView;->a:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/TouchWebView;->a:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method
