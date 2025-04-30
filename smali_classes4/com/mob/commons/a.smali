.class public final Lcom/mob/commons/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a$a;,
        Lcom/mob/commons/a$c;,
        Lcom/mob/commons/a$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/commons/a;->a:Z

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/mob/commons/a;->b:[B

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/a;->d()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "rdid"

    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/w;->f()Lcom/mob/commons/a$a;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "key_request_duid_time"

    if-eqz v2, :cond_1

    .line 28
    :try_start_1
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mob/commons/a$a;->a(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 29
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/t;->d()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 30
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    .line 31
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "004d!dcceKc"

    .line 32
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "iemt"

    .line 33
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "snmt"

    .line 34
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "005k$db7ghBdc"

    .line 35
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "0078egcecfKc)dbcgch"

    .line 36
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "admt"

    .line 37
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "oamt"

    .line 38
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v7

    invoke-interface {v7}, Lcom/mob/tools/a/a;->aX()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ismt"

    .line 39
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ssnmt"

    .line 40
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "inpkgt"

    .line 41
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAppLastUpdateTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "btt"

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/t;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "v"

    .line 44
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/commons/t;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "puid"

    .line 45
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/commons/t;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "drmid"

    .line 46
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/commons/t;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "genType"

    if-nez v2, :cond_2

    :try_start_2
    const-string v2, "004g-cbcd[g"

    .line 47
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "common"

    .line 48
    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "004gRcbcdWg"

    .line 49
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gt"

    .line 50
    invoke-virtual {v2}, Lcom/mob/commons/a$a;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v2}, Lcom/mob/commons/a$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expTime"

    .line 52
    invoke-virtual {v2}, Lcom/mob/commons/a$a;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gp"

    .line 53
    invoke-virtual {v2}, Lcom/mob/commons/a$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    const-string v2, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    .line 54
    new-instance v4, Lcom/mob/tools/network/NetCommunicator;

    const/16 v6, 0x400

    invoke-direct {v4, v6, p1, v2}, Lcom/mob/tools/network/NetCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mob/commons/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/v3/dgen"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v4, v5, p1, v2}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 57
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/commons/t;->a(Ljava/lang/String;)V

    .line 60
    :cond_3
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/commons/a$a;->a(Ljava/lang/String;)Lcom/mob/commons/a$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 61
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/w;->a(Lcom/mob/commons/a$a;)V

    .line 62
    invoke-virtual {p1}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    return-object v1
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 224
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-object v0, v1

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 226
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "004gVcbcd g"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 228
    invoke-direct {p0}, Lcom/mob/commons/a;->d()Ljava/io/File;

    move-result-object p1

    .line 229
    invoke-static {p1, v1}, Lcom/mob/commons/a;->b(Ljava/io/File;Ljava/util/HashMap;)V

    goto :goto_1

    .line 230
    :cond_0
    invoke-static {p1}, Lcom/mob/commons/a;->b(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, p1

    :goto_1
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v0, p1, v4

    aput-object v2, p1, v3

    .line 231
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_3
    move-exception p1

    .line 232
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v0, p1, v4

    aput-object v2, p1, v3

    .line 233
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_4
    move-exception p1

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v0, v1, v4

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 234
    throw p1

    :cond_1
    :goto_2
    return-object v1
.end method

.method private static a(Ljava/lang/String;[B)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 240
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 241
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 242
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private a(Z)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mob/commons/j;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a;->d()Ljava/io/File;

    move-result-object p1

    .line 154
    :goto_0
    invoke-direct {p0, p1}, Lcom/mob/commons/a;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 155
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method static synthetic a(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/mob/commons/a;->b(Ljava/io/File;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/mob/commons/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/commons/a$1;-><init>(Lcom/mob/commons/a;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/mob/commons/l;->a(Ljava/io/File;Lcom/mob/commons/k;)Z

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ismt"

    const-string v1, "iemt"

    .line 106
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/mob/commons/a;->b(Ljava/util/HashMap;)V

    const-string v2, "010ghiUcdcfAh?dfcjegdb"

    .line 108
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "005cVdbciWh_cj"

    .line 110
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/commons/x;->a()Lcom/mob/commons/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string p1, "007Zcfcecgcgcd;h^cg"

    .line 113
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "0075cfcecgcgcdLh2cg"

    .line 114
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    const-string v3, "004g$cbcdJg"

    .line 116
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->queryIMEI()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 118
    array-length v3, p2

    if-lez v3, :cond_2

    const-string v3, "iemtarr"

    .line 119
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getMemoryInfo()Ljava/util/HashMap;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getSizeInfo()Ljava/util/HashMap;

    move-result-object v3

    if-eqz p2, :cond_3

    const-string v4, "003Hcgce8k"

    .line 122
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "005cHdb%c1cedc"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v3, :cond_5

    const-string p2, "006_ef0gTcfcecgTg"

    .line 123
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_4

    const-string v4, "013Sef7g_cfcecg8g)dg0c3dbcgceeeMh"

    .line 124
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "005cNdb[c6cedc"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p2, "004gHceOc ce"

    .line 125
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_5

    const-string v3, "011g9ce8c4cedgCcLdbcgceee,h"

    .line 126
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "005c_db*cFcedc"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p2, "006@cgdbWk dfZk%ee"

    .line 127
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getMIUIVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 130
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mob/tools/a/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 133
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mob/tools/a/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_7
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0}, Lcom/mob/commons/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 136
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "m"

    .line 138
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {p1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v0, 0x7530

    .line 140
    iput v0, p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 141
    iput v0, p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 142
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mob/commons/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "006fgQcdcjegdb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "013!ddef7hZcgghdfCgh7cj]c%cd6c(ch"

    .line 145
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/commons/v;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "004k6dbcd0g"

    .line 146
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/mob/tools/a/a;->aY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "200"

    const-string v0, "006BefUcCceLc*cbef"

    .line 149
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 150
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object p1

    sget-object p2, Lcom/mob/commons/w;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 151
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "007dRcgdbAg*cbcfWc"

    .line 78
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 79
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/w;->f()Lcom/mob/commons/a$a;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v4}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "006NcePddEci>hXch"

    .line 82
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "004g[cbcd%g"

    .line 83
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "006IceNdddVciee"

    .line 84
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "0060ce ddihAcg"

    .line 85
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "006<ef@gEci:ihYcg"

    .line 86
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getSdkver()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "007[cj6hcCecdbcgci"

    .line 87
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/commons/c;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "006fg!efcdeecj"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "013>ddefZhLcgghdfWghYcj5cMcdEc2ch"

    .line 90
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mob/commons/v;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "004kHdbcdEg"

    .line 91
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->getODH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v6, 0x2710

    .line 93
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 94
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 95
    new-instance v6, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v6, v0, v2, v3, v5}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "004c_cgcb=h"

    .line 97
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "004;cg!h?cbSd"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 98
    iput-boolean v3, p0, Lcom/mob/commons/a;->a:Z

    :cond_2
    const-string v2, "0062ef1cSceJcAcbef"

    .line 99
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "007<ce(dd9dfcjegdb"

    .line 100
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    :cond_3
    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "007\'ce-ddLdfcjegdb"

    .line 105
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_4
    return v1
.end method

.method private a(Ljava/util/HashMap;Lcom/mob/commons/MobProduct;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/commons/MobProduct;",
            ")Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 64
    new-instance p2, Lcom/mob/commons/Authorizer$1;

    invoke-direct {p2, p0}, Lcom/mob/commons/Authorizer$1;-><init>(Lcom/mob/commons/a;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "007:ceSdd8dfcjegdb"

    .line 65
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "007BceJdd5dfcjegdb"

    .line 67
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    .line 68
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 70
    invoke-interface {p2}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 71
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 73
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    move v2, v0

    :goto_0
    return v2
.end method

.method private a(Ljava/util/HashMap;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    .line 157
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "010ghiBcdcf6hYdfcjegdb"

    .line 158
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_29

    .line 159
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 160
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "admt"

    .line 161
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 163
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "ssnmt"

    .line 165
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    const-string v3, "iemt"

    .line 168
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 169
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-string v5, "ismt"

    .line 171
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 173
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    or-int/lit8 v3, v3, 0x2

    const/4 v2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    or-int/lit8 v3, v3, 0x4

    :cond_6
    const-string p2, "004)dbcecdBg"

    .line 174
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 175
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/mob/tools/a/a;->aX()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_7

    .line 176
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    or-int/lit8 v3, v3, 0x8

    const/4 v2, 0x1

    :cond_9
    const-string p2, "rdid"

    .line 177
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 178
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/commons/t;->c()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_a

    .line 179
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    or-int/lit8 v3, v3, 0x10

    const/4 v2, 0x1

    :cond_c
    const-string p2, "drmid"

    .line 180
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 181
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/commons/t;->g()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_d

    .line 182
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    if-eqz p2, :cond_f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    :cond_e
    or-int/lit8 v3, v3, 0x20

    const/4 v2, 0x1

    :cond_f
    const-string p2, "puid"

    .line 183
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 184
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/commons/t;->f()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_10

    .line 185
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    if-eqz p2, :cond_12

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    :cond_11
    or-int/lit8 v3, v3, 0x40

    const/4 v2, 0x1

    :cond_12
    const-string p2, "004OcbJg8cd1g"

    .line 186
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getUD()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_13

    .line 188
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    if-eqz p2, :cond_15

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    :cond_14
    or-int/lit16 v3, v3, 0x80

    :cond_15
    const-string p2, "v"

    .line 189
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 190
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/commons/t;->b()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_16

    .line 191
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_16
    if-eqz p2, :cond_18

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    :cond_17
    const/4 v2, 0x1

    .line 192
    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "cid_modify"

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_19

    return v0

    :cond_19
    const-string p2, "snmt"

    .line 193
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 194
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 195
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v0

    :cond_1a
    const-string p2, "005k!db.gh?dc"

    .line 196
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 197
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 198
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    return v0

    :cond_1b
    const-string p2, "007XegcecfMc*dbcgch"

    .line 199
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 200
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 201
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    return v0

    :cond_1c
    const-string p2, "007IcfcecgcgcdIhAcg"

    .line 202
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 203
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 204
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    return v0

    :cond_1d
    const-string p2, "ismtarr"

    .line 205
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 206
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->queryIMSI()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 207
    array-length v3, v2

    if-lez v3, :cond_23

    if-nez p2, :cond_1e

    return v0

    .line 208
    :cond_1e
    :try_start_1
    check-cast p2, Ljava/util/ArrayList;

    .line 209
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v5, v2

    if-eq v3, v5, :cond_1f

    return v0

    .line 210
    :cond_1f
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v3, :cond_22

    aget-object v6, v2, v5

    .line 211
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 212
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_20

    const/4 v6, 0x0

    goto :goto_4

    :cond_21
    const/4 v6, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_22
    if-eqz v6, :cond_23

    return v0

    :catchall_1
    nop

    :cond_23
    const-string p2, "0062efchef1ih-cg"

    .line 213
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 214
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 215
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    return v0

    :cond_24
    const-string p2, "002)ck$d"

    .line 216
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 217
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->cx()Z

    move-result v2

    if-eqz p2, :cond_29

    .line 218
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    goto :goto_5

    :cond_25
    const-string p2, "007Jebcg^h1ceci[hg"

    .line 219
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isRooted()Z

    move-result p2

    if-nez p1, :cond_26

    if-nez p2, :cond_27

    :cond_26
    if-eqz p1, :cond_28

    .line 221
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    :cond_27
    return v0

    :cond_28
    return v4

    :cond_29
    :goto_5
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 236
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 237
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/io/File;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 97
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int p0, v5

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 100
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 102
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/mob/commons/a;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    .line 103
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v0

    .line 104
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    aput-object v0, p0, v1

    .line 105
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 106
    throw p0

    .line 107
    :cond_1
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static b(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/commons/a;->a(Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    .line 85
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 91
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 92
    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    aput-object v4, p0, v3

    .line 93
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v2

    :goto_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    aput-object v4, p1, v3

    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 94
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    .line 95
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ismtarr"

    .line 12
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "010ghi+cdcfAh:dfcjegdb"

    .line 13
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "010ghiOcdcf+h3dfcjegdb"

    .line 15
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "004d7dcceKc"

    .line 16
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "010ghi@cdcf(h%dhch,dh"

    .line 17
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "006?efchef<ih.cg"

    .line 20
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "005k>db!ghPdc"

    .line 23
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 24
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 25
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "007?egcecfMcWdbcgch"

    .line 27
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 28
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ssnmt"

    .line 31
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :cond_4
    const/4 v3, 0x0

    .line 32
    :try_start_5
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    .line 33
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 34
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "admt"

    .line 35
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 36
    :cond_5
    :try_start_7
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "iemt"

    .line 38
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    .line 39
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 40
    :cond_6
    :goto_3
    :try_start_9
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "snmt"

    .line 42
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    .line 43
    :try_start_a
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 44
    :cond_7
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ismt"

    .line 46
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v3

    .line 47
    :try_start_c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 48
    :cond_8
    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/4 v5, 0x0

    .line 49
    :try_start_d
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->queryIMSI()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 50
    array-length v7, v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-lez v7, :cond_e

    if-nez v3, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_d

    .line 51
    :try_start_e
    check-cast v3, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v7, v6

    if-eq v8, v7, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_d

    .line 53
    array-length v8, v6

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_d

    aget-object v7, v6, v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 54
    :try_start_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 55
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v11, :cond_b

    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    const/4 v7, 0x1

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :catchall_6
    move-exception v3

    const/4 v7, 0x1

    goto :goto_a

    :catchall_7
    move-exception v3

    .line 56
    :goto_a
    :try_start_10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_d
    if-eqz v7, :cond_e

    .line 57
    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    .line 58
    :try_start_11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 59
    :cond_e
    :goto_b
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "007<cfcecgcgcdKhMcg"

    .line 61
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_f
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isRooted()Z

    move-result v0

    const-string v3, "0071ebcgJhKceci]hg"

    .line 63
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->cx()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    const-string v3, "002@ckId"

    .line 65
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 66
    :try_start_12
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPad()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    :goto_d
    const-string v0, "003dBceDg"

    .line 67
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    .line 68
    :try_start_13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :goto_e
    :try_start_14
    const-string v0, "010=efcfcgUhhJcjefcdfb2h"

    .line 69
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    .line 70
    :try_start_15
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 71
    :goto_f
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 73
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_12
    const-string v0, "rdid"

    .line 74
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/t;->g()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "drmid"

    .line 77
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_13
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/t;->f()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "puid"

    .line 80
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v0, "v"

    .line 81
    invoke-static {}, Lcom/mob/commons/t;->a()Lcom/mob/commons/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "010ghi]cdcf+h\'dfcjegdb"

    .line 82
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception p1

    .line 83
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    const-string v0, "016Aef;g5cidkcfdbKkkZdbcjceIdHdkefAg6ci"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->a:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v4

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    return v0

    :cond_0
    const-string v1, "005g@cdeece2d"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x278d00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v1, v1, v8

    add-long/2addr v4, v1

    cmp-long v1, v6, v4

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method declared-synchronized a()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/w;->f()Lcom/mob/commons/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lcom/mob/commons/a;->a(Z)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "004g=cbcdLg"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/mob/commons/MobProduct;)V
    .locals 10

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "di init"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 11
    iget-object v0, p0, Lcom/mob/commons/a;->b:[B

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/commons/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {p0, v2}, Lcom/mob/commons/a;->a(Z)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string v5, "004gHcbcd.g"

    .line 14
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    const-string v6, "004gHcbcdHg"

    .line 15
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 16
    :goto_0
    invoke-direct {p0, v3, v5}, Lcom/mob/commons/a;->a(Ljava/util/HashMap;Z)Z

    move-result v5

    .line 17
    invoke-direct {p0}, Lcom/mob/commons/a;->e()Z

    move-result v6

    .line 18
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\nisCh: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nisG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 19
    :cond_2
    iput-boolean v2, p0, Lcom/mob/commons/a;->a:Z

    if-eqz v2, :cond_3

    .line 20
    invoke-direct {p0, v3}, Lcom/mob/commons/a;->b(Ljava/util/HashMap;)V

    const/4 v1, 0x1

    .line 21
    :cond_3
    invoke-direct {p0, v3, p1}, Lcom/mob/commons/a;->a(Ljava/util/HashMap;Lcom/mob/commons/MobProduct;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    .line 22
    :goto_1
    iget-boolean p1, p0, Lcom/mob/commons/a;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "004g4cbcd6g"

    .line 23
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/mob/commons/a;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 24
    invoke-direct {p0, v3}, Lcom/mob/commons/a;->a(Ljava/util/HashMap;)V

    .line 25
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized b()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/a;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_2
    new-instance v2, Lcom/mob/commons/a$b;

    invoke-direct {v2, v0}, Lcom/mob/commons/a$b;-><init>(Lcom/mob/commons/Authorizer$1;)V

    .line 5
    invoke-virtual {v2}, Lcom/mob/commons/a$b;->a()Lcom/mob/commons/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mob/commons/a$a;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "004gNcbcd2g"

    .line 8
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0, v1}, Lcom/mob/commons/a;->a(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 10
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    move-object v1, v0

    .line 11
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
