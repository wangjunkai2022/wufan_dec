.class public Lnet/bither/util/NativeUtil;
.super Ljava/lang/Object;
.source "NativeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bither/util/NativeUtil$a;
    }
.end annotation


# static fields
.field private static a:I = 0x5f

.field public static b:J = 0x4ccccL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpegbither"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "bitherjni"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    invoke-static {v0, p1, p2, p3}, Lnet/bither/util/NativeUtil;->g(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget v0, Lnet/bither/util/NativeUtil;->a:I

    invoke-static {p0, v0, p1, p2}, Lnet/bither/util/NativeUtil;->a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLnet/bither/util/NativeUtil$a;)V
    .locals 6

    const-string v0, "NativeUtil"

    const-string v1, "compressImage"

    :try_start_0
    const-string v2, "-->start"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const-string v2, "content://"

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4
    invoke-static {v2, p0}, Lcom/join/mgps/Util/f0;->o(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/bither/util/NativeUtil;->f(Ljava/io/File;)J

    move-result-wide v2

    .line 8
    sget-wide v4, Lnet/bither/util/NativeUtil;->b:J

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    const-string p0, "Na  tiveUtil"

    const-string p3, "-->smaller"

    .line 9
    filled-new-array {p0, v1, p3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 10
    invoke-static {p1, p2}, Lnet/bither/util/NativeUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_7

    .line 11
    invoke-interface {p5, p1}, Lnet/bither/util/NativeUtil$a;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    const-string p0, "-->need compress"

    .line 12
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 13
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v3, 0x1

    .line 15
    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 16
    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const v3, 0x19000

    new-array v3, v3, [B

    .line 17
    iput-object v3, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 18
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 19
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "-->get bitmap"

    .line 21
    filled-new-array {v0, v1, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 22
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v3, p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string p0, "-->get bitmap finished"

    .line 24
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v3

    .line 26
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    .line 27
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    const-string p0, "-->bitmap is null"

    .line 28
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "-->do native compress"

    .line 29
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 30
    invoke-static {v3, p3, p2, p4}, Lnet/bither/util/NativeUtil;->a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    const-string p0, "-->do native compress finished"

    .line 31
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_5

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string p0, "-->compress finished, notify gc"

    .line 35
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    :cond_5
    if-eqz p5, :cond_7

    .line 36
    invoke-interface {p5, p1}, Lnet/bither/util/NativeUtil$a;->onSuccess(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v3, :cond_6

    .line 37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 38
    :cond_6
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p5, :cond_7

    .line 40
    invoke-interface {p5, p1}, Lnet/bither/util/NativeUtil$a;->onFailed(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private static native compressBitmap(Landroid/graphics/Bitmap;III[BZ)Ljava/lang/String;
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x5a4

    new-array p1, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(I)V

    .line 7
    invoke-virtual {p0, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u590d\u5236\u5355\u4e2a\u6587\u4ef6\u64cd\u4f5c\u51fa\u9519"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 5
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 8
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v4, :cond_2

    .line 9
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1400

    new-array v7, v7, [B

    .line 12
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 13
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 16
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 17
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/bither/util/NativeUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 19
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "fail to copy all files of dir."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public static f(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, p0

    .line 4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-wide v1, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 7
    :cond_0
    throw p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    :goto_2
    return-wide v1
.end method

.method private static g(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v0, p0

    move v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lnet/bither/util/NativeUtil;->compressBitmap(Landroid/graphics/Bitmap;III[BZ)Ljava/lang/String;

    return-void
.end method
