.class public final Lcom/bytedance/pangle/res/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/res/a/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/pangle/res/a/g;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field private final g:Lcom/bytedance/pangle/res/a/h;

.field private final h:[B

.field private i:Z

.field private j:[I

.field private final k:Lcom/bytedance/pangle/res/a/b$a;

.field private l:Z

.field private m:I

.field private n:[I

.field private o:I


# direct methods
.method public constructor <init>([BLcom/bytedance/pangle/res/a/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->i:Z

    .line 3
    new-instance v1, Lcom/bytedance/pangle/res/a/b$a;

    invoke-direct {v1}, Lcom/bytedance/pangle/res/a/b$a;-><init>()V

    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 4
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->b:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->c:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->d:I

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->f:I

    .line 9
    iput-object p2, p0, Lcom/bytedance/pangle/res/a/b;->g:Lcom/bytedance/pangle/res/a/h;

    .line 10
    iput-object p1, p0, Lcom/bytedance/pangle/res/a/b;->h:[B

    .line 11
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->n:[I

    .line 3
    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    return-void
.end method

.method private d()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->i:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v0

    const v6, 0x80003

    if-eq v0, v6, :cond_1

    const v7, 0x80001

    if-ne v0, v7, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Expected: 0x%08x or 0x%08x, got: 0x%08x"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 8
    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 9
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v0}, Lcom/bytedance/pangle/res/a/l;->a(Lcom/bytedance/pangle/res/a/g;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    .line 11
    iput-boolean v5, p0, Lcom/bytedance/pangle/res/a/b;->i:Z

    .line 12
    :cond_2
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->c:I

    if-ne v0, v6, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    .line 14
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/bytedance/pangle/res/a/b;->l:Z

    if-eqz v6, :cond_5

    .line 15
    iput-boolean v2, p0, Lcom/bytedance/pangle/res/a/b;->l:Z

    .line 16
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 17
    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-eqz v7, :cond_5

    add-int/lit8 v8, v7, -0x1

    .line 18
    iget-object v9, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v9, v9, v8

    sub-int/2addr v8, v5

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    if-eqz v8, :cond_5

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    .line 19
    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    .line 20
    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    sub-int/2addr v7, v5

    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    .line 21
    :cond_5
    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    if-ne v0, v6, :cond_7

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 22
    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    if-ne v7, v5, :cond_7

    .line 23
    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-nez v7, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 24
    iget-object v6, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v6, v6, v7

    :goto_2
    if-nez v6, :cond_7

    .line 25
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->c:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    return-void

    .line 26
    :cond_7
    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->b:I

    const v7, 0x100102

    if-ne v0, v6, :cond_8

    const v6, 0x100102

    goto :goto_3

    .line 27
    :cond_8
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    :goto_3
    const v8, 0x80180

    const-string v9, ")."

    if-ne v6, v8, :cond_a

    .line 28
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    const/16 v7, 0x8

    if-lt v6, v7, :cond_9

    .line 29
    rem-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_9

    .line 30
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v7}, Lcom/bytedance/pangle/res/a/k;->a(Lcom/bytedance/pangle/res/a/g;)I

    move-result v7

    .line 31
    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v6, v3

    invoke-virtual {v8, v6}, Lcom/bytedance/pangle/res/a/g;->a(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/pangle/res/a/b;->j:[I

    const/4 v6, 0x0

    .line 32
    :goto_4
    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->j:[I

    array-length v9, v8

    if-ge v6, v9, :cond_4

    .line 33
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->h:[B

    aget v8, v8, v6

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v7

    iget-object v11, p0, Lcom/bytedance/pangle/res/a/b;->g:Lcom/bytedance/pangle/res/a/h;

    invoke-static {v9, v8, v10, v11}, Lcom/bytedance/pangle/res/a/k;->a([BIILcom/bytedance/pangle/res/a/h;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 34
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid resource ids size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const v8, 0x100100

    if-lt v6, v8, :cond_17

    const v10, 0x100104

    if-gt v6, v10, :cond_17

    if-ne v6, v7, :cond_b

    const/4 v9, -0x1

    if-ne v0, v9, :cond_b

    .line 35
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->b:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    return-void

    .line 36
    :cond_b
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 37
    invoke-virtual {v9, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 38
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v9}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 39
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 40
    invoke-virtual {v9, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    if-eq v6, v8, :cond_14

    const v9, 0x100101

    if-ne v6, v9, :cond_c

    goto/16 :goto_7

    :cond_c
    if-ne v6, v7, :cond_12

    .line 41
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 42
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 43
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 44
    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 45
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v0

    const v6, 0xffff

    and-int/2addr v0, v6

    .line 46
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v7}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v7

    iput v7, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    and-int/2addr v6, v7

    sub-int/2addr v6, v5

    .line 47
    iput v6, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    .line 48
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v6}, Lcom/bytedance/pangle/res/a/k;->a(Lcom/bytedance/pangle/res/a/g;)I

    move-result v6

    .line 49
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    mul-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Lcom/bytedance/pangle/res/a/g;->a(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/pangle/res/a/b;->n:[I

    .line 50
    :goto_5
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->n:[I

    array-length v9, v7

    if-ge v1, v9, :cond_d

    .line 51
    aget v9, v7, v1

    ushr-int/lit8 v9, v9, 0x18

    aput v9, v7, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 52
    :cond_d
    array-length v1, v7

    if-ne v1, v8, :cond_11

    :goto_6
    if-ge v2, v0, :cond_10

    .line 53
    iget-object v1, p0, Lcom/bytedance/pangle/res/a/b;->n:[I

    mul-int/lit8 v7, v2, 0x5

    add-int/lit8 v8, v7, 0x3

    aget v9, v1, v8

    if-eq v9, v5, :cond_e

    aget v8, v1, v8

    if-ne v8, v3, :cond_f

    :cond_e
    add-int/lit8 v7, v7, 0x4

    .line 54
    aget v1, v1, v7

    .line 55
    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->h:[B

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v6

    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->g:Lcom/bytedance/pangle/res/a/h;

    invoke-static {v8, v1, v7, v9}, Lcom/bytedance/pangle/res/a/k;->a([BIILcom/bytedance/pangle/res/a/h;)V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    .line 57
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->d:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    return-void

    .line 58
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    const v7, 0x100103

    if-ne v6, v7, :cond_13

    .line 59
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 60
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 61
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    .line 62
    iput-boolean v5, p0, Lcom/bytedance/pangle/res/a/b;->l:Z

    return-void

    :cond_13
    if-ne v6, v10, :cond_4

    .line 63
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    .line 64
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 65
    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 66
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 67
    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 68
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->f:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I

    return-void

    :cond_14
    :goto_7
    if-ne v6, v8, :cond_16

    .line 69
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    .line 70
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v7}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v7

    .line 71
    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 72
    iget v9, v8, Lcom/bytedance/pangle/res/a/b$a;->c:I

    if-nez v9, :cond_15

    .line 73
    invoke-virtual {v8}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    .line 74
    :cond_15
    invoke-virtual {v8}, Lcom/bytedance/pangle/res/a/b$a;->b()V

    .line 75
    iget v9, v8, Lcom/bytedance/pangle/res/a/b$a;->b:I

    add-int/lit8 v10, v9, -0x1

    .line 76
    iget-object v11, v8, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v12, v11, v10

    add-int/lit8 v13, v10, -0x1

    mul-int/lit8 v14, v12, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v12, v5

    .line 77
    aput v12, v11, v13

    .line 78
    aput v6, v11, v10

    add-int/lit8 v6, v10, 0x1

    .line 79
    aput v7, v11, v6

    add-int/2addr v10, v3

    .line 80
    aput v12, v11, v10

    add-int/2addr v9, v3

    .line 81
    iput v9, v8, Lcom/bytedance/pangle/res/a/b$a;->b:I

    goto/16 :goto_1

    .line 82
    :cond_16
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 83
    invoke-virtual {v6, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 84
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 85
    invoke-virtual {v6, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 86
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 87
    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-eqz v7, :cond_4

    add-int/lit8 v8, v7, -0x1

    .line 88
    iget-object v9, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v10, v9, v8

    if-eqz v10, :cond_4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v8, v8, -0x2

    .line 89
    aput v10, v9, v8

    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v5

    sub-int/2addr v8, v11

    .line 90
    aput v10, v9, v8

    add-int/lit8 v7, v7, -0x2

    .line 91
    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    goto/16 :goto_1

    .line 92
    :cond_17
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid chunk type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->i:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    .line 4
    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->j:[I

    .line 5
    iget-object v1, p0, Lcom/bytedance/pangle/res/a/b;->k:Lcom/bytedance/pangle/res/a/b$a;

    .line 6
    iput v0, v1, Lcom/bytedance/pangle/res/a/b$a;->b:I

    .line 7
    iput v0, v1, Lcom/bytedance/pangle/res/a/b$a;->c:I

    .line 8
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Lcom/bytedance/pangle/res/a/g;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->d()V

    .line 3
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->m:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/b;->a()V

    .line 5
    throw v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parser is not opened."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
