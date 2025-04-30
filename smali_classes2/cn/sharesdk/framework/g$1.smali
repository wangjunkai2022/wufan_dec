.class Lcn/sharesdk/framework/g$1;
.super Ljava/lang/Object;
.source "SSDKWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/g;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcn/sharesdk/framework/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/g;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/g$1;->b:Lcn/sharesdk/framework/g;

    iput-object p2, p0, Lcn/sharesdk/framework/g$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/g$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
