.class public Lcom/join/mgps/customview/HistogramView;
.super Landroid/view/View;
.source "HistogramView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:D

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->j:Z

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/HistogramView;->k:Landroid/os/Handler;

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->j:Z

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/HistogramView;->k:Landroid/os/Handler;

    const/16 p2, 0x14

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    return-void
.end method

.method private a(Landroid/graphics/Paint;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/customview/HistogramView;->k:Landroid/os/Handler;

    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    int-to-long v0, v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    if-nez p2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->n:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->a:I

    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    int-to-float v3, v3

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    if-nez p2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->n:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->a:I

    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/HistogramView;->n:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->a:I

    div-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, -0x1

    int-to-float v7, v1

    int-to-float v8, p2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    int-to-float v9, v0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/HistogramView;->j:Z

    return v0
.end method

.method public getAnimRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    return v0
.end method

.method public getProgress()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->i:D

    return-wide v0
.end method

.method public getRateBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRateBackgroundId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->d:I

    return v0
.end method

.method public getRateHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    return v0
.end method

.method public getRateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getRateWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->n:Landroid/graphics/Canvas;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/customview/HistogramView;->j:Z

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/HistogramView;->a(Landroid/graphics/Paint;Z)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->a:I

    .line 3
    iget p3, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    if-nez p3, :cond_0

    int-to-double p3, p1

    .line 4
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->i:D

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    double-to-int p1, p3

    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    goto :goto_0

    :cond_0
    int-to-double p2, p2

    .line 6
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->i:D

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    iget v2, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    if-gt v1, v2, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    if-gt v0, v1, :cond_1

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->k:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    :goto_0
    return-void
.end method

.method public setAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->j:Z

    return-void
.end method

.method public setAnimRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->l:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    return-void
.end method

.method public setProgress(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/HistogramView;->i:D

    return-void
.end method

.method public setRateBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->d:I

    return-void
.end method

.method public setRateBackgroundId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->d:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->c:Ljava/lang/String;

    return-void
.end method

.method public setRateHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    return-void
.end method

.method public setRateView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->b:Landroid/view/View;

    return-void
.end method

.method public setRateWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    return-void
.end method
