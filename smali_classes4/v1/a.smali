.class public Lv1/a;
.super Ljava/lang/Object;
.source "QRCodeUtil.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 3
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v7, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int v0, p1, p2

    .line 5
    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_2

    .line 6
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int v5, v2, p1

    add-int/2addr v5, v4

    const/high16 v6, -0x1000000

    .line 7
    aput v6, v3, v5

    goto :goto_2

    :cond_1
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    const/4 v6, -0x1

    .line 8
    aput v6, v3, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p1

    move v8, p1

    move v9, p2

    .line 10
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    .line 2
    invoke-static {p1, v0}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    sput v2, Lv1/a;->a:I

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lv1/a;->b:I

    .line 4
    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 5
    sget-object p1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v0, "utf-8"

    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    sget v5, Lv1/a;->a:I

    sget v6, Lv1/a;->b:I

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 7
    sget p1, Lv1/a;->a:I

    sget v0, Lv1/a;->b:I

    mul-int p1, p1, v0

    new-array v3, p1, [I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_0
    sget v2, Lv1/a;->b:I

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    .line 9
    :goto_1
    sget v4, Lv1/a;->a:I

    if-ge v2, v4, :cond_2

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    sget v4, Lv1/a;->a:I

    mul-int v4, v4, v0

    add-int/2addr v4, v2

    const/high16 v5, -0x1000000

    aput v5, v3, v4

    goto :goto_2

    .line 12
    :cond_1
    sget v4, Lv1/a;->a:I

    mul-int v4, v4, v0

    add-int/2addr v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    sget p0, Lv1/a;->a:I

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    .line 14
    sget v8, Lv1/a;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v9, Lv1/a;->b:I

    move-object v2, v1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method
