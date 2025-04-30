.class public Lcom/join/mgps/customview/MultilineTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MultilineTextView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/MultilineTextView;->a:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 3
    div-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MultilineTextView;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/MultilineTextView;->a()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/MultilineTextView;->a:Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
