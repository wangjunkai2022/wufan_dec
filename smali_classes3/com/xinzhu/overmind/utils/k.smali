.class public Lcom/xinzhu/overmind/utils/k;
.super Ljava/lang/Object;
.source "HexEncoding.java"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xinzhu/overmind/utils/k;->a:[C

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xinzhu/overmind/utils/k;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/xinzhu/overmind/utils/k;->c([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoded",
            "allowSingleChar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/k;->d([CZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([C)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/k;->d([CZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([CZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoded",
            "allowSingleChar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 2
    div-int/lit8 v1, v1, 0x2

    .line 3
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 4
    rem-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0, v2}, Lcom/xinzhu/overmind/utils/k;->l([CI)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    rem-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_3

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 p1, v3, 0x1

    .line 7
    invoke-static {p0, v2}, Lcom/xinzhu/overmind/utils/k;->l([CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v5}, Lcom/xinzhu/overmind/utils/k;->l([CI)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    move v3, p1

    goto :goto_0

    :cond_2
    return-object v1

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input length: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static e([B)[C
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/xinzhu/overmind/utils/k;->g([BIIZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static f([BII)[C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "len"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/xinzhu/overmind/utils/k;->g([BIIZ)[C

    move-result-object p0

    return-object p0
.end method

.method private static g([BIIZ)[C
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "len",
            "upperCase"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/xinzhu/overmind/utils/k;->b:[C

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/xinzhu/overmind/utils/k;->a:[C

    :goto_0
    mul-int/lit8 v0, p2, 0x2

    .line 2
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    .line 3
    aget-byte v2, p0, v2

    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 4
    aget-char v4, p3, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 5
    aget-char v2, p3, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static h([BZ)[C
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "upperCase"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/xinzhu/overmind/utils/k;->g([BIIZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static i(BZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "upperCase"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/xinzhu/overmind/utils/k;->b:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xinzhu/overmind/utils/k;->a:[C

    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 2
    aget-char v2, p1, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/4 v2, 0x1

    and-int/lit8 p0, p0, 0xf

    .line 3
    aget-char p0, p1, p0

    aput-char p0, v1, v2

    .line 4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static j([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/k;->k([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k([BZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "upperCase"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/k;->h([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static l([CI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    aget-char v0, p0, p1

    const/16 v1, 0x30

    if-gt v1, v0, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v2, 0x66

    if-gt v0, v2, :cond_1

    :goto_0
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v1, 0x41

    if-gt v1, v0, :cond_2

    const/16 v2, 0x46

    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
