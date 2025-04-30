.class public Lcn/sharesdk/wechat/utils/WXImageObject;
.super Ljava/lang/Object;
.source "WXImageObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    const/high16 v2, 0x1900000

    if-eqz v0, :cond_3

    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, content is too large"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    const/16 v3, 0x2800

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, path is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 8
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 9
    :try_start_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    iget-object v5, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v2, "checkArgs fail, image content is too large"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WXImageObject catch don\'t worry will betwo style "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "ShareSDK"

    invoke-virtual {v2, v0, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 12
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v2, 0xa00000

    if-le v0, v2, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, url is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_6
    return v4

    .line 15
    :cond_7
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, all arguments are null"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    const-string v1, "_wximageobject_imageData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    const-string v1, "_wximageobject_imagePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wximageobject_imageData"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    const-string v0, "_wximageobject_imagePath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    return-void
.end method
