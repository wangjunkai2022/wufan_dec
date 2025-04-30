.class public Lcn/sharesdk/sina/weibo/utils/SinaActivity;
.super Lcom/mob/tools/FakeActivity;
.source "SinaActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final ERR_CANCEL:I = 0x1

.field private static final ERR_FAIL:I = 0x2

.field private static final ERR_OK:I = 0x0

.field private static final SDK_VERSION:Ljava/lang/String; = "0031405000"


# instance fields
.field private appKey:Ljava/lang/String;

.field private authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private isCallback:Z

.field private params:Lcn/sharesdk/framework/Platform$ShareParams;

.field private thumbSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const-wide/32 v0, 0x200000

    .line 2
    iput-wide v0, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->thumbSize:J

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
    iget-wide v4, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->thumbSize:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    int-to-double v2, v0

    long-to-double v4, v4

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 10
    invoke-direct {p0, p2, v2, v3}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->getResizedBitmap(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

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
    .locals 7

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->getThumb(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 10
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->getThumb(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
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

.method private getTextObj()Lcom/sina/weibo/sdk/api/TextObject;
    .locals 2

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
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
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->bitmapTByte(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

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
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->bitmapTByte(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private onResponse(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method private sendMessage()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    .line 1
    invoke-static {v0, v1, v2, p0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method private startClientShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    .line 1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 7
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_sdkVersion"

    const-string v1, "0031405000"

    .line 8
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_appPackage"

    .line 9
    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_appKey"

    .line 10
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x20130329

    const-string p3, "_weibo_flag"

    .line 11
    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    invoke-static {p1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_weibo_sign"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_weibo_transaction"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 14
    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "launchWeiboActivity intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", extra="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/16 p1, 0x2fd

    .line 16
    invoke-virtual {p0, v3, p1}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 17
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    .line 18
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "launchWeiboActivity fail, invalid arguments"

    invoke-virtual {p1, p3, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->isCallback:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string p1, "sina activity requestCode = %s, resultCode = %s"

    .line 4
    invoke-virtual {p2, p1, p3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 5
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->isCallback:Z

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "onNewIntent ==>>"

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->c(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "_weibo_appPackage"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_weibo_transaction"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild appPackage is null"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWeiboResponse getCallingPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild intent _weibo_transaction is null"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 12
    :cond_1
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/utils/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild appPackage validateSign faild"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :cond_2
    const-string p1, "_weibo_resp_errcode"

    .line 15
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "_weibo_resp_errstr"

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->onResponse(ILjava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method

.method public setSinaAuthListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/SinaActivity;->authListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method
