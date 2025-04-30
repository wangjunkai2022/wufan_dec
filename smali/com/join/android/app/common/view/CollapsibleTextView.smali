.class public Lcom/join/android/app/common/view/CollapsibleTextView;
.super Landroid/widget/LinearLayout;
.source "CollapsibleTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/view/CollapsibleTextView$a;
    }
.end annotation


# static fields
.field private static g:I = 0x5

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/join/android/app/common/view/CollapsibleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/view/CollapsibleTextView;->i(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/view/CollapsibleTextView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/join/android/app/common/view/CollapsibleTextView;->i(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/view/CollapsibleTextView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/view/CollapsibleTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:I

    return p1
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/common/view/CollapsibleTextView;->g:I

    return v0
.end method

.method static synthetic d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Ljava/lang/String;

    return-object p0
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CollapsibleTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    const/16 v0, 0x17

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/16 v3, 0x33

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p2, 0x14

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 v3, 0x16

    .line 6
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v4, 0x15

    .line 7
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v5, 0x13

    .line 8
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 9
    iget-object v7, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v7, p2, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v6, 0x5

    .line 12
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x4

    .line 13
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x2

    .line 14
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 15
    invoke-virtual {p2, v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 16
    iget-object v3, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/4 v1, 0x6

    const v3, -0xa8946b

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p2, 0xd

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 v1, 0xf

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v3, 0xe

    .line 23
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v5, 0xc

    .line 24
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 25
    iget-object v6, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v6, p2, v1, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 26
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v3, 0xb

    .line 28
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v4, 0xa

    .line 29
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v5, 0x8

    .line 30
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 31
    invoke-virtual {p2, v1, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 35
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1100c2

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->c:Ljava/lang/String;

    const v0, 0x7f1100c3

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->d:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    const v1, 0x7f09029a

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const p1, 0x7f09029b

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->f:Z

    .line 4
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    sget p3, Lcom/join/android/app/common/view/CollapsibleTextView;->g:I

    if-gt p2, p3, :cond_0

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->e:I

    .line 6
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->b:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    sget p3, Lcom/join/android/app/common/view/CollapsibleTextView;->g:I

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/join/android/app/common/view/CollapsibleTextView$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/common/view/CollapsibleTextView$a;-><init>(Lcom/join/android/app/common/view/CollapsibleTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setDesc(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    return-void
.end method

.method public final setDesc(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    return-void
.end method

.method public final setDescOp(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/common/view/CollapsibleTextView;->j()V

    return-void
.end method
