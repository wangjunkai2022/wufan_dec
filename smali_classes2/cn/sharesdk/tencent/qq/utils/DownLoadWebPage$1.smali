.class Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;
.super Landroid/webkit/WebViewClient;
.source "DownLoadWebPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->initPage(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "download://"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-static {p2}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->access$000(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-virtual {p2, v0}, Lcom/mob/tools/FakeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->access$100(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 7
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->access$102(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;Lcn/sharesdk/framework/authorize/SSOListener;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 8
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;->a:Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-virtual {p2}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->finishOnSuccess()V

    :cond_0
    return p1
.end method
