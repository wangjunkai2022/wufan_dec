.class public Lcom/papa91/common/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static chinaCollator:Ljava/text/Collator;

.field static context:Landroid/content/Context;

.field static mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/FileUtil;->chinaCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Unzip(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x1000

    new-array v0, p0, [B

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_1
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 13
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static getIndexFile(Ljava/lang/String;I)[B
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v2, p1, :cond_0

    :try_start_1
    new-array v5, v5, [B

    .line 2
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    .line 3
    aget-byte v7, v5, p0

    .line 4
    aget-byte v6, v5, v6

    .line 5
    aget-byte v4, v5, v4

    .line 6
    aget-byte v3, v5, v3

    and-int/lit16 v5, v7, 0xff

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-long v3, v3

    .line 7
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v5, [B

    .line 8
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 9
    aget-byte v2, p1, p0

    .line 10
    aget-byte v5, p1, v6

    .line 11
    aget-byte v4, p1, v4

    .line 12
    aget-byte p1, p1, v3

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v5, 0xff

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr p1, v2

    .line 13
    new-array v2, p1, [B

    .line 14
    invoke-virtual {v1, v2, p0, p1}, Ljava/io/InputStream;->read([BII)I

    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 16
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-object v0
.end method

.method public static listSortedEnFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lcom/papa91/common/FileWrapper;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/papa91/common/FileWrapper;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/papa91/common/FileWrapper;-><init>(Ljava/io/File;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static listSortedFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/common/FileUtil;->listSortedEnFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static setMode(Landroid/content/Context;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput p1, Lcom/papa91/common/FileUtil;->mode:I

    return-void
.end method
