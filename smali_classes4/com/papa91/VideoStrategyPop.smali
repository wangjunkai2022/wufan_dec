.class public Lcom/papa91/VideoStrategyPop;
.super Landroid/widget/PopupWindow;
.source "VideoStrategyPop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/VideoStrategyPop$VideoPopListener;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private handlerTime:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

.field private popCloseIv:Landroid/widget/ImageView;

.field private popTimeTv:Landroid/widget/TextView;

.field private times:I

.field private url:Ljava/lang/String;

.field private web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa91/VideoStrategyPop;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/papa91/VideoStrategyPop$1;

    invoke-direct {v0, p0}, Lcom/papa91/VideoStrategyPop$1;-><init>(Lcom/papa91/VideoStrategyPop;)V

    iput-object v0, p0, Lcom/papa91/VideoStrategyPop;->handlerTime:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop;->context:Landroid/app/Activity;

    .line 5
    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->url:Ljava/lang/String;

    const/4 p3, -0x1

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 10
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgsim/common/R$layout;->dialog_video_strategy_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p3, Lcom/papa91/VideoStrategyPop$2;

    invoke-direct {p3, p0}, Lcom/papa91/VideoStrategyPop$2;-><init>(Lcom/papa91/VideoStrategyPop;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 13
    iput p2, p0, Lcom/papa91/VideoStrategyPop;->times:I

    .line 14
    iput-object p4, p0, Lcom/papa91/VideoStrategyPop;->mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

    .line 15
    sget p3, Lcom/mgsim/common/R$id;->web:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 16
    sget p3, Lcom/mgsim/common/R$id;->popCloseIv:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    .line 17
    sget p3, Lcom/mgsim/common/R$id;->popTimeTv:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->popTimeTv:Landroid/widget/TextView;

    .line 18
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p2, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    new-instance p3, Lcom/papa91/VideoStrategyPop$3;

    invoke-direct {p3, p0}, Lcom/papa91/VideoStrategyPop$3;-><init>(Lcom/papa91/VideoStrategyPop;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 21
    invoke-direct {p0}, Lcom/papa91/VideoStrategyPop;->setWeb()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/VideoStrategyPop;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    return p0
.end method

.method static synthetic access$020(Lcom/papa91/VideoStrategyPop;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    return v0
.end method

.method static synthetic access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->popTimeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->handlerTime:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

    return-object p0
.end method

.method private setWeb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/papa91/VideoStrategyPop$4;

    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$4;-><init>(Lcom/papa91/VideoStrategyPop;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    const-string v1, "yqw"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/papa91/VideoStrategyPop$5;

    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$5;-><init>(Lcom/papa91/VideoStrategyPop;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/h5video.html?videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa91/VideoStrategyPop;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onMyPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    const-string v1, "javascript:onPagePause();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMyResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    const-string v1, "javascript:onPageFinished();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public videoEndFunction()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/VideoStrategyPop$6;

    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$6;-><init>(Lcom/papa91/VideoStrategyPop;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
