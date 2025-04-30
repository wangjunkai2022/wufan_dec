.class public Lcom/join/android/app/component/optimizetext/StaticLayoutView;
.super Landroid/view/View;
.source "StaticLayoutView.java"


# instance fields
.field private a:Landroid/text/Layout;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setLayout(Landroid/text/Layout;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    .line 2
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->b:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->c:I

    if-eq p1, v0, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->b:I

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->c:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
