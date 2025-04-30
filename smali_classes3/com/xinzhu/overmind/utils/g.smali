.class public final Lcom/xinzhu/overmind/utils/g;
.super Ljava/lang/Object;
.source "EncodedBuffer.java"


# static fields
.field private static final l:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunkSize"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    .line 5
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->k:I

    if-gtz p1, :cond_0

    const/16 p1, 0x2000

    .line 6
    :cond_0
    iput p1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    return-void
.end method

.method private static K(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method private static L(J)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "prefix",
            "start",
            "buf"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 3
    rem-int/lit8 v2, v1, 0x10

    const/16 v3, 0x20

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int v2, p2, v1

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 11
    :goto_1
    aget-byte v2, p3, v1

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 12
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 13
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-ge v2, v4, :cond_3

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x57

    int-to-char v2, v2

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "prefix",
            "buf"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/xinzhu/overmind/utils/g;->b(Ljava/lang/String;Ljava/lang/String;I[B)I

    return-void
.end method

.method public static i(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static j(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static k(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/g;->K(I)I

    move-result p0

    invoke-static {p0}, Lcom/xinzhu/overmind/utils/g;->i(I)I

    move-result p0

    return p0
.end method

.method public static l(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/g;->L(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/g;->j(J)I

    move-result p0

    return p0
.end method

.method private s()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    .line 2
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    if-lt v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcOffset",
            "size"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    if-ltz v0, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->r()I

    move-result v0

    const-string v1, " "

    const-string v2, " size="

    if-lt p1, v0, :cond_8

    add-int v0, p1, p2

    .line 3
    iget v3, p0, Lcom/xinzhu/overmind/utils/g;->k:I

    if-gt v0, v3, :cond_7

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_3

    sub-int p1, v1, v3

    if-gt p2, p1, :cond_1

    add-int/2addr v3, p2

    .line 5
    iput v3, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    goto :goto_2

    :cond_1
    sub-int p1, v1, v3

    sub-int/2addr p2, p1

    .line 6
    rem-int p1, p2, v1

    iput p1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    if-nez p1, :cond_2

    .line 7
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    .line 8
    div-int/2addr p2, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    goto :goto_0

    .line 9
    :cond_2
    div-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    iget p2, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    goto :goto_2

    .line 11
    :cond_3
    div-int v0, p1, v1

    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 13
    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr p1, v2

    :goto_1
    if-lez p2, :cond_6

    .line 14
    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    iget v3, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    if-lt v2, v3, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/g;->s()V

    .line 16
    :cond_4
    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    if-lt p1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 17
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    move-object v1, p1

    const/4 p1, 0x0

    .line 18
    :cond_5
    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    iget v3, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    sub-int v3, v2, v3

    sub-int/2addr v2, p1

    .line 19
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 20
    iget-object v3, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    iget v4, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    invoke-static {v1, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v3, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr p1, v2

    sub-int/2addr p2, v2

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move more data than there is -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only move forward in the buffer -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "writeFromThisBuffer before startEditing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public B([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xinzhu/overmind/utils/g;->C([BII)V

    :cond_0
    return-void
.end method

.method public C([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "val",
            "offset",
            "length"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    sub-int v2, v0, v1

    if-ge p3, v2, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    :goto_1
    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    :cond_2
    if-lez p3, :cond_4

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/g;->s()V

    .line 5
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    if-ge p3, v0, :cond_3

    move v0, p3

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public D(B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/g;->s()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public E(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    int-to-byte v0, p1

    .line 1
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    return-void
.end method

.method public F(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    return-void
.end method

.method public G(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public H(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    return-void

    :cond_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/g;->D(B)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public I(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/g;->K(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/g;->G(I)V

    return-void
.end method

.method public J(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/g;->L(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/g;->H(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {p1, v3, v2, v4}, Lcom/xinzhu/overmind/utils/g;->b(Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "val"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int v2, p1, v1

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    div-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr v2, v1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x2

    div-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr v2, v1

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x3

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr p1, v1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public e(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    .line 2
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    div-int v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v5, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v5, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v5, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v1, v1, v5

    sub-int/2addr p1, v1

    if-lez p1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedBuffer( mChunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBuffers.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWriteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWriteBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int v2, p1, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    div-int v1, v3, v1

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr v3, v2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x2

    div-int v2, v3, v2

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr v3, v2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x3

    div-int v2, p1, v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    rem-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public m()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->k:I

    return v0
.end method

.method public o()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    return v0
.end method

.method public r()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public t()B
    .locals 3

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    if-gt v0, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    if-ge v1, v2, :cond_2

    .line 2
    :cond_0
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->g:[B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->g:[B

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    aget-byte v0, v0, v1

    return v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to read too much data mReadBufIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBufferCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReadLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->t()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->t()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->t()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->t()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public v()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->t()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    const/16 v3, 0x40

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Varint too long -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->g:[B

    .line 2
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    .line 3
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    return-void
.end method

.method public x(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writePos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/g;->r()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 2
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    div-int v1, p1, v0

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    .line 3
    rem-int/2addr p1, v0

    iput p1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    .line 4
    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewindWriteTo only can go backwards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    goto :goto_1

    :cond_1
    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    .line 3
    rem-int v1, p1, v0

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    if-nez v1, :cond_2

    .line 4
    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    .line 5
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/g;->g:[B

    :goto_1
    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipRead with negative amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->b:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xinzhu/overmind/utils/g;->k:I

    .line 2
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->j:I

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->d:[B

    .line 4
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->e:I

    .line 5
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->f:I

    .line 6
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/g;->g:[B

    .line 7
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->h:I

    .line 8
    iput v1, p0, Lcom/xinzhu/overmind/utils/g;->i:I

    return-void
.end method
