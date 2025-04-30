.class public Lcom/mob/commons/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/m$a;,
        Lcom/mob/commons/m$b;,
        Lcom/mob/commons/m$c;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field private static b:Lcom/mob/commons/m;


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/m;
    .locals 2

    const-class v0, Lcom/mob/commons/m;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/commons/m;->b:Lcom/mob/commons/m;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/commons/m;

    invoke-direct {v1}, Lcom/mob/commons/m;-><init>()V

    sput-object v1, Lcom/mob/commons/m;->b:Lcom/mob/commons/m;

    .line 5
    :cond_0
    sget-object v1, Lcom/mob/commons/m;->b:Lcom/mob/commons/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(I)Lcom/mob/tools/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/m;->b(I)Lcom/mob/tools/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 22
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/m;->d:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "f53c224aefb38daa0825c1b8ea691b16d2e16db10880548afddd780c6670a091a11dafa954ea4a9483797fda1045d2693a08daa48cf9cedce1e8733b857304cb"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/commons/m;->d:Ljava/math/BigInteger;

    .line 24
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "27749621e6ca022469645faed16e8261acf6af822467382d55c24bb9bc02356ab16e76ddc799dc8ba6b4f110411996eeb63505c9dcf969d3fc085d712f0f1a9713b67aa1128d7cc41bda363afb0ec7ade60e542a4e22869395331cc0096de412034551e98bb2629ae1b7168b8bc82006d064ab335d8567283e70beb6a49e9423"

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mob/commons/m;->e:Ljava/math/BigInteger;

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/m;->c()[B

    move-result-object v0

    .line 26
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 27
    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    new-instance v6, Lcom/mob/tools/utils/MobRSA;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    iget-object v7, p0, Lcom/mob/commons/m;->d:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/mob/commons/m;->e:Ljava/math/BigInteger;

    invoke-virtual {v6, v0, v7, v8}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v6

    .line 29
    array-length v7, v6

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    const-string v6, "utf-8"

    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 32
    array-length v0, p1

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 33
    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 34
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v5, p1, v3

    .line 35
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v1

    :goto_0
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v5, v0, v3

    .line 37
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 38
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 39
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static synthetic a(Lcom/mob/commons/m;Ljava/lang/Runnable;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/commons/m;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/mob/commons/m;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "0053gngfgefifl"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/commons/m;->c:Ljava/io/File;

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/m;->c:Ljava/io/File;

    new-instance v1, Lcom/mob/commons/m$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/commons/m$1;-><init>(Lcom/mob/commons/m;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/mob/commons/l;->a(Ljava/io/File;Lcom/mob/commons/k;)Z

    move-result p1

    return p1
.end method

.method private static b(I)Lcom/mob/tools/a;
    .locals 4

    .line 2
    new-instance v0, Lcom/mob/tools/a;

    const-string v1, "005]gn(nKfigfhh"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x32

    invoke-direct {v0, v2, p0, v1}, Lcom/mob/tools/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private c()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5
    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    .line 7
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 9
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 10
    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 3

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mob/commons/m;->a:Z

    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "0159fifmgnhiKe.fhfjIk^hiVjZflgngfgehh"

    .line 14
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "007gWfhfiflfhhhBk"

    .line 16
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "008gXfjfggefjfgDf]fk"

    .line 17
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ver"

    .line 18
    sget v1, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "003n\'hihh"

    .line 19
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/mob/commons/m$a;->a()Lcom/mob/commons/m$a;

    move-result-object v1

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/mob/commons/m$a;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/mob/commons/m$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/mob/commons/m$c;->a()Lcom/mob/commons/m$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
