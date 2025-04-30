.class public final Lcom/alipay/sdk/app/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/sdk/widget/a;

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    new-instance v0, Lcom/alipay/sdk/app/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/f;-><init>(Lcom/alipay/sdk/app/b;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/alipay/sdk/app/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    return p1
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/alipay/sdk/widget/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    const-string/jumbo v2, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/sdk/app/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    return v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->f()V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/sdk/widget/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    const-string/jumbo v2, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    const-string p1, "net"

    const-string p3, "SSLError"

    const-string/jumbo v0, "\u8bc1\u4e66\u9519\u8bef"

    .line 1
    invoke-static {p1, p3, v0}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    new-instance p3, Lcom/alipay/sdk/app/c;

    invoke-direct {p3, p0, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/util/j;->j(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
