.class public Lcom/join/mgps/activity/screenshot/ImageFactory;
.super Ljava/lang/Object;
.source "ImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compressAndGenImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    if-le v2, p3, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v1, v1, -0xa

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ImageFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    .line 11
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content://"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 16
    invoke-virtual {p0, p5, p2, p3}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ImageFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p0, p5, p2, p3}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :goto_0
    if-eqz p4, :cond_1

    .line 18
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 5
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 7
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public ratio(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 6

    .line 10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x400

    div-int/2addr v1, v2

    if-le v1, v2, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 14
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 15
    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 22
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le p1, v4, :cond_1

    int-to-float v5, p1

    cmpl-float v5, v5, p2

    if-lez v5, :cond_1

    int-to-float p1, p1

    div-float/2addr p1, p2

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_1
    if-ge p1, v4, :cond_2

    int-to-float p1, v4

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    int-to-float p1, v4

    div-float/2addr p1, p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_1
    if-gtz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, p1

    .line 23
    :goto_2
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public ratio(Ljava/lang/String;FF)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 7
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    int-to-float p3, v2

    div-float/2addr p3, p2

    float-to-int p2, p3

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float p2, v3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    int-to-float p2, v3

    div-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, p2

    .line 8
    :goto_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public ratioAndGenThumb(Landroid/graphics/Bitmap;Ljava/lang/String;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/join/mgps/activity/screenshot/ImageFactory;->ratio(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/screenshot/ImageFactory;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public ratioAndGenThumb(Ljava/lang/String;Ljava/lang/String;FFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Lcom/join/mgps/activity/screenshot/ImageFactory;->ratio(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p3, p2}, Lcom/join/mgps/activity/screenshot/ImageFactory;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method
