.class public Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;
.super Landroid/view/TextureView;
.source "JCResizeTextureView.java"


# static fields
.field protected static final b:Ljava/lang/String; = "JCResizeTextureView"


# instance fields
.field protected a:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 4
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", videoHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_1

    :cond_0
    move v8, p2

    move p2, p1

    move p1, v8

    .line 7
    :cond_1
    invoke-static {v2, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    .line 8
    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v3

    if-lez v2, :cond_a

    if-lez v1, :cond_a

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widthMeasureSpec  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "heightMeasureSpec ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_4

    if-ne v4, p1, :cond_4

    mul-int p1, v2, v5

    mul-int p2, v3, v1

    if-ge p1, p2, :cond_2

    .line 15
    div-int v0, p1, v1

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    .line 16
    div-int p1, p2, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    const/high16 p2, -0x80000000

    if-ne v0, p1, :cond_6

    mul-int p1, v3, v1

    .line 17
    div-int/2addr p1, v2

    if-ne v4, p2, :cond_5

    if-le p1, v5, :cond_5

    mul-int v2, v2, v5

    .line 18
    div-int v0, v2, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    move v3, p1

    goto :goto_3

    :cond_6
    if-ne v4, p1, :cond_8

    mul-int p1, v5, v2

    .line 19
    div-int/2addr p1, v1

    if-ne v0, p2, :cond_7

    if-le p1, v3, :cond_7

    mul-int v1, v1, v3

    .line 20
    div-int p1, v1, v2

    goto :goto_0

    :cond_7
    move v0, p1

    :goto_1
    move v3, v5

    goto :goto_3

    :cond_8
    if-ne v4, p2, :cond_9

    if-le v1, v5, :cond_9

    mul-int p1, v5, v2

    .line 21
    div-int/2addr p1, v1

    goto :goto_2

    :cond_9
    move v5, v1

    move p1, v2

    :goto_2
    if-ne v0, p2, :cond_7

    if-le p1, v3, :cond_7

    mul-int v1, v1, v3

    .line 22
    div-int p1, v1, v2

    goto :goto_0

    .line 23
    :cond_a
    :goto_3
    invoke-virtual {p0, v0, v3}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a:Landroid/graphics/Point;

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method
