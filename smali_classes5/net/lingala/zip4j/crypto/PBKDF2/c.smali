.class public Lnet/lingala/zip4j/crypto/PBKDF2/c;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field protected a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

.field protected b:Lnet/lingala/zip4j/crypto/PBKDF2/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 3
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;Lnet/lingala/zip4j/crypto/PBKDF2/f;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 9
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method


# virtual methods
.method protected a([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    const/high16 v1, 0x1000000

    .line 1
    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    .line 2
    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    .line 3
    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    .line 4
    aput-byte p3, p1, p2

    return-void
.end method

.method protected b(Lnet/lingala/zip4j/crypto/PBKDF2/f;[BII)[B
    .locals 17

    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v2, v1, [B

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    move-result v10

    move-object/from16 v11, p0

    .line 2
    invoke-virtual {v11, v0, v10}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->e(II)I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    mul-int v3, v3, v10

    sub-int v13, v0, v3

    mul-int v3, v12, v10

    .line 3
    new-array v14, v3, [B

    const/4 v3, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_1
    if-le v15, v12, :cond_2

    if-ge v13, v10, :cond_1

    .line 4
    new-array v2, v0, [B

    .line 5
    invoke-static {v14, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    return-object v14

    :cond_2
    move-object/from16 v3, p0

    move-object v4, v14

    move/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v2

    move/from16 v8, p3

    move v9, v15

    .line 6
    invoke-virtual/range {v3 .. v9}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c([BILnet/lingala/zip4j/crypto/PBKDF2/f;[BII)V

    add-int v16, v16, v10

    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method protected c([BILnet/lingala/zip4j/crypto/PBKDF2/f;[BII)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    .line 3
    array-length v2, p4

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 4
    array-length v3, p4

    const/4 v4, 0x0

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p4, p4

    invoke-virtual {p0, v2, p4, p6}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a([BII)V

    const/4 p4, 0x0

    :goto_0
    if-lt p4, p5, :cond_0

    .line 6
    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    invoke-interface {p3, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->c([B)[B

    move-result-object v2

    .line 8
    invoke-virtual {p0, v1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->m([B[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method protected d([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/b;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    invoke-interface {v0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->b([B)V

    return-void
.end method

.method protected e(II)I
    .locals 1

    .line 1
    rem-int v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    div-int/2addr p1, p2

    add-int/2addr p1, v0

    return p1
.end method

.method public f([C)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    move-result-object p1

    return-object p1
.end method

.method public g([CI)[B
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lnet/lingala/zip4j/util/f;->c([C)[B

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->d([B)V

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    invoke-interface {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    move-result p2

    .line 5
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e()[B

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b(Lnet/lingala/zip4j/crypto/PBKDF2/f;[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public h()Lnet/lingala/zip4j/crypto/PBKDF2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    return-object v0
.end method

.method public i()Lnet/lingala/zip4j/crypto/PBKDF2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-object v0
.end method

.method public j(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    return-void
.end method

.method public k(Lnet/lingala/zip4j/crypto/PBKDF2/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method

.method public l([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->h()Lnet/lingala/zip4j/crypto/PBKDF2/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v2, v0

    invoke-virtual {p0, p1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    array-length v2, p1

    array-length v3, v0

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method protected m([B[B)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
