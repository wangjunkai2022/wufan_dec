.class Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "ProtocolDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;->a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 1
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;

    invoke-direct {p1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 5
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method
