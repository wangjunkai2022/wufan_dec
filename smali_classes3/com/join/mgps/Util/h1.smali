.class public Lcom/join/mgps/Util/h1;
.super Ljava/lang/Object;
.source "NumberChangeToChinese.java"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[C

.field public static c:[Ljava/lang/String;

.field public static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/h1;->a:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/join/mgps/Util/h1;->b:[C

    const-string v0, ""

    const-string v1, "\u4e07"

    const-string v2, "\u4ebf"

    const-string v3, "\u4e07\u4ebf"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/join/mgps/Util/h1;->c:[Ljava/lang/String;

    const-string v1, "\u5341"

    const-string v2, "\u767e"

    const-string v3, "\u5343"

    .line 4
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/h1;->d:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        -0x690as
        0x4e00s
        0x4e8cs
        0x4e09s
        0x56dbs
        0x4e94s
        0x516ds
        0x4e03s
        0x516bs
        0x4e5ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, "\u96f6"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lez p0, :cond_4

    .line 4
    rem-int/lit16 v5, p0, 0x2710

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/Util/h1;->a:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v5, v1}, Lcom/join/mgps/Util/h1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_2

    .line 7
    sget-object v3, Lcom/join/mgps/Util/h1;->c:[Ljava/lang/String;

    aget-object v3, v3, v4

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_2
    sget-object v3, Lcom/join/mgps/Util/h1;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-ge v5, v1, :cond_3

    if-lez v5, :cond_3

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 12
    :goto_2
    div-int/lit16 p0, p0, 0x2710

    add-int/lit8 v4, v4, 0x1

    const-string v1, ""

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-lez p0, :cond_2

    .line 2
    rem-int/lit8 v4, p0, 0xa

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/Util/h1;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    goto :goto_1

    .line 4
    :cond_0
    sget-object v3, Lcom/join/mgps/Util/h1;->a:[Ljava/lang/String;

    aget-object v3, v3, v4

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/join/mgps/Util/h1;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 7
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_2
    return-object p1
.end method
