.class public Lcom/mob/commons/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/mob/commons/x;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/mob/tools/utils/DeviceHelper;

.field private h:Landroid/content/Context;

.field private i:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "002*fjgl"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/x;->a:Ljava/lang/String;

    const-string v0, "005LfmfdPfeLel"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/x;->b:Ljava/lang/String;

    const-string v0, "005<fmfd[fiBel"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/x;->c:Ljava/lang/String;

    const-string v0, "016!hmhlkdkjifjfjihkiigfeggdehGi2gief"

    .line 4
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/x;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/x;->h:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/x;->g:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method public static a()Lcom/mob/commons/x;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/commons/x;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/commons/x;

    invoke-direct {v1}, Lcom/mob/commons/x;-><init>()V

    sput-object v1, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 51
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 52
    :try_start_1
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 53
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 54
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 55
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    new-array v5, v3, [Ljava/io/Closeable;

    aput-object v4, v5, v2

    .line 56
    invoke-static {v5}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 58
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "utf-8"

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 62
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v6, p1, v2

    .line 63
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 66
    new-instance v1, Lcom/mob/tools/utils/MobRSA;

    const/16 v4, 0x400

    invoke-direct {v1, v4}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    .line 67
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 68
    new-instance v5, Ljava/math/BigInteger;

    const-string v7, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v1, v0, v4, v5}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    :try_start_4
    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 74
    array-length v0, p1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 76
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    .line 77
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    .line 79
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 80
    throw p1

    :catchall_1
    move-exception p1

    move-object v1, v6

    goto :goto_0

    :catchall_2
    move-exception p1

    :goto_0
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 82
    throw p1

    :catchall_3
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_4
    move-exception p1

    :goto_1
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    .line 83
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 84
    throw p1
.end method

.method private a(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "004iOedef:i"

    const-string v1, "008ijk:efeh\'jHfh>i"

    const-string v2, "006:ghejgh_kj]ei"

    const-string v3, "005m?fd0ij]fe"

    const-string v4, "007?giegeh;eFfdeiej"

    .line 22
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 24
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "006<egXff=ek>j1ej"

    .line 31
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v5}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    .line 33
    invoke-direct {p0, v0}, Lcom/mob/commons/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "0134ffghCj:eiijfhGij?el;eHef.eAej"

    .line 35
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "004m.fdef?i"

    .line 36
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/mob/tools/a/a;->aY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v2, 0x7530

    .line 38
    iput v2, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 39
    iput v2, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 40
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mob/commons/c;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "007hVfdVfj0elef9i"

    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "200"

    const-string v1, "004]ehfdKij"

    .line 44
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "004i7eg9eLeg"

    .line 45
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_1

    const-string v0, "005e!fdekSj!el"

    .line 46
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    sget-object v0, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    iput-object p1, v0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/commons/x;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 49
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v6
.end method

.method private a(Ljava/lang/String;[B)Ljava/util/HashMap;
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

    .line 89
    :try_start_0
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const-string v2, "007]giegeh.e^fdeiej"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/x;->g:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const-string v2, "005mJfd?ij?fe"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/x;->g:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const-string v2, "006NghejghMkjYei"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/x;->g:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const-string v2, "008ijkJefeh?j6fhAi"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/x;->g:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const-string v2, "004iOedefWi"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "010Zgg-j3elFjVeiegfehj i$if"

    .line 15
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, v2}, Lcom/mob/commons/x;->b(Ljava/util/TreeMap;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "010Kgg\'j^elTj!eiegfehj8iFif"

    .line 18
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 20
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v1, "[%s] %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mob/commons/x;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "No changes"

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    return v2

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/util/TreeMap;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 85
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 88
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/x;->h:Landroid/content/Context;

    sget-object v4, Lcom/mob/commons/x;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :cond_0
    :goto_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 12
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 13
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 14
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 15
    throw p1
.end method

.method private b(Ljava/util/TreeMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/x;->h:Landroid/content/Context;

    sget-object v4, Lcom/mob/commons/x;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 17
    sget-object v4, Lcom/mob/commons/x;->d:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/mob/commons/x;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    array-length v4, p1

    if-lez v4, :cond_0

    .line 19
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 21
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 22
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 23
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 25
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 26
    throw p1
.end method

.method private d()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/x;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/mob/commons/x;->f()Ljava/util/HashMap;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/mob/commons/x;->a(Ljava/util/HashMap;)Z

    move-result v2

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    invoke-direct {p0, v1}, Lcom/mob/commons/x;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "[%s] %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/mob/commons/x;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tk status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/mob/commons/x;->i:Ljava/util/TreeMap;

    invoke-direct {p0, v1}, Lcom/mob/commons/x;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    sget-object v1, Lcom/mob/commons/x;->e:Lcom/mob/commons/x;

    iput-object v0, v1, Lcom/mob/commons/x;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/x;->h:Landroid/content/Context;

    sget-object v4, Lcom/mob/commons/x;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    .line 6
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v3, v0

    .line 7
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 8
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 9
    throw v0
.end method

.method private f()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/x;->h:Landroid/content/Context;

    sget-object v4, Lcom/mob/commons/x;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 6
    :goto_0
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 8
    sget-object v5, Lcom/mob/commons/x;->d:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/mob/commons/x;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_1
    move-object v3, v0

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    .line 9
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v3, v0

    .line 10
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 11
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_3
    return-object v0

    :catchall_2
    move-exception v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 12
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/commons/x;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/mob/commons/x;->d()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/x;->f:Ljava/lang/String;

    return-object v0
.end method
