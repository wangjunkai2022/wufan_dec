.class public final Lcom/mob/tools/network/NetCommunicator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/network/NetCommunicator$NetworkError;,
        Lcom/mob/tools/network/NetCommunicator$Callback;
    }
.end annotation


# static fields
.field public static final KEY_DUID:Ljava/lang/String;

.field public static final KEY_DUID_PREVIOUS:Ljava/lang/String; = "duidPrevious"

.field public static final KEY_IS_MODIFIED:Ljava/lang/String; = "isModified"

.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private b:Ljava/security/SecureRandom;

.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private e:Lcom/mob/tools/utils/MobRSA;

.field private f:Lcom/mob/tools/network/NetworkHelper;

.field private g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "004gPcbcd2g"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x3

    const/16 v3, 0x14

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/mob/tools/network/NetCommunicator;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/network/NetCommunicator;->b:Ljava/security/SecureRandom;

    .line 3
    new-instance v0, Lcom/mob/tools/utils/MobRSA;

    invoke-direct {v0, p1}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/network/NetCommunicator;->e:Lcom/mob/tools/utils/MobRSA;

    .line 4
    new-instance p1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->c:Ljava/math/BigInteger;

    .line 5
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->d:Ljava/math/BigInteger;

    .line 6
    new-instance p1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->f:Lcom/mob/tools/network/NetworkHelper;

    .line 7
    new-instance p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {p1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    const/16 p2, 0x7530

    .line 8
    iput p2, p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 p2, 0x1388

    .line 9
    iput p2, p1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 10
    sget-object p1, Lcom/mob/tools/network/NetCommunicator;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private a(Lcom/mob/tools/network/HttpConnection;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "014$ffdbcjJch]cjXcOghdjYh:cjee7cb"

    .line 38
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/mob/tools/network/NetCommunicator;Lcom/mob/tools/network/HttpConnection;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
    .locals 1

    .line 37
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/mob/tools/network/NetCommunicator$2;-><init>(Lcom/mob/tools/network/NetCommunicator;[Ljava/lang/String;[B)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "RS is empty"

    const/4 v1, -0x1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "0032cgFh?ef"

    .line 52
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "004g+ce@c\'ce"

    .line 53
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    .line 54
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "006Fef?cKceKcFcbef"

    .line 55
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "005h.cgcgdbcg"

    .line 56
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "006[ef0c@ce!c1cbef"

    .line 59
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "005h^cgcgdbcg"

    .line 60
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/mob/tools/network/NetCommunicator;[B[B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/network/NetCommunicator;->a([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_0

    .line 18
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetCommunicator;->a([B)[B

    move-result-object p2

    .line 19
    :cond_0
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    iget-object v1, p0, Lcom/mob/tools/network/NetCommunicator;->e:Lcom/mob/tools/utils/MobRSA;

    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator;->c:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/mob/tools/network/NetCommunicator;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 22
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 24
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 25
    array-length p2, p1

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 27
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 28
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 29
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([B[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 46
    invoke-static {p2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    .line 47
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object p1

    .line 48
    new-instance p2, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/mob/tools/network/NetCommunicator;->getCommonDefaultHeaders()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "004\'efcdeecj"

    .line 34
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "003%ci8h*ch"

    .line 35
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "014Affdbcj@chDcj8c2ghdjWhPcjee:cb"

    .line 36
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(ZLjava/util/HashMap;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0, p3, p4}, Lcom/mob/tools/network/NetCommunicator;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object p1
.end method

.method private a(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/network/HttpConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator;->b:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 13
    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator;->b:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 14
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 15
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public static checkHttpRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonDefaultHeaders()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "003-ci;h9ch"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "013Nddef hScgghdfZgh cj%c<cd6c+ch"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "004kQdbcdLg"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

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

    return-object v0
.end method

.method public static declared-synchronized getDUID(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mob/tools/network/NetCommunicator;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDUIDWithModifyInfo(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/tools/network/NetCommunicator;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSDKDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mob/commons/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initSDKDM(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mob/commons/c;->a(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTcpIntercept(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public removeTcpIntercept(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mob/mcl/b/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public request(Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mob/tools/network/NetCommunicator$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetCommunicator;->request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V

    return-void
.end method

.method public request(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mob/tools/network/NetCommunicator$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetCommunicator;->request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V

    return-void
.end method

.method public request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mob/tools/network/NetCommunicator$Callback<",
            "TT;>;)V"
        }
    .end annotation

    move-object v8, p0

    .line 3
    iget-object v9, v8, Lcom/mob/tools/network/NetCommunicator;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/mob/tools/network/NetCommunicator$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mob/tools/network/NetCommunicator$1;-><init>(Lcom/mob/tools/network/NetCommunicator;ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/tools/network/NetCommunicator$Callback;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSynchronized(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSynchronized(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSynchronized(ZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/mob/tools/network/NetCommunicator;->a()[B

    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p3, p5}, Lcom/mob/tools/network/NetCommunicator;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    const-string v1, "utf-8"

    .line 10
    invoke-virtual {p5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 11
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/mob/tools/network/NetCommunicator;->a(ZLjava/util/HashMap;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v4

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/String;

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/mob/tools/network/NetCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v7

    .line 13
    new-instance v5, Lcom/mob/tools/network/StringPart;

    invoke-direct {v5}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 14
    invoke-virtual {v5, p5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 15
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  request("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\nheader = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p5, p3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p3, 0x0

    .line 16
    :try_start_0
    invoke-static {p3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 17
    iget-object v8, p0, Lcom/mob/tools/network/NetCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    move-object v3, p4

    invoke-static/range {v2 .. v8}, Lcom/mob/mcl/b/a;->a(ZLjava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_1

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/network/NetCommunicator;->f:Lcom/mob/tools/network/NetworkHelper;

    const/4 v6, -0x1

    iget-object v8, p0, Lcom/mob/tools/network/NetCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    move-object v3, p4

    invoke-virtual/range {v2 .. v8}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 19
    :goto_1
    aget-object p1, p2, v0

    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ">>> response("

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p2, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 21
    aget-object p1, p2, v0

    invoke-direct {p0, p1}, Lcom/mob/tools/network/NetCommunicator;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method public requestSynchronized(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "{}"

    if-nez p3, :cond_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p3

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p4

    move v7, p5

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(ZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSynchronizedGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/network/NetCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, v0}, Lcom/mob/mcl/b/a;->a(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>> gt res:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    .line 4
    :catchall_0
    iget-object v0, p0, Lcom/mob/tools/network/NetCommunicator;->f:Lcom/mob/tools/network/NetworkHelper;

    iget-object v1, p0, Lcom/mob/tools/network/NetCommunicator;->g:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method
