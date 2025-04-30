.class public final Lcn/sharesdk/wechat/utils/WXMediaMessage;
.super Ljava/lang/Object;
.source "WXMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;,
        Lcn/sharesdk/wechat/utils/WXMediaMessage$a;
    }
.end annotation


# static fields
.field public static final ACTION_WXAPPMESSAGE:Ljava/lang/String; = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE"

.field public static final MESSAGE_ACTION_LENGTH_LIMIT:I = 0x800

.field public static final MESSAGE_EXT_LENGTH_LIMIT:I = 0x800


# instance fields
.field public description:Ljava/lang/String;

.field public mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

.field public mediaTagName:Ljava/lang/String;

.field public messageAction:Ljava/lang/String;

.field public messageExt:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public sdkVer:I

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public wxminiprogram_ext_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>(Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;)V

    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, thumbData should not be null when send emoji"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_2

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, thumbData should not be null or exceed 128kb"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x200

    if-le v0, v2, :cond_3

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, title is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const/16 v3, 0x3fd

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 9
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-nez v0, :cond_5

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, mediaObject is null"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 11
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_6

    .line 12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, mediaTagName is too long"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 13
    :cond_6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageAction:Ljava/lang/String;

    const/16 v2, 0x800

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_7

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, messageAction is too long"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 15
    :cond_7
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageExt:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 16
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, messageExt is too long"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 17
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->type()I

    move-result v0

    return v0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "put thumb failed"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method
