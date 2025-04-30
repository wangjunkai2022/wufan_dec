.class Lcom/mob/commons/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/m$b;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/mob/commons/m$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/m$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/mob/commons/m$b;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "003Tfl0k_fk"

    .line 25
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "004gHgffhSf"

    .line 26
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "003XhiVj7fl"

    .line 27
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "006=hi*j:flTlkPfj"

    .line 28
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "007>fh@gg%fmfhLnk"

    .line 29
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "006]fh\'ggg@flhh"

    .line 30
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "006=fhYgglkGfj"

    .line 31
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "005n5geWjk$gf"

    .line 32
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "008jkl.fgfiCkLfgLj"

    .line 34
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "0048feGj]fg_j"

    .line 35
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "006(hifkhiLlkVfj"

    .line 36
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "011Cfm[kf3hfgefjfl,f_fk@gk"

    .line 37
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3
    :try_start_2
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v1, 0x400

    :try_start_3
    new-array v6, v1, [B

    .line 4
    :goto_0
    invoke-virtual {v4, v6, v3, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 5
    invoke-virtual {v5, v6, v3, v7}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :try_start_5
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    .line 7
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 8
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 10
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v3

    aput-object v4, v0, v2

    .line 11
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v5

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    :goto_1
    :try_start_6
    new-array v6, v2, [Ljava/io/Closeable;

    aput-object v5, v6, v3

    .line 12
    invoke-static {v6}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 13
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v1

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_2

    :catchall_5
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v3

    aput-object v4, v0, v2

    .line 14
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 15
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    :try_start_0
    const-string v0, "010VhiRj_flihEk;fjhifggefm"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mob/commons/m$b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v0, "006ZhiHjAflgkfhhh"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/commons/m$b;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/mob/commons/m$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 6

    .line 5
    iget v0, p0, Lcom/mob/commons/m$b;->b:I

    iget-object v1, p0, Lcom/mob/commons/m$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/m$b;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "006kJfjfjJn%hihh"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/m$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/mob/commons/m$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-direct {p0, v0}, Lcom/mob/commons/m$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    const-string v3, "004-fmgefmKk"

    .line 12
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "m"

    .line 14
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v3, 0x2710

    .line 16
    iput v3, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 17
    iput v3, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mob/commons/c;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/errlog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v4}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5, v0}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v4, "Response(%s): %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "network is disconnected!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v1
.end method
