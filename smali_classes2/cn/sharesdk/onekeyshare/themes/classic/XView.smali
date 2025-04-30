.class public Lcn/sharesdk/onekeyshare/themes/classic/XView;
.super Landroid/view/View;
.source "XView.java"


# instance fields
.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 3
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    .line 4
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0x5f5f60

    .line 5
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v2

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 8
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget v3, v0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, -0x1

    .line 10
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget v3, v0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    add-float v4, v1, v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v13, v5, v3

    sub-float/2addr v1, v3

    move-object/from16 v10, p1

    move v11, v4

    move v12, v3

    move v14, v1

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v13, v5, v3

    move v12, v1

    move v14, v3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    return-void
.end method
