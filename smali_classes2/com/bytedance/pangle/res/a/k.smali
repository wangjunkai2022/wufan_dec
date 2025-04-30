.class public final Lcom/bytedance/pangle/res/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/bytedance/pangle/res/a/g;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/bytedance/pangle/res/a/f;->a:Lcom/bytedance/pangle/res/a/i;

    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/i;->a()Lcom/bytedance/pangle/res/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/e;->b()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static a([BIILcom/bytedance/pangle/res/a/h;)V
    .locals 1

    const/high16 v0, 0x7f000000

    if-lt p1, v0, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lcom/bytedance/pangle/res/a/h;->a(I)I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/bytedance/pangle/res/a/k;->a(I)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    aget-byte p3, p1, p3

    aput-byte p3, p0, p2

    add-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    .line 5
    aget-byte v0, p1, v0

    aput-byte v0, p0, p3

    add-int/lit8 p3, p2, 0x2

    const/4 v0, 0x2

    .line 6
    aget-byte v0, p1, v0

    aput-byte v0, p0, p3

    const/4 p3, 0x3

    add-int/2addr p2, p3

    .line 7
    aget-byte p1, p1, p3

    aput-byte p1, p0, p2

    :cond_0
    return-void
.end method

.method static a([BLcom/bytedance/pangle/res/a/h;)V
    .locals 3

    .line 8
    new-instance v0, Lcom/bytedance/pangle/res/a/b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/pangle/res/a/b;-><init>([BLcom/bytedance/pangle/res/a/h;)V

    .line 9
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b;->a()V

    .line 11
    new-instance p0, Lcom/bytedance/pangle/res/a/g;

    new-instance v1, Lcom/bytedance/pangle/res/a/i;

    new-instance v2, Lcom/bytedance/pangle/res/a/e;

    invoke-direct {v2, p1}, Lcom/bytedance/pangle/res/a/e;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/bytedance/pangle/res/a/i;-><init>(Lcom/bytedance/pangle/res/a/e;)V

    invoke-direct {p0, v1}, Lcom/bytedance/pangle/res/a/g;-><init>(Lcom/bytedance/pangle/res/a/i;)V

    iput-object p0, v0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b;->b()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return-void
.end method

.method private static a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method
