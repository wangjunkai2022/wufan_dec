.class public Lcom/facebook/imageformat/a;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.java"

# interfaces
.implements Lcom/facebook/imageformat/c$a;


# static fields
.field private static final b:I = 0x14

.field private static final c:I = 0x15

.field private static final d:[B

.field private static final e:I

.field private static final f:[B

.field private static final g:I

.field private static final h:[B

.field private static final i:[B

.field private static final j:I = 0x6

.field private static final k:[B

.field private static final l:I

.field private static final m:[B

.field private static final n:I

.field private static final o:Ljava/lang/String; = "ftyp"

.field private static final p:[Ljava/lang/String;

.field private static final q:I


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imageformat/a;->d:[B

    .line 2
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/a;->e:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/imageformat/a;->f:[B

    .line 4
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/a;->g:I

    const-string v0, "GIF87a"

    .line 5
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/a;->h:[B

    const-string v0, "GIF89a"

    .line 6
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/a;->i:[B

    const-string v0, "BM"

    .line 7
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/a;->k:[B

    .line 8
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/a;->l:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 9
    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/imageformat/a;->m:[B

    .line 10
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/a;->n:I

    const-string v1, "heic"

    const-string v2, "heix"

    const-string v3, "hevc"

    const-string v4, "hevx"

    const-string v5, "mif1"

    const-string v6, "msf1"

    .line 11
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/a;->p:[Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ftyp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/a;->q:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 2
    sget v1, Lcom/facebook/imageformat/a;->e:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/facebook/imageformat/a;->g:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x6

    aput v2, v0, v1

    sget v1, Lcom/facebook/imageformat/a;->l:I

    const/4 v3, 0x5

    aput v1, v0, v3

    sget v1, Lcom/facebook/imageformat/a;->n:I

    aput v1, v0, v2

    sget v1, Lcom/facebook/imageformat/a;->q:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 3
    invoke-static {v0}, Lcom/facebook/common/internal/f;->a([I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/a;->a:I

    return-void
.end method

.method private static c([BI)Lcom/facebook/imageformat/c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/c;->h([BII)Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 2
    invoke-static {p0, v0}, Lcom/facebook/common/webp/c;->g([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/common/webp/c;->f([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/c;->c([BII)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/common/webp/c;->b([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    sget-object p0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    return-object p0

    .line 9
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/common/webp/c;->d([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    sget-object p0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    return-object p0

    .line 11
    :cond_3
    sget-object p0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    return-object p0

    .line 12
    :cond_4
    sget-object p0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    return-object p0
.end method

.method private static d([BI)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->k:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p0

    return p0
.end method

.method private static e([BI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object p1, Lcom/facebook/imageformat/a;->h:[B

    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/facebook/imageformat/a;->i:[B

    .line 2
    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static f([BI)Z
    .locals 7

    .line 1
    sget v0, Lcom/facebook/imageformat/a;->q:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x3

    .line 2
    aget-byte p1, p0, p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object p1, Lcom/facebook/imageformat/a;->p:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 4
    array-length v4, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftyp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    sget v5, Lcom/facebook/imageformat/a;->q:I

    .line 6
    invoke-static {p0, v4, v3, v5}, Lcom/facebook/imageformat/e;->b([BI[BI)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static g([BI)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->m:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p0

    return p0
.end method

.method private static h([BI)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->d:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 2
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i([BI)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->f:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 2
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->c([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a([BI)Lcom/facebook/imageformat/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/facebook/common/webp/c;->h([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->c([BI)Lcom/facebook/imageformat/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->h([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    return-object p1

    .line 6
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->i([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->e([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    return-object p1

    .line 10
    :cond_3
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object p1, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    return-object p1

    .line 12
    :cond_4
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->g([BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object p1, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    return-object p1

    .line 14
    :cond_5
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->f([BI)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    sget-object p1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    return-object p1

    .line 16
    :cond_6
    sget-object p1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imageformat/a;->a:I

    return v0
.end method
