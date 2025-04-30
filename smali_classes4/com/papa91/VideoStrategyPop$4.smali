.class Lcom/papa91/VideoStrategyPop$4;
.super Landroid/webkit/WebViewClient;
.source "VideoStrategyPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;->setWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/VideoStrategyPop;


# direct methods
.method constructor <init>(Lcom/papa91/VideoStrategyPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$4;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/papa91/VideoStrategyPop$4;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p2}, Lcom/papa91/VideoStrategyPop;->access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p2, "javascript:onPageFinished();"

    .line 3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
