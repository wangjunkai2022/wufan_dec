.class public Lcom/tencent/cos/utils/FolderUtils;
.super Ljava/lang/Object;
.source "FolderUtils.java"


# static fields
.field private static InValidChar:[C

.field private static final RESERVERED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x9

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    const-string v1, "con"

    const-string v2, "aux"

    const-string v3, "nul"

    const-string v4, "prn"

    const-string v5, "com0"

    const-string v6, "com1"

    const-string v7, "com2"

    const-string v8, "com3"

    const-string v9, "com4"

    const-string v10, "com5"

    const-string v11, "com6"

    const-string v12, "com7"

    const-string v13, "com8"

    const-string v14, "com9"

    const-string v15, "lpt0"

    const-string v16, "lpt1"

    const-string v17, "lpt2"

    const-string v18, "lpt3"

    const-string v19, "lpt4"

    const-string v20, "lpt5"

    const-string v21, "lpt6"

    const-string v22, "lpt7"

    const-string v23, "lpt8"

    const-string v24, "lpt9"

    .line 2
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x2fs
        0x3fs
        0x2as
        0x3as
        0x7cs
        0x5cs
        0x3cs
        0x3es
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasInValidChar(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    sget-object v3, Lcom/tencent/cos/utils/FolderUtils;->InValidChar:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isReservedStr(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    sget-object v3, Lcom/tencent/cos/utils/FolderUtils;->RESERVERED:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isValidFolder(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->hasInValidChar(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isReservedStr(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidPath(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3
    array-length v4, v3

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    if-eqz v2, :cond_3

    add-int/lit8 p0, v4, -0x1

    .line 6
    aget-object p0, v3, p0

    invoke-static {p0}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 v1, v4, -0x1

    if-ge p0, v1, :cond_7

    .line 7
    aget-object v1, v3, p0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p0, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    aget-object v1, v3, p0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-lez p0, :cond_5

    return v0

    .line 9
    :cond_5
    aget-object v1, v3, p0

    invoke-static {v1}, Lcom/tencent/cos/utils/FolderUtils;->isValidFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_7
    return v5
.end method
