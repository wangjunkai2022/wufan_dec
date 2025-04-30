.class public Lcom/join/android/app/common/utils/b;
.super Ljava/lang/Object;
.source "BitMapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 3
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v3, v0

    move v5, v3

    const/4 v4, 0x0

    goto :goto_0

    .line 4
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-int v4, v0, v1

    .line 5
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v5, v1

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    .line 6
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 9
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v9, v2

    float-to-int v3, v3

    float-to-int v10, v5

    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v2, v2

    float-to-int v9, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v4, -0xbdbdbe

    .line 14
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    invoke-virtual {v6, p0, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static b(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 5
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v3, v0

    move v5, v3

    const/4 v4, 0x0

    goto :goto_0

    .line 6
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-int v4, v0, v1

    .line 7
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v5, v1

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    .line 8
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 11
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v9, v2

    float-to-int v3, v3

    float-to-int v10, v5

    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v2, v2

    float-to-int v9, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 14
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v4, -0xbdbdbe

    .line 16
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 19
    invoke-virtual {v6, p1, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
