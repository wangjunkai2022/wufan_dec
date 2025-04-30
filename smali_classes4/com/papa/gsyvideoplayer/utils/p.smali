.class public Lcom/papa/gsyvideoplayer/utils/p;
.super Ljava/lang/Object;
.source "RawDataSourceProvider.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private a:Landroid/content/res/AssetFileDescriptor;

.field private b:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/p;->a:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/papa/gsyvideoplayer/utils/p;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/papa/gsyvideoplayer/utils/p;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/utils/p;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/p;->a:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/p;->a:Landroid/content/res/AssetFileDescriptor;

    .line 4
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/p;->b:[B

    return-void
.end method

.method public getSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/p;->a:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/p;->b:[B

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/p;->a:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/papa/gsyvideoplayer/utils/p;->b(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/p;->b:[B

    :cond_0
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    .line 1
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/p;->b:[B

    array-length v3, v2

    int-to-long v3, v3

    const/4 v5, -0x1

    cmp-long v6, v0, v3

    if-ltz v6, :cond_0

    return v5

    :cond_0
    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 2
    array-length v3, v2

    int-to-long v3, v3

    cmp-long v6, v0, v3

    if-gez v6, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    array-length p5, v2

    int-to-long v0, p5

    sub-long/2addr v0, p1

    long-to-int p5, v0

    .line 4
    array-length v0, p3

    if-le p5, v0, :cond_2

    .line 5
    array-length p5, p3

    :cond_2
    add-int/2addr p5, v5

    :goto_0
    long-to-int p2, p1

    .line 6
    invoke-static {v2, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method
