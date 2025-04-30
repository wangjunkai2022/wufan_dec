.class public Lcn/sharesdk/tencent/qq/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "QQAuthorizeWebviewClient.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "openid"

    const-string v1, "access_token"

    .line 1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "expires_in"

    .line 2
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "error"

    .line 3
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "error_description"

    .line 4
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "pf"

    .line 5
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "pfkey"

    .line 6
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "pay_token"

    .line 7
    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 9
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {v5}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->getHelper()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v5

    invoke-interface {v5}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v5

    invoke-static {v5}, Lcn/sharesdk/tencent/qq/utils/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/utils/a;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v2}, Lcn/sharesdk/tencent/qq/utils/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-gtz v6, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 13
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open_id"

    .line 17
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6, v11, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_7

    .line 23
    invoke-interface {p1, v6}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_4

    .line 25
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 28
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_7

    .line 31
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 32
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "&"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    const-string v6, "="

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    array-length v6, v5

    const/4 v7, 0x2

    const-string v8, ""

    if-ge v6, v7, :cond_1

    .line 8
    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_1
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v1

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    aget-object v8, v5, v1

    .line 10
    :goto_1
    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/qq/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/16 v6, 0xe

    new-array v7, v6, [C

    .line 5
    fill-array-data v7, :array_0

    .line 6
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    const/16 v7, 0xc

    new-array v7, v7, [C

    fill-array-data v7, :array_1

    .line 7
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    new-array v6, v6, [C

    fill-array-data v6, :array_2

    .line 8
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v6, 0xd

    new-array v6, v6, [C

    fill-array-data v6, :array_3

    .line 9
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const/16 v6, 0xb

    new-array v6, v6, [C

    fill-array-data v6, :array_4

    .line 10
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    new-array v6, v1, [C

    .line 11
    fill-array-data v6, :array_5

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [C

    .line 12
    fill-array-data v7, :array_6

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    new-array v7, v5, [C

    .line 13
    fill-array-data v7, :array_7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v0, "Certificate is untrusted. Do you want to continue anyway?"

    const-string v6, "Certificate has expired. Do you want to continue anyway?"

    const-string v7, "Certificate ID is mismatched. Do you want to continue anyway?"

    const-string v8, "Certificate is not yet valid. Do you want to continue anyway?"

    const-string v9, "Certificate error. Do you want to continue anyway?"

    .line 14
    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "SSL Certificate Error"

    const-string v7, "No"

    .line 15
    :goto_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_1

    .line 18
    aget-object p1, v0, v1

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 19
    :cond_1
    aget-object p1, v0, v4

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 20
    :cond_2
    aget-object p1, v0, v5

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 21
    :cond_3
    aget-object p1, v0, v3

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 22
    :cond_4
    aget-object p1, v0, v2

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    :goto_1
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 24
    new-instance p1, Lcn/sharesdk/tencent/qq/a$2;

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/tencent/qq/a$2;-><init>(Lcn/sharesdk/tencent/qq/a;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v8, v7, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 25
    :try_start_0
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 26
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_2
    return-void

    :array_0
    .array-data 2
        0x4e0ds
        0x53d7s
        0x4fe1s
        0x4efbs
        0x7684s
        -0x743fs
        0x4e66s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_1
    .array-data 2
        -0x743fs
        0x4e66s
        0x5df2s
        -0x7039s
        0x671fs
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_2
    .array-data 2
        -0x743fs
        0x4e66s
        0x49s
        0x44s
        0x4e0ds
        0x5339s
        -0x6eb3s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_3
    .array-data 2
        -0x743fs
        0x4e66s
        0x5c1as
        0x672as
        0x751fs
        0x6548s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_4
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_5
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
    .end array-data

    :array_6
    .array-data 2
        0x7ee7s
        0x7eeds
    .end array-data

    :array_7
    .array-data 2
        0x505cs
        0x6b62s
    .end array-data
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 5
    new-instance p1, Lcn/sharesdk/tencent/qq/a$1;

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/tencent/qq/a$1;-><init>(Lcn/sharesdk/tencent/qq/a;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v1

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
