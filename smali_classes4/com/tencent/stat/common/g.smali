.class public Lcom/tencent/stat/common/g;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/tencent/stat/common/g;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .locals 2

    new-instance v0, Lcom/tencent/stat/common/i;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/tencent/stat/common/i;-><init>(I[B)V

    const/4 p3, 0x1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/stat/common/i;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/tencent/stat/common/h;->b:I

    iget-object p1, v0, Lcom/tencent/stat/common/h;->a:[B

    array-length p2, p1

    if-ne p0, p2, :cond_0

    return-object p1

    :cond_0
    new-array p2, p0, [B

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/tencent/stat/common/g;->b([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([BIII)[B
    .locals 5

    new-instance v0, Lcom/tencent/stat/common/j;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/tencent/stat/common/j;-><init>(I[B)V

    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    iget-boolean v1, v0, Lcom/tencent/stat/common/j;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_3

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_0
    rem-int/lit8 v1, p2, 0x3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x2

    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/tencent/stat/common/j;->e:Z

    if-eqz v1, :cond_5

    if-lez p2, :cond_5

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/tencent/stat/common/j;->f:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    mul-int v1, v1, v2

    add-int/2addr p3, v1

    :cond_5
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/tencent/stat/common/h;->a:[B

    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/tencent/stat/common/j;->a([BIIZ)Z

    sget-boolean p0, Lcom/tencent/stat/common/g;->a:Z

    if-nez p0, :cond_7

    iget p0, v0, Lcom/tencent/stat/common/h;->b:I

    if-ne p0, p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    iget-object p0, v0, Lcom/tencent/stat/common/h;->a:[B

    return-object p0
.end method
