.class public final Lcom/switfpass/pay/activity/zxing/camera/b;
.super Lcom/google/zxing/LuminanceSource;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0

    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    iput p2, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    iput p3, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->c:I

    iput p4, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->d:I

    iput p5, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    return v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    iget v2, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->e:I

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->d:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v7, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8

    :cond_0
    mul-int v5, v4, v6

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v6, :cond_1

    iget v5, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int v9, v2, v8

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v5, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public final getMatrix()[B
    .locals 7

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->c:I

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    return-object v0

    :cond_0
    mul-int v3, v0, v1

    new-array v4, v3, [B

    iget v5, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->e:I

    mul-int v5, v5, v2

    iget v6, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->d:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    :goto_0
    if-lt v6, v1, :cond_2

    return-object v4

    :cond_2
    mul-int v3, v6, v0

    invoke-static {v2, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public final getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p2, v0, [B

    :cond_1
    iget v1, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->e:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->b:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->d:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/b;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested row is outside the image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
