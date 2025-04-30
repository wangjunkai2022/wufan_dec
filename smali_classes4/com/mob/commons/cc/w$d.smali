.class public Lcom/mob/commons/cc/w$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/cc/w$d;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/w$d;->b:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/w$d;->c:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/w$d;->d:Ljava/util/HashMap;

    .line 8
    iget-object v0, p0, Lcom/mob/commons/cc/w$d;->c:Ljava/util/HashMap;

    const-string v1, "t_map"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/mob/commons/cc/w$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/w$d;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    .line 28
    :try_start_0
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    return-object v0

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 34
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 35
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 37
    :goto_1
    :try_start_3
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const-string p1, "getStackTraceString oom"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v1, :cond_3

    .line 38
    :try_start_4
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    return-object p1

    .line 39
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v1, :cond_5

    .line 40
    :try_start_6
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_5
    return-object p1

    :catchall_5
    move-exception p1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 41
    :catchall_6
    :cond_6
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "BC"

    const-string v1, "AES"

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "UTF-8"

    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 43
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/EC"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "B/PKCS7P"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adding"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 53
    array-length p2, v4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v5, 0x0

    .line 54
    array-length v6, v4

    const/4 v8, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    .line 55
    invoke-virtual {p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 56
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, ""

    return-object p1

    :cond_1
    return-object p2
.end method

.method static synthetic a(Lcom/mob/commons/cc/w$d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 60
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    .line 61
    :cond_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 62
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 66
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    .line 68
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_4

    .line 70
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_5

    .line 72
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 73
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_6

    .line 74
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 75
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_7

    .line 76
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 77
    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/16 v6, 0xf

    if-ne v4, v6, :cond_d

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    iget-object v4, p0, Lcom/mob/commons/cc/w$d;->d:Ljava/util/HashMap;

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lc_t"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    new-instance v0, Lcom/mob/commons/cc/w$b;

    .line 82
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/mob/commons/cc/w$b;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcom/mob/commons/cc/w$1;)V

    goto :goto_6

    :cond_8
    new-instance v0, Lcom/mob/commons/cc/w$a;

    .line 83
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/mob/commons/cc/w$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcom/mob/commons/cc/w$1;)V

    .line 84
    :goto_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 85
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 86
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_c

    :goto_7
    if-ge v5, v1, :cond_a

    .line 87
    new-instance v3, Lcom/mob/commons/cc/x;

    invoke-direct {v3}, Lcom/mob/commons/cc/x;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, v3, Lcom/mob/commons/cc/x;->a:I

    if-eqz v2, :cond_9

    .line 89
    invoke-virtual {v0, v3}, Lcom/mob/commons/cc/w$a;->a(Lcom/mob/commons/cc/x;)V

    .line 90
    :cond_9
    invoke-virtual {v3, v0}, Lcom/mob/commons/cc/x;->a(Lcom/mob/commons/cc/w$a;)V

    .line 91
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 92
    :cond_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v0, 0x27

    if-ne p2, v0, :cond_b

    .line 93
    iget-object p2, p0, Lcom/mob/commons/cc/w$d;->d:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lcmd_t"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    new-array p2, p2, [B

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 96
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/mob/commons/cc/s;->a(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 98
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "data has offset in pos 3"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "data has offset in pos 2"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "data has offset in pos 1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/commons/cc/w$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/cc/t<",
            "TT;>;>;)",
            "Lcom/mob/commons/cc/w$d;"
        }
    .end annotation

    .line 6
    invoke-static {p1, p2}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mob/commons/cc/w$d;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mob/commons/cc/w$d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/mob/commons/cc/w$d;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/mob/commons/cc/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mob/commons/cc/w$d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/mob/commons/cc/w$d;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "UTF-8"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 10
    array-length v4, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mob/commons/cc/w$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Ljava/io/FileInputStream;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_1
    instance-of v4, v3, [B

    if-eqz v4, :cond_2

    .line 15
    new-instance v4, Ljava/io/ByteArrayInputStream;

    check-cast v3, [B

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 17
    invoke-direct {p0, v4, v0}, Lcom/mob/commons/cc/w$d;->a(Ljava/io/InputStream;Ljava/util/ArrayList;)V

    .line 18
    iget-object v3, p0, Lcom/mob/commons/cc/w$d;->d:Ljava/util/HashMap;

    const-string v7, "l_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v2, "program is not string or byte array"

    invoke-direct {v0, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    new-instance v2, Lcom/mob/commons/cc/v;

    iget-object v3, p0, Lcom/mob/commons/cc/w$d;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v3}, Lcom/mob/commons/cc/v;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/mob/commons/cc/w$d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lcom/mob/commons/cc/v;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_3
    instance-of v3, v0, Lcom/mob/commons/cc/u;

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 25
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    new-instance v3, Lcom/mob/commons/cc/u;

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/cc/w$d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/mob/commons/cc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 27
    :cond_6
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
