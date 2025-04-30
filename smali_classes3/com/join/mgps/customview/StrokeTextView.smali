.class public Lcom/join/mgps/customview/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/rebound/m;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:I

.field private d:Lcom/facebook/rebound/i;

.field private e:Lcom/facebook/rebound/o;

.field f:Landroid/content/Context;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    const/16 v1, 0x14

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/StrokeTextView;->b:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/os/Handler;

    .line 6
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    const/16 v0, 0x14

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:I

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/os/Handler;

    .line 14
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 16
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    const/16 v0, 0x14

    .line 19
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->b:I

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/join/mgps/customview/StrokeTextView;->c:I

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextView;->e(Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->StrokeTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 4
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->e:Lcom/facebook/rebound/o;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:Lcom/facebook/rebound/i;

    .line 11
    invoke-virtual {p1, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    .line 12
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:Lcom/facebook/rebound/i;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    if-eq p1, p2, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:Lcom/facebook/rebound/i;

    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/customview/StrokeTextView$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/StrokeTextView$b;-><init>(Lcom/join/mgps/customview/StrokeTextView;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:Lcom/facebook/rebound/i;

    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->g:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/customview/StrokeTextView$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/StrokeTextView$a;-><init>(Lcom/join/mgps/customview/StrokeTextView;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextView;->d:Lcom/facebook/rebound/i;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    return p2
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
