.class public Lcom/ta/utdid2/device/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final j:Ljava/lang/Object;

.field private static k:Lcom/ta/utdid2/device/d; = null

.field static final l:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final m:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static final n:Ljava/lang/String; = ".DataStorage"

.field private static final o:Ljava/lang/String; = "ContextData"

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String; = "Alvin2"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/ta/utdid2/device/f;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/ta/utdid2/core/persistent/c;

.field private g:Lcom/ta/utdid2/core/persistent/c;

.field private h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/d;->j:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/d;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    const-string v1, "xx_utdid_key"

    .line 5
    iput-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    const-string v1, "xx_utdid_domain"

    .line 6
    iput-object v1, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 8
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->h:Ljava/util/regex/Pattern;

    .line 10
    iput-object p1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    .line 11
    new-instance v0, Lcom/ta/utdid2/core/persistent/c;

    sget-object v3, Lcom/ta/utdid2/device/d;->p:Ljava/lang/String;

    const-string v4, "Alvin2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/core/persistent/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    .line 12
    new-instance v0, Lcom/ta/utdid2/core/persistent/c;

    const-string v9, ".DataStorage"

    const-string v10, "ContextData"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/core/persistent/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    .line 13
    new-instance p1, Lcom/ta/utdid2/device/f;

    invoke-direct {p1}, Lcom/ta/utdid2/device/f;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "K_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "D_%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/device/d;->e:Ljava/lang/String;

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HmacSHA1"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 4
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 5
    invoke-static {p0, v0}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 4
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    move-result-object v2

    .line 5
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 7
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/d;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/e;->a(I)[B

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    if-eqz v0, :cond_4

    const-string v1, "UTDID2"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    const-string v2, "DID"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    const-string v2, "EI"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    const-string v2, "SI"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/c;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    if-eqz v3, :cond_4

    .line 16
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    :cond_4
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    if-eqz v0, :cond_0

    const-string v1, "UTDID2"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/ta/utdid2/device/d;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/ta/utdid2/device/d;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ta/utdid2/device/d;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/d;-><init>(Landroid/content/Context;)V

    .line 5
    sput-object v1, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    invoke-direct {v1}, Lcom/ta/utdid2/device/d;->c()V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/ta/utdid2/device/d;->k:Lcom/ta/utdid2/device/d;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "\n"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x18

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/c;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mqBRboGZkQPcAkyk"

    .line 1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\n"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x18

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 7
    :goto_0
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    if-eqz v0, :cond_1

    const-string v1, "UTDID2"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/c;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/ta/utdid2/device/d;->g:Lcom/ta/utdid2/core/persistent/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    :cond_1
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dxCRMxhQkdGePGnp"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized e()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :catch_0
    :try_start_3
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_4
    new-instance v0, Lcom/ta/utdid2/device/e;

    invoke-direct {v0}, Lcom/ta/utdid2/device/e;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :try_start_5
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dxCRMxhQkdGePGnp"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-object v3, v2

    .line 8
    :goto_0
    :try_start_6
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12
    monitor-exit p0

    return-object v4

    .line 13
    :cond_2
    :try_start_7
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    iget-object v5, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v5, v4}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 17
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 18
    :try_start_8
    iget-object v4, p0, Lcom/ta/utdid2/device/d;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dxCRMxhQkdGePGnp"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 19
    :catch_2
    :cond_3
    :try_start_9
    iget-object v4, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iput-object v4, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    const/4 v1, 0x1

    .line 26
    :cond_5
    :try_start_a
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->d()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 28
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_6

    .line 29
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 30
    :cond_6
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->i(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 32
    iput-object v3, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 33
    monitor-exit p0

    return-object v3

    .line 34
    :cond_7
    :try_start_b
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->f:Lcom/ta/utdid2/core/persistent/c;

    iget-object v4, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ta/utdid2/core/persistent/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 36
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 38
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 40
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 42
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 43
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :cond_a
    :try_start_c
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->b()[B

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v3, 0x2

    .line 47
    invoke-static {v0, v3}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;

    .line 48
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/d;->k(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/ta/utdid2/device/d;->c:Lcom/ta/utdid2/device/f;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/f;->c([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    .line 50
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->j(Ljava/lang/String;)V

    .line 51
    :cond_b
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->h(Ljava/lang/String;)V

    .line 52
    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->b:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_3
    move-exception v0

    .line 53
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 54
    :cond_d
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
