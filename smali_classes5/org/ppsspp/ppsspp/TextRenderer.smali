.class public Lorg/ppsspp/ppsspp/TextRenderer;
.super Ljava/lang/Object;
.source "TextRenderer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextRenderer"

.field private static bg:Landroid/graphics/Paint;

.field private static p:Landroid/graphics/Paint;

.field private static robotoCondensed:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->bg:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Roboto-Condensed.ttf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lorg/ppsspp/ppsspp/TextRenderer;->robotoCondensed:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    sget-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->robotoCondensed:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private static measure(Ljava/lang/String;D)Landroid/graphics/Point;
    .locals 5

    const-string v0, "\\r"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 5
    invoke-static {v3, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measureLine(Ljava/lang/String;D)Landroid/graphics/Point;

    move-result-object v3

    .line 6
    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    sget-object p2, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    array-length p0, p0

    mul-int p1, p1, p0

    add-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private static measureLine(Ljava/lang/String;D)Landroid/graphics/Point;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 4
    :goto_0
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    sget-object p2, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 5
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 6
    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 7
    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static measureText(Ljava/lang/String;D)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measure(Ljava/lang/String;D)Landroid/graphics/Point;

    move-result-object p0

    .line 2
    iget p1, p0, Landroid/graphics/Point;->x:I

    shl-int/lit8 p1, p1, 0x10

    iget p0, p0, Landroid/graphics/Point;->y:I

    or-int/2addr p0, p1

    return p0
.end method

.method public static renderText(Ljava/lang/String;D)[I
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measure(Ljava/lang/String;D)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, p2

    :goto_0
    if-nez p1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, p1

    .line 4
    :goto_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v7

    int-to-float v4, v8

    .line 6
    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->bg:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v0, "\\r"

    const-string v1, ""

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v4, p0, v1

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 10
    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v3

    sget-object v6, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 11
    :cond_2
    sget-object v4, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    mul-int p0, v7, v8

    .line 12
    new-array p0, p0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v4, v7

    .line 13
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method
