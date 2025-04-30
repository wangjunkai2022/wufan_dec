.class public Lcom/join/mgps/Util/j;
.super Ljava/lang/Object;
.source "Base62.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/j$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x100

.field private static final d:I = 0x3e


# instance fields
.field private final a:[B

.field private b:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/j;->a:[B

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/j;->e()V

    return-void
.end method

.method private a([BII)[B
    .locals 7

    .line 1
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Lcom/join/mgps/Util/j;->h(III)I

    move-result v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p1

    .line 3
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_3

    .line 4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v4, v0

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v4, 0x0

    .line 5
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 6
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    mul-int v4, v4, p2

    add-int/2addr v5, v4

    .line 7
    rem-int v4, v5, p3

    sub-int/2addr v5, v4

    div-int/2addr v5, p3

    .line 8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-gtz v6, :cond_0

    if-lez v5, :cond_1

    .line 9
    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 12
    :goto_2
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-ge p2, p3, :cond_4

    aget-byte p3, p1, p2

    if-nez p3, :cond_4

    .line 13
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/Util/j;->j([B)[B

    move-result-object p1

    return-object p1
.end method

.method public static b()Lcom/join/mgps/Util/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j;->c()Lcom/join/mgps/Util/j;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/join/mgps/Util/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/j;

    invoke-static {}, Lcom/join/mgps/Util/j$a;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/Util/j;-><init>([B)V

    return-object v0
.end method

.method public static d()Lcom/join/mgps/Util/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/j;

    invoke-static {}, Lcom/join/mgps/Util/j$a;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/Util/j;-><init>([B)V

    return-object v0
.end method

.method private e()V
    .locals 4

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1
    iput-object v0, p0, Lcom/join/mgps/Util/j;->b:[B

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/Util/j;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/Util/j;->b:[B

    aget-byte v1, v1, v0

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h(III)I
    .locals 2

    int-to-double v0, p2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    int-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr v0, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private j([B)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 3
    aget-byte v4, p1, v2

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private k([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte v2, p1, v1

    aget-byte v2, p2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public f([B)[B
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/j;->i([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/j;->b:[B

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/j;->k([B[B)[B

    move-result-object p1

    const/16 v0, 0x3e

    const/16 v1, 0x100

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/Util/j;->a([BII)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input is not encoded correctly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g([B)[B
    .locals 2

    const/16 v0, 0x100

    const/16 v1, 0x3e

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/Util/j;->a([BII)[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/j;->a:[B

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/j;->k([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public i([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-byte v3, p1, v2

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1

    const/16 v4, 0x39

    if-ge v4, v3, :cond_3

    :cond_1
    const/16 v4, 0x61

    if-gt v4, v3, :cond_2

    const/16 v4, 0x7a

    if-ge v4, v3, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-gt v4, v3, :cond_4

    const/16 v4, 0x5a

    if-ge v4, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
