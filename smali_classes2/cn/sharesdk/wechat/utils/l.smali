.class public Lcn/sharesdk/wechat/utils/l;
.super Ljava/lang/Object;
.source "WechatHelper.java"


# static fields
.field private static a:Lcn/sharesdk/wechat/utils/l;


# instance fields
.field private b:Lcn/sharesdk/wechat/utils/j;

.field private c:Lcn/sharesdk/wechat/utils/k;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/j;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 164
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    int-to-double v2, v0

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p2

    double-to-int v0, v2

    int-to-double v1, v1

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p2

    double-to-int p2, v1

    const/4 p3, 0x1

    .line 167
    invoke-static {p1, v0, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcn/sharesdk/wechat/utils/l;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/sharesdk/wechat/utils/l;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/l;-><init>()V

    sput-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    .line 3
    :cond_0
    sget-object v0, Lcn/sharesdk/wechat/utils/l;->a:Lcn/sharesdk/wechat/utils/l;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 44
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 48
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 49
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 50
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_0

    .line 51
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 52
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x0

    .line 53
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 54
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/l;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 32
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareSDK share file with FileProvider path is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p6}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Wecaht Version is not new"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p6}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v2

    invoke-virtual {p6}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v2, v3, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 37
    :cond_1
    :goto_0
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 38
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 39
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 40
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    :cond_2
    const/4 p2, 0x0

    .line 41
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 42
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 82
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 83
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 84
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 85
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 86
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 87
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 88
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 74
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 75
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 76
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 77
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 78
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 79
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 80
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 65
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 66
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 67
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 68
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 69
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 70
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 71
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 72
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 56
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 57
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 58
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 59
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 60
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 61
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 62
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 63
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 90
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 91
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 94
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 95
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 97
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 99
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 100
    iget p2, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 101
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 102
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 103
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 104
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz p7, :cond_5

    .line 105
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_5

    .line 106
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_4

    .line 107
    array-length p1, p1

    const/high16 p3, 0x20000

    if-gt p1, p3, :cond_3

    goto :goto_2

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p2, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const-string/jumbo p1, "webpage"

    .line 110
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 112
    iget v1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput v1, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 113
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 114
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 117
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 118
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 119
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 120
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 122
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 123
    iget p2, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 124
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 125
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 126
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 127
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "miniProgram"

    .line 129
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    const-class v0, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".wxapi.WXEntryActivity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 172
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not extend from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    :cond_0
    new-instance v0, Lcn/sharesdk/wechat/utils/SendMessageReq;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/SendMessageReq;-><init>()V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/m;->e:Ljava/lang/String;

    .line 178
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 179
    iput p3, v0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    .line 180
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 181
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of p1, p1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    .line 182
    iget-object p2, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p2, v0, p1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    new-instance v0, Lcn/sharesdk/wechat/utils/i$a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/i$a;-><init>()V

    .line 131
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    .line 132
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    .line 133
    iget p1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    iput p1, v0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    .line 134
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/wechat/utils/m;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    new-instance v0, Lcn/sharesdk/wechat/utils/WXTextObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXTextObject;-><init>()V

    .line 21
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXTextObject;->text:Ljava/lang/String;

    .line 22
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 23
    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 24
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 25
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string p1, "text"

    .line 26
    invoke-direct {p0, v1, p1, p3, p4}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 145
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 146
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x64

    .line 147
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 148
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 149
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 151
    array-length v1, p1

    const v2, 0x8000

    if-eqz p4, :cond_0

    const/high16 v2, 0x20000

    :cond_0
    :goto_0
    if-le v1, v2, :cond_1

    int-to-double v3, v1

    int-to-double v5, v2

    .line 152
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 153
    invoke-direct {p0, p2, v3, v4}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 154
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 157
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 159
    array-length v1, p1

    goto :goto_0

    :cond_1
    return-object p1

    .line 160
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 138
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 139
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 140
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p4, v1}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    .line 67
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    .line 68
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 69
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 70
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 71
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 72
    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 73
    invoke-direct {p0, p4, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 17
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 18
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_0

    .line 19
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 20
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x0

    .line 21
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 22
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 36
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 37
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 38
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 39
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 40
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 41
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 42
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 43
    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string/jumbo p1, "webpage"

    .line 46
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 24
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 25
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 26
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 27
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 28
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 29
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 30
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 31
    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string/jumbo p1, "webpage"

    .line 34
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 57
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 58
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 59
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 60
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 61
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 62
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 63
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 64
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 48
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 49
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 50
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 51
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 52
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 53
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 54
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 55
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_0
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 143
    :goto_0
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 144
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 145
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 146
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const/4 p2, 0x0

    .line 147
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 148
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 130
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 131
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 132
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 133
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 134
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 135
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "filedata"

    .line 136
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 119
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 120
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 124
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 125
    :cond_1
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 126
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 127
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    :cond_2
    const-string p1, "filedata"

    .line 128
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 185
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get packagename is catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 188
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcn/sharesdk/wechat/utils/l;->g:I

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 8
    new-instance p1, Lcn/sharesdk/wechat/utils/b;

    invoke-direct {p1}, Lcn/sharesdk/wechat/utils/b;-><init>()V

    const-string v0, "snsapi_userinfo"

    .line 9
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v0, "sharesdk_wechat_auth"

    .line 10
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;Z)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    move-result-object p1

    .line 13
    const-class v0, Ljava/lang/Integer;

    const-string v1, "scene"

    invoke-virtual {p2, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    goto :goto_0

    :cond_0
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 14
    :goto_0
    new-instance v1, Lcn/sharesdk/framework/utils/h;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/h;-><init>()V

    const-string v2, "com.tencent.mm"

    .line 15
    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p2, p1}, Lcn/sharesdk/framework/utils/h;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 18
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x9

    .line 19
    invoke-interface {p3, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcn/sharesdk/wechat/utils/l;->f:Z

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/k;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/sharesdk/wechat/utils/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->c:Lcn/sharesdk/wechat/utils/k;

    .line 3
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/g;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getWxTemplateid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getWxReserved()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getScence()I

    move-result p1

    .line 8
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    .line 9
    iput p1, v0, Lcn/sharesdk/wechat/utils/g;->a:I

    .line 10
    iput-object v2, v0, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/m;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->a()Z

    move-result v0

    return v0
.end method

.method public c(Lcn/sharesdk/wechat/utils/k;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getShareType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/wechat/utils/l;->e()I

    move-result v4

    const v5, 0x25000001

    if-ge v4, v5, :cond_0

    const/4 v3, 0x4

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getScence()I

    move-result v9

    .line 9
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageFileProviderPath()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 13
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getExtInfo()Ljava/lang/String;

    move-result-object v15

    const-string v1, "checkArgs fail, UserName or Path is invalid"

    move-object/from16 v16, v5

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v2, :cond_26

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 18
    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 19
    :pswitch_1
    iget-object v3, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v1, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    invoke-direct {v11, v0, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-interface {v2, v0, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_2
    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v9, v3, :cond_8

    const/4 v3, 0x2

    if-eq v9, v3, :cond_7

    .line 22
    iget-object v3, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 24
    :cond_3
    invoke-virtual {v0, v12, v5}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_4

    .line 26
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 27
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_4
    if-eqz v10, :cond_5

    .line 28
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v8, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_5
    if-eqz v14, :cond_6

    .line 30
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 33
    :cond_6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/l;->e:Ljava/lang/String;

    const-string v8, ""

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 34
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_WXMINIPROGRAM"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SAHRE_WXMINIPROGRAM"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x1

    if-eq v9, v0, :cond_d

    const/4 v0, 0x2

    if-eq v9, v0, :cond_c

    if-eqz v8, :cond_9

    .line 36
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 37
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_9
    if-eqz v14, :cond_a

    .line 38
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 39
    new-instance v12, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v12}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 40
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v15, "images"

    invoke-virtual/range {v12 .. v17}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_a
    if-eqz v10, :cond_b

    .line 42
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 43
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 44
    :cond_b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 45
    :cond_c
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_d
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/4 v0, 0x1

    if-eq v9, v0, :cond_11

    if-eqz v8, :cond_e

    .line 47
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 48
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_e
    if-eqz v10, :cond_f

    .line 49
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v14, :cond_10

    .line 51
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 52
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 54
    :cond_10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 55
    :cond_11
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_FILE"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/4 v0, 0x1

    if-eq v9, v0, :cond_16

    const/4 v0, 0x2

    if-eq v9, v0, :cond_15

    if-eqz v8, :cond_12

    .line 56
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 57
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v15

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_12
    if-eqz v10, :cond_13

    .line 58
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 59
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v15

    move-object v7, v10

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_13
    if-eqz v14, :cond_14

    .line 60
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 61
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v15

    move-object v7, v0

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 63
    :cond_14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v15

    move-object v7, v0

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 64
    :cond_15
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_16
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_6
    invoke-virtual {v0, v12, v5}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_17

    .line 68
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 69
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v10, :cond_18

    .line 70
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 71
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_18
    if-eqz v14, :cond_19

    .line 72
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 73
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 75
    :cond_19
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 76
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v5

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v8, :cond_1a

    .line 80
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 81
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_1a
    if-eqz v10, :cond_1b

    .line 82
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v10

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_1b
    if-eqz v14, :cond_1c

    .line 84
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 85
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 87
    :cond_1c
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 88
    :pswitch_8
    invoke-virtual {v0, v12, v5}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_1d

    .line 90
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_1d
    if-eqz v10, :cond_1e

    .line 92
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 93
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_1e
    if-eqz v14, :cond_1f

    .line 94
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 95
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    .line 97
    :cond_1f
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz v8, :cond_20

    .line 98
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 99
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_20
    if-eqz v16, :cond_21

    .line 100
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v5, v16

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_21
    if-eqz v10, :cond_22

    .line 102
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 103
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    goto/16 :goto_2

    :cond_22
    if-eqz v14, :cond_25

    .line 104
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 105
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_24

    .line 113
    :cond_23
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 114
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "when share iamge wechat that create nomedia catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 115
    :cond_24
    :goto_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto :goto_2

    .line 116
    :cond_25
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    goto :goto_2

    :pswitch_a
    move-object/from16 v1, p1

    .line 117
    invoke-direct {v11, v6, v7, v9, v1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    :cond_26
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/wechat/friends/Wechat;

    invoke-direct {v0}, Lcn/sharesdk/wechat/friends/Wechat;-><init>()V

    invoke-virtual {v0}, Lcn/sharesdk/wechat/friends/Wechat;->isClientValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.tencent.mm"

    const/16 v2, 0x80

    .line 2
    invoke-static {v0, v2}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.mm.BuildInfo.OPEN_SDK_VERSION"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WechatHelper getWXAppSupportAPI() get from metaData failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return v1
.end method

.method public f()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    .line 2
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wechat versionName ==>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const-string v1, "0"

    :goto_0
    const-string v2, "_"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "\\."

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v2, v1

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 9
    :try_start_1
    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 11
    aput v0, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-lt v2, v1, :cond_2

    .line 12
    aget v1, v3, v0

    const/4 v2, 0x7

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    aget v1, v3, v4

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget v1, v3, v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    return v4

    .line 13
    :cond_1
    aget v1, v3, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    return v4

    :cond_2
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
