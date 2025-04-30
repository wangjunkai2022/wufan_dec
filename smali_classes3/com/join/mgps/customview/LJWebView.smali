.class public Lcom/join/mgps/customview/LJWebView;
.super Landroid/widget/RelativeLayout;
.source "LJWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LJWebView$c;,
        Lcom/join/mgps/customview/LJWebView$b;
    }
.end annotation


# static fields
.field public static p:I = 0x1

.field public static q:I = 0x2

.field public static final r:I = 0xa8e2


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/RelativeLayout;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/join/mgps/customview/LJWebView$b;

.field l:Landroid/app/Activity;

.field m:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/join/mgps/customview/LJWebView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/widget/ProgressBar;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lcom/join/mgps/customview/LJWebView;->e:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/LJWebView;->f:Z

    .line 7
    sget v1, Lcom/join/mgps/customview/LJWebView;->q:I

    iput v1, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->j:Landroid/view/View;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    .line 13
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/widget/ProgressBar;

    .line 14
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    .line 15
    iput v0, p0, Lcom/join/mgps/customview/LJWebView;->e:I

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/LJWebView;->f:Z

    .line 17
    sget v0, Lcom/join/mgps/customview/LJWebView;->q:I

    iput v0, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    .line 18
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->j:Landroid/view/View;

    .line 19
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    .line 23
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/widget/ProgressBar;

    .line 24
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/RelativeLayout;

    const/4 p3, 0x4

    .line 25
    iput p3, p0, Lcom/join/mgps/customview/LJWebView;->e:I

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, p0, Lcom/join/mgps/customview/LJWebView;->f:Z

    .line 27
    sget p3, Lcom/join/mgps/customview/LJWebView;->q:I

    iput p3, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    .line 28
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->j:Landroid/view/View;

    .line 29
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->k:Lcom/join/mgps/customview/LJWebView$b;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/LJWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/LJWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->y()V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LJWebView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/LJWebView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/customview/LJWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LJWebView;->f:Z

    return p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/LJWebView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LJWebView;->f:Z

    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/LJWebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/LJWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LJWebView;->e:I

    return p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic p(Lcom/join/mgps/customview/LJWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->h:Ljava/lang/String;

    return-object p0
.end method

.method private t()V
    .locals 2

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/LJWebView;->u()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/join/mgps/customview/LJWebView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LJWebView$a;-><init>(Lcom/join/mgps/customview/LJWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private x(IILandroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const v0, 0xa8e2

    if-ne p1, v0, :cond_5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_4

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/app/Activity;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0xa8e2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public q(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0xa8e2

    if-ne p1, v1, :cond_4

    .line 1
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/LJWebView;->x(IILandroid/content/Intent;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    .line 6
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    .line 9
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    .line 12
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    :cond_6
    :goto_2
    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const-string v1, "papa"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const-string v1, "wufan"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/app/Activity;

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LJWebView;->e:I

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setClickable(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setMethodListenter(Lcom/join/mgps/customview/LJWebView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->k:Lcom/join/mgps/customview/LJWebView$b;

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const-string v0, "searchBoxJavaBredge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setonShowFileChooser(Lcom/join/mgps/customview/LJWebView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->o:Lcom/join/mgps/customview/LJWebView$c;

    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cacheH5"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->h:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/customview/LJWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 14
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public z(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
