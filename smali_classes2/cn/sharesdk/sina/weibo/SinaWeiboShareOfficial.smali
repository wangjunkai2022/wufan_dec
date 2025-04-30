.class public Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;
.super Lcom/mob/tools/FakeActivity;
.source "SinaWeiboShareOfficial.java"

# interfaces
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;


# instance fields
.field private appkey:Ljava/lang/String;

.field private iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

.field private listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private params:Lcn/sharesdk/framework/Platform$ShareParams;

.field private permissions:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;

.field private thumbSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const-wide/32 v0, 0x200000

    .line 2
    iput-wide v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->thumbSize:J

    .line 3
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->appkey:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->redirectUrl:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->permissions:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 7
    iput-object p5, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->actionShare()V

    return-void
.end method

.method static synthetic access$100(Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method private actionShare()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 4
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getWebpageObj()Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v1

    .line 8
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/MediaObject;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 10
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getMultiImageObject()Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getVideoSourceObject()Lcom/sina/weibo/sdk/api/VideoSourceObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 13
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getVideoSourceObject()Lcom/sina/weibo/sdk/api/VideoSourceObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    :cond_4
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getImageObj()Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    goto :goto_0

    .line 17
    :cond_5
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getOneImage()Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 19
    :cond_6
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v1, :cond_8

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->shareMessage(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_7

    .line 22
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share to sina failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 23
    :cond_7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SinaWeiboShareOfficial share catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    goto :goto_1

    .line 25
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_9

    .line 26
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SinaWeibo SDK init failed"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    :goto_1
    return-void
.end method

.method private bitmapTByte(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x55

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 7
    array-length v0, p1

    :goto_0
    int-to-long v2, v0

    .line 8
    iget-wide v4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->thumbSize:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    int-to-double v2, v0

    long-to-double v4, v4

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 10
    invoke-direct {p0, p2, v2, v3}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getResizedBitmap(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 11
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 13
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 14
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 15
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 16
    array-length v0, p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private generateGUID()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageObj()Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 5

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getThumb(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SinaWeiboShareOfficial getImageObj catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-object v0
.end method

.method private getMultiImageObject()Lcom/sina/weibo/sdk/api/MultiImageObject;
    .locals 8

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_2

    .line 8
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :cond_1
    if-eqz v5, :cond_0

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v3, v5, v4}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sina.weibo"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_3
    iput-object v2, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SinaWeiboShareOfficial getMultiImageObject catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method private getOneImage()Lcom/sina/weibo/sdk/api/MultiImageObject;
    .locals 10

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    .line 2
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v6, v8, :cond_3

    .line 8
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 10
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-static {v6, v8, v7}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.sina.weibo"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 15
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    const-string v7, "QQQ"

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, " SinaWeiboShareOfficial copy failed "

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :cond_4
    iput-object v5, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 19
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SinaWeiboShareOfficial getOneImage catch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 20
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    :goto_2
    return-object v0
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    int-to-double v2, v0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p2

    double-to-int v0, v2

    int-to-double v1, v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p2

    double-to-int p2, v1

    const/4 p3, 0x1

    .line 6
    invoke-static {p1, v0, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getThumb(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->bitmapTByte(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getThumb(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->bitmapTByte(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private getVideoSourceObject()Lcom/sina/weibo/sdk/api/VideoSourceObject;
    .locals 7

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VideoSourceObject;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    const-string v3, "SinaWeiboShareOfficial getVideoSourceObject filePath is null "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v4

    .line 5
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_1

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v2, v5, v3}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.sina.weibo"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v2, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    move-object v4, v2

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_2
    :goto_0
    :try_start_2
    iput-object v4, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SinaWeiboShareOfficial getVideoSourceObject copyFile catch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v4

    :catchall_1
    move-exception v2

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SinaWeiboShareOfficial getVideoSourceObject catch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method private getWebpageObj()Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 5

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->title:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->description:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->actionUrl:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 6
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getThumb(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->thumbData:[B

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->getThumb(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->thumbData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SinaWeiboShareOfficial getWebpageObj catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MediaObject;->thumbData:[B

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p3, p0}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial onActivityResult iwbapi is null"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string p2, "SinaWeiboShareOfficial onActivityResult"

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onCancel"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onComplete "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    :try_start_1
    new-instance v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->appkey:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->redirectUrl:Ljava/lang/String;

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->permissions:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 8
    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    new-instance v4, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial$1;

    invoke-direct {v4, p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial$1;-><init>(Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    sget-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->actionShare()V

    .line 11
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial actionShare() "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 15
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SinaWeiboShareOfficial  catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 17
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sinaweibo sdk init failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v3, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 20
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate AuthInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "SinaWeiboShareOfficial"

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 21
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onDestroy"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/sina/weibo/sdk/common/UiError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sina/weibo/sdk/common/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sina/weibo/sdk/common/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sina/weibo/sdk/common/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SinaWeiboShareOfficial doShare onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sina/weibo/sdk/common/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onPause"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onResume"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboShareOfficial doShare onStop"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public final setThumbImage(Lcom/sina/weibo/sdk/api/MultiImageObject;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p1, Lcom/sina/weibo/sdk/api/MediaObject;->thumbData:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 5
    :goto_0
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_0

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_1

    .line 8
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p2

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 10
    :cond_1
    :goto_2
    throw p1
.end method
