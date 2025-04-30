.class public Lcom/join/mgps/Util/o1;
.super Ljava/lang/Object;
.source "PictureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/o1;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_2

    move p0, p2

    :cond_2
    :goto_1
    return p0
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    const v3, 0x19000

    if-le v1, v3, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static g(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    const/16 v1, 0xa

    :try_start_0
    new-array v2, v1, [B

    .line 1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    .line 2
    aget-byte p0, v2, p0

    const/4 v1, 0x1

    .line 3
    aget-byte v1, v2, v1

    const/4 v3, 0x2

    .line 4
    aget-byte v3, v2, v3

    const/4 v4, 0x3

    .line 5
    aget-byte v4, v2, v4

    const/4 v5, 0x6

    .line 6
    aget-byte v5, v2, v5

    const/4 v6, 0x7

    .line 7
    aget-byte v6, v2, v6

    const/16 v7, 0x8

    .line 8
    aget-byte v7, v2, v7

    const/16 v8, 0x9

    .line 9
    aget-byte v2, v2, v8

    const/16 v8, 0x49

    const/16 v9, 0x47

    const/16 v10, 0x46

    if-ne p0, v9, :cond_0

    if-ne v1, v8, :cond_0

    if-ne v3, v10, :cond_0

    const-string p0, "GIF"

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/16 p0, 0x50

    if-ne v1, p0, :cond_1

    const/16 p0, 0x4e

    if-ne v3, p0, :cond_1

    if-ne v4, v9, :cond_1

    const-string p0, "PNG"

    goto :goto_0

    :cond_1
    const/16 p0, 0x4a

    if-ne v5, p0, :cond_2

    if-ne v6, v10, :cond_2

    if-ne v7, v8, :cond_2

    if-ne v2, v10, :cond_2

    const-string p0, "JPEG"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x41600000    # 14.0f

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/o1;->i(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    new-instance v4, Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1000000

    .line 8
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    .line 4
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/o1;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x44400000    # 768.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float v2, v3

    const/high16 v4, 0x44800000    # 1024.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    int-to-float v2, v3

    div-float/2addr v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 7
    :goto_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 9
    iput-boolean p0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-object p0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 12
    throw p0

    .line 13
    :catch_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_2
    return-object v1
.end method

.method public static m(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v4, v3

    if-gt v4, p1, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v4, v3

    if-gt v4, p2, :cond_0

    .line 8
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v3

    .line 9
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int p2, v3

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 10
    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static n(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/o1;->o(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method public static o(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/join/mgps/Util/o1;->p(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public static p(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 8
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_2

    .line 11
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public static q(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, p1, v0, v1}, Lcom/join/mgps/Util/o1;->p(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Lcom/join/mgps/Util/o1;->l(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_0

    .line 8
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_0
    :goto_2
    throw p0

    :cond_1
    :goto_3
    return-void
.end method
