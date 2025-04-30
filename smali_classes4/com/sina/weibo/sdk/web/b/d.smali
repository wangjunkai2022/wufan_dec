.class public final Lcom/sina/weibo/sdk/web/b/d;
.super Lcom/sina/weibo/sdk/web/b/b;
.source "SourceFile"


# instance fields
.field public aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

.field private aF:[B

.field aG:Ljava/lang/String;

.field public ae:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sina/weibo/sdk/web/b/b;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/b;->Z:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sina/weibo/sdk/web/b/b;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/sina/weibo/sdk/web/b/b$a;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebData;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    .line 6
    new-instance v7, Lcom/sina/weibo/sdk/a/d;

    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/b;->Z:Landroid/content/Context;

    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/web/b/d;->aF:[B

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    new-instance v6, Lcom/sina/weibo/sdk/web/b/d$1;

    invoke-direct {v6, p0, p1}, Lcom/sina/weibo/sdk/web/b/d$1;-><init>(Lcom/sina/weibo/sdk/web/b/d;Lcom/sina/weibo/sdk/web/b/b$a;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sina/weibo/sdk/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/c;)V

    .line 7
    invoke-static {}, Lcom/sina/weibo/sdk/a/b$a;->k()Lcom/sina/weibo/sdk/a/b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v7}, Lcom/sina/weibo/sdk/a/b;->a(Lcom/sina/weibo/sdk/a/c;)V

    return-void
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 2
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->readFromBundle(Landroid/os/Bundle;)V

    const-string v0, "token"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    const-string v0, "packageName"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 14
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 16
    invoke-static {v1}, Lcom/sina/weibo/sdk/b/e;->b([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/b/d;->aF:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 19
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 20
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v3, :cond_1

    .line 22
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    :cond_1
    :goto_2
    throw p1

    .line 25
    :cond_2
    :goto_3
    iget-object v0, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v0, :cond_3

    .line 26
    array-length v1, v0

    if-lez v1, :cond_3

    .line 27
    invoke-static {v0}, Lcom/sina/weibo/sdk/b/e;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aF:[B

    .line 28
    :cond_3
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/d;->text:Ljava/lang/String;

    return-void
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "https://service.weibo.com/share/mobilesdk.php"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/b/d;->text:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "version"

    const-string v2, "0041005000"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/web/WebData;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "source"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    const-string v3, "packagename"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->aG:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/b/d;->aG:Ljava/lang/String;

    const-string v3, "picinfo"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string v2, "luicode"

    const-string v3, "10000360"

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OP_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lfid"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d;->aF:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/sina/weibo/sdk/web/b/b;->t()Z

    move-result v0

    return v0
.end method
