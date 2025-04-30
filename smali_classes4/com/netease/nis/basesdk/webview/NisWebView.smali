.class public Lcom/netease/nis/basesdk/webview/NisWebView;
.super Landroid/webkit/WebView;
.source "NisWebView.java"


# instance fields
.field private a:Landroid/webkit/WebChromeClient;

.field private b:Landroid/webkit/WebViewClient;

.field private c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebChromeClient;

.field private final e:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/netease/nis/basesdk/webview/NisWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nis/basesdk/webview/NisWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/netease/nis/basesdk/webview/NisWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/netease/nis/basesdk/webview/NisWebView$c;

    invoke-direct {p1, p0}, Lcom/netease/nis/basesdk/webview/NisWebView$c;-><init>(Lcom/netease/nis/basesdk/webview/NisWebView;)V

    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->d:Landroid/webkit/WebChromeClient;

    .line 5
    new-instance p1, Lcom/netease/nis/basesdk/webview/NisWebView$d;

    invoke-direct {p1, p0}, Lcom/netease/nis/basesdk/webview/NisWebView$d;-><init>(Lcom/netease/nis/basesdk/webview/NisWebView;)V

    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->e:Landroid/webkit/WebViewClient;

    .line 6
    invoke-direct {p0}, Lcom/netease/nis/basesdk/webview/NisWebView;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/webview/NisWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    const-string v3, "searchBoxJavaBridge_"

    .line 14
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibility"

    .line 15
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibilityTraversal"

    .line 16
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 20
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 21
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 23
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebChromeClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->a:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->b:Landroid/webkit/WebViewClient;

    return-object p0
.end method


# virtual methods
.method public callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ")"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance p1, Lcom/netease/nis/basesdk/webview/NisWebView$a;

    invoke-direct {p1, p0, v0}, Lcom/netease/nis/basesdk/webview/NisWebView$a;-><init>(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callJsMethod(Ljava/lang/String;[Ljava/lang/Object;Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ")"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance p1, Lcom/netease/nis/basesdk/webview/NisWebView$b;

    invoke-direct {p1, p0, v0, p3}, Lcom/netease/nis/basesdk/webview/NisWebView$b;-><init>(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/StringBuilder;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->a:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView;->b:Landroid/webkit/WebViewClient;

    return-void
.end method
