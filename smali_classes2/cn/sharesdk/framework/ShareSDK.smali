.class public Lcn/sharesdk/framework/ShareSDK;
.super Ljava/lang/Object;
.source "ShareSDK.java"


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "SHARESDK"

.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.10.1"

.field public static final SHARESDK_MOBLINK_RESTORE:Ljava/lang/String; = "sharesdk_moblink_restore"

.field private static a:Lcn/sharesdk/framework/i; = null

.field private static b:Z = true

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "3.10.1"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    mul-int/lit8 v4, v4, 0x64

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sput v4, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    .line 5
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK static main catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 9
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getNetworkDevinfo catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 11
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .line 25
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 26
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK uploadImageToFileServer catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 27
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 21
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK uploadImageToFileServer catch: "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 23
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 17
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getShortLink catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 19
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(II)V
    .locals 2

    .line 5
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 6
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK copyNetworkDevinfo catch "

    invoke-virtual {p1, p0, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK copyDevinfo "

    invoke-virtual {p1, p0, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static a()Z
    .locals 5

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "ShareSDK isNetworkDevinfoRequested is catch "

    invoke-virtual {v2, v1, v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 15
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->g()Z

    move-result v0

    :cond_0
    return v0
.end method

.method static b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    return-void
.end method

.method public static closeDebug()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return-void
.end method

.method static synthetic d()Lcn/sharesdk/framework/i;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    return-object v0
.end method

.method public static deleteCache()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK deleteCache catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    return-object v0
.end method

.method public static getAuthActivity()Landroid/app/Activity;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getAuthActivity catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCustomDataFromLoopShare()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getDevinfo catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEnableAuthTag()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "ShareSDK getEnableAuthTag catch"

    invoke-virtual {v2, v1, v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->c()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getFirstQrImage(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK ensureInit getPlatform catch"

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPlatformList()[Lcn/sharesdk/framework/Platform;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getPlatformList catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->e()[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQRCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getService(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h()I
    .locals 2

    .line 1
    sget v0, Lcn/sharesdk/framework/ShareSDK;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/sharesdk/framework/ShareSDK;->f:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcn/sharesdk/framework/ShareSDK;->f:I

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return v0
.end method

.method public static isFBInstagram()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareSDK isFBInstagram catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->b()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isRemoveCookieOnAuthorize()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareSDK isRemoveCookieOnAuthorize catch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->f()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static j()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v0}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    new-instance v0, Lcom/mob/commons/ForbThrowable;

    invoke-direct {v0}, Lcom/mob/commons/ForbThrowable;-><init>()V

    throw v0
.end method

.method private static declared-synchronized k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->j()Z

    .line 2
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcn/sharesdk/framework/i;

    invoke-direct {v1}, Lcn/sharesdk/framework/i;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->d()V

    .line 5
    sput-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static l()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/ShareSDK$1;

    invoke-direct {v1}, Lcn/sharesdk/framework/ShareSDK$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static logApiEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK logApiEvent catch "

    invoke-virtual {p1, p0, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILcn/sharesdk/framework/Platform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK logDemoEvent catch "

    invoke-virtual {p1, p0, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static makeVideoWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static platformIdToName(I)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShareSDK platformIdToName catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static platformNameToId(Ljava/lang/String;)I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK platformNameToId catch "

    invoke-virtual {v1, v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static prepareLoopShare(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static preparePassWord(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static readPassWord(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static registerPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->d(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static registerService(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK  registerService catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static removeCookieOnAuthorize(Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK removeCookieOnAuthorize catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setActivity is catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setCloseGppService(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/a/a/e;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setConnTimeout(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setConnTimeout catch"

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setEnableAuthTag(Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setEnableAuthTag catch"

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setFBInstagram(Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setFBInstagram catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sput-object p0, Lcn/sharesdk/framework/ShareSDK;->c:Ljava/lang/String;

    .line 2
    sput-object p1, Lcn/sharesdk/framework/ShareSDK;->d:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 5
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK setPlatformDevInfo catch "

    invoke-virtual {p1, p0, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPlatformDevInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sput-object p0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 4
    sget-object p0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz p0, :cond_1

    .line 5
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/i;->a(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setPlatformDevInfo catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setReadTimeout catch"

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unregisterPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->e(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static unregisterService(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 2
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK  unregisterService catch "

    invoke-virtual {v0, p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method
