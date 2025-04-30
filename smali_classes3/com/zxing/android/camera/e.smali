.class public final Lcom/zxing/android/camera/e;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_1

    add-int v0, p5, p7

    if-gt v0, p3, :cond_1

    .line 2
    iput-object p1, p0, Lcom/zxing/android/camera/e;->a:[B

    .line 3
    iput p2, p0, Lcom/zxing/android/camera/e;->b:I

    .line 4
    iput p3, p0, Lcom/zxing/android/camera/e;->c:I

    .line 5
    iput p4, p0, Lcom/zxing/android/camera/e;->d:I

    .line 6
    iput p5, p0, Lcom/zxing/android/camera/e;->e:I

    if-eqz p8, :cond_0

    .line 7
    invoke-direct {p0, p6, p7}, Lcom/zxing/android/camera/e;->b(II)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/e;->a:[B

    .line 2
    iget v1, p0, Lcom/zxing/android/camera/e;->e:I

    iget v2, p0, Lcom/zxing/android/camera/e;->b:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/zxing/android/camera/e;->d:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    .line 4
    aget-byte v6, v0, v5

    .line 5
    aget-byte v7, v0, v4

    aput-byte v7, v0, v5

    .line 6
    aput-byte v6, v0, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 7
    iget v3, p0, Lcom/zxing/android/camera/e;->b:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v6

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 3
    new-array v1, v0, [I

    .line 4
    iget-object v0, p0, Lcom/zxing/android/camera/e;->a:[B

    .line 5
    iget v2, p0, Lcom/zxing/android/camera/e;->e:I

    iget v3, p0, Lcom/zxing/android/camera/e;->b:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/zxing/android/camera/e;->d:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    mul-int v5, v4, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int v9, v2, v8

    .line 6
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v5, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    .line 7
    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8
    :cond_0
    iget v5, p0, Lcom/zxing/android/camera/e;->b:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method

.method public getMatrix()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/zxing/android/camera/e;->b:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/zxing/android/camera/e;->c:I

    if-ne v1, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/zxing/android/camera/e;->a:[B

    return-object v0

    :cond_0
    mul-int v3, v0, v1

    .line 5
    new-array v4, v3, [B

    .line 6
    iget v5, p0, Lcom/zxing/android/camera/e;->e:I

    mul-int v5, v5, v2

    iget v6, p0, Lcom/zxing/android/camera/e;->d:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/zxing/android/camera/e;->a:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/zxing/android/camera/e;->a:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v3, v6, v0

    .line 9
    invoke-static {v2, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v3, p0, Lcom/zxing/android/camera/e;->b:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 3
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 4
    :cond_0
    new-array p2, v0, [B

    .line 5
    :cond_1
    iget v1, p0, Lcom/zxing/android/camera/e;->e:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/zxing/android/camera/e;->b:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/zxing/android/camera/e;->d:I

    add-int/2addr p1, v1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/zxing/android/camera/e;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p2

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
