.class public Lcom/join/mgps/customview/ScrollTextViewLayout;
.super Landroid/widget/LinearLayout;
.source "ScrollTextViewLayout.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/os/Handler;

.field i:Ljava/lang/Runnable;

.field j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    .line 5
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$a;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/os/Handler;

    .line 6
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$b;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$c;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 8
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->scrollText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ScrollTextViewLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScrollTextViewLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:I

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    return v0
.end method

.method static synthetic j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->a:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    return v0
.end method

.method public getTextArray()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    return v0
.end method

.method public n()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Ljava/lang/Runnable;

    iget v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Ljava/lang/Runnable;

    iget v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:I

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:I

    return-void
.end method

.method public setIsStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:Z

    return-void
.end method

.method public setTextArray([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->a:[Ljava/lang/String;

    return-void
.end method
