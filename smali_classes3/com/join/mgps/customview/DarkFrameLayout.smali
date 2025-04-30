.class public Lcom/join/mgps/customview/DarkFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DarkFrameLayout.java"


# static fields
.field public static final d:I = 0x9f


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DarkFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/DarkFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->a:I

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->b:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DarkFrameLayout;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/join/mgps/customview/DarkFrameLayout;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DarkFrameLayout;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCurrentAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/DarkFrameLayout;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-virtual {p1}, Lcom/join/mgps/customview/SlideBottomPanel;->w()Z

    move-result p1

    return p1
.end method

.method public setSlideBottomPanel(Lcom/join/mgps/customview/SlideBottomPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DarkFrameLayout;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    return-void
.end method
