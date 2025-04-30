.class public final Lcom/alipay/sdk/packet/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/e;->a:Z

    .line 3
    invoke-static {}, Lcom/alipay/sdk/util/j;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%05d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static varargs g([[B)[B
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    :try_start_2
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 5
    aget-object v5, p0, v4

    array-length v5, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%05d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 7
    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    nop

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catch_2
    move-object v2, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_2
    if-eqz v0, :cond_2

    .line 12
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 13
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 14
    :catch_4
    :cond_3
    throw p0

    :catch_5
    move-object v1, v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_4

    .line 15
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    nop

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 16
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_5
    :goto_6
    return-object v0
.end method

.method private static h(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->d(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/alipay/sdk/packet/c;)Lcom/alipay/sdk/packet/b;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p1, Lcom/alipay/sdk/packet/c;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x5

    :try_start_1
    new-array v3, v2, [B

    .line 2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4
    new-array v3, v3, [B

    .line 5
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v2, v2, [B

    .line 7
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    new-array v2, v2, [B

    .line 10
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 11
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/e;->a:Z

    if-eqz v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/sdk/encrypt/e;->d(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 13
    :cond_0
    iget-boolean p1, p1, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-static {v2}, Lcom/alipay/sdk/encrypt/c;->b([B)[B

    move-result-object v2

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 16
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-object v4, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 18
    :catch_3
    :cond_3
    throw p1

    :catch_4
    move-object v1, v0

    move-object v4, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 19
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_4
    move-object p1, v0

    :goto_3
    if-nez v4, :cond_5

    if-nez p1, :cond_5

    return-object v0

    .line 20
    :cond_5
    new-instance v0, Lcom/alipay/sdk/packet/b;

    invoke-direct {v0, v4, p1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/c;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/c;->a([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 4
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/sdk/packet/e;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/cons/a;->b:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 6
    iget-object v5, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [[B

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    aput-object p1, v5, v4

    .line 7
    invoke-static {v5}, Lcom/alipay/sdk/packet/e;->g([[B)[B

    move-result-object p1

    goto :goto_1

    :cond_2
    new-array v2, v4, [[B

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    .line 8
    invoke-static {v2}, Lcom/alipay/sdk/packet/e;->g([[B)[B

    move-result-object p1

    .line 9
    :goto_1
    new-instance v0, Lcom/alipay/sdk/packet/c;

    invoke-direct {v0, p2, p1}, Lcom/alipay/sdk/packet/c;-><init>(Z[B)V

    return-object v0
.end method
