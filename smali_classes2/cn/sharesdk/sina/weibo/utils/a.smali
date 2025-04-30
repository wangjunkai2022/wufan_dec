.class public Lcn/sharesdk/sina/weibo/utils/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "SinaWeiboAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    const-string v1, ""

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcn/sharesdk/sina/weibo/utils/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/sina/weibo/utils/a$1;-><init>(Lcn/sharesdk/sina/weibo/utils/a;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/sina/weibo/utils/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/utils/a;->a:Z

    .line 3
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v0, "code"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize code is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->getHelper()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/sina/weibo/utils/a;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "access_denied"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 4
    invoke-virtual {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "sms:"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x4

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :try_start_0
    invoke-direct {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "com.android.mms"

    .line 8
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    :try_start_1
    invoke-direct {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    iget-object p2, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/g;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 4
    invoke-virtual {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->onComplete(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "sms:"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :try_start_0
    invoke-direct {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.mms"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    :try_start_1
    invoke-direct {p0, p2}, Lcn/sharesdk/sina/weibo/utils/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    iget-object p2, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p2, :cond_1

    .line 13
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1

    .line 14
    :cond_2
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/g;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
