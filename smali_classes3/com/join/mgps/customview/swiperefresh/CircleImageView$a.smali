.class Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/swiperefresh/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/RadialGradient;

.field private b:Landroid/graphics/Paint;

.field final synthetic c:Lcom/join/mgps/customview/swiperefresh/CircleImageView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/CircleImageView;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->b:Landroid/graphics/Paint;

    .line 4
    iput p2, p1, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->e:I

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 1
    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v2, p1

    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    iget p1, p1, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->e:I

    int-to-float v3, p1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->a:Landroid/graphics/RadialGradient;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->a(I)V

    return-void
.end method
