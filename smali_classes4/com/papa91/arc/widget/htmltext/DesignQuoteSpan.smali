.class public Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;
.super Ljava/lang/Object;
.source "DesignQuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private backgroundColor:I

.field private gap:F

.field private stripColor:I

.field private stripeWidth:F


# direct methods
.method constructor <init>(IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->backgroundColor:I

    .line 3
    iput p2, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripColor:I

    .line 4
    iput p3, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    .line 5
    iput p4, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->gap:F

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    move-object v2, p0

    .line 2
    iget v3, v2, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->backgroundColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v3, p3

    int-to-float v3, v3

    move v4, p5

    int-to-float v4, v4

    move v5, p4

    int-to-float v5, v5

    move v6, p7

    int-to-float v6, v6

    move-object p3, p1

    move p4, v3

    move p5, v4

    move p6, v5

    move p7, v6

    move-object p8, p2

    .line 3
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 3
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v4, v0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v4, p3

    int-to-float v4, v4

    move v5, p5

    int-to-float v5, v5

    move v6, p4

    int-to-float v6, v6

    .line 5
    iget v7, v0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    move v7, p7

    int-to-float v7, v7

    move-object p3, p1

    move p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    move-object/from16 p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    iget v0, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->gap:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
