.class public final Lcom/squareup/wire/n$a;
.super Ljava/lang/Object;
.source "ProtoWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\tJ\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "com/squareup/wire/n$a",
        "",
        "",
        "fieldNumber",
        "Lcom/squareup/wire/FieldEncoding;",
        "fieldEncoding",
        "g",
        "tag",
        "h",
        "(I)I",
        "value",
        "f",
        "i",
        "",
        "j",
        "(J)I",
        "n",
        "d",
        "b",
        "e",
        "(J)J",
        "c",
        "<init>",
        "()V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/squareup/wire/n$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/squareup/wire/n$a;ILcom/squareup/wire/FieldEncoding;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/n$a;->g(ILcom/squareup/wire/FieldEncoding;)I

    move-result p0

    return p0
.end method

.method private final g(ILcom/squareup/wire/FieldEncoding;)I
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->getValue$wire_runtime()I

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public final c(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr p1, v2

    neg-long p1, p1

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(I)I
    .locals 1

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    return p1
.end method

.method public final e(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method public final f(I)I
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/n$a;->i(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    return p1
.end method

.method public final h(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/n$a;->g(ILcom/squareup/wire/FieldEncoding;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/n$a;->i(I)I

    move-result p1

    return p1
.end method

.method public final i(I)I
    .locals 1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public final j(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p1, v0

    cmp-long v0, p1, v2

    if-nez v0, :cond_8

    const/16 p1, 0x9

    goto :goto_0

    :cond_8
    const/16 p1, 0xa

    :goto_0
    return p1
.end method
