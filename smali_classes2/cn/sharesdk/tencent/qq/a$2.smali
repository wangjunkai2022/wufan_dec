.class Lcn/sharesdk/tencent/qq/a$2;
.super Ljava/lang/Object;
.source "QQAuthorizeWebviewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/a;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcn/sharesdk/tencent/qq/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/a;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/a$2;->b:Lcn/sharesdk/tencent/qq/a;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
