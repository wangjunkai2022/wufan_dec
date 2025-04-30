.class public Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;
    }
.end annotation


# static fields
.field static final p0:F = 1.4f

.field private static final q0:I = 0x5

.field private static final r0:F = 0.8f

.field private static final s0:F = 6.0f


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field private G:I

.field private H:F

.field I:J

.field J:I

.field private K:I

.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field private c:Landroid/view/GestureDetector;

.field d:Lf/c;

.field e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field g:Landroid/graphics/Paint;

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Paint;

.field j:Le/c;

.field private k:Ljava/lang/String;

.field l:I

.field m:I

.field n:I

.field private n0:I

.field o:F

.field private o0:I

.field p:I

.field q:I

.field r:I

.field s:Z

.field t:F

.field u:F

.field v:F

.field w:I

.field x:I

.field private y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v0, 0xb

    .line 4
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:F

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:J

    const/16 v1, 0x11

    .line 8
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    .line 9
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    .line 10
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_out:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_center:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$dimen;->pickerview_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    if-eqz p2, :cond_0

    .line 15
    sget-object v2, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    .line 17
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textColorOut:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:I

    .line 18
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textColorCenter:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    .line 19
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_dividerColor:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    .line 20
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textSize:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p1, Lg/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lg/a;

    invoke-interface {p1}, Lg/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)I
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v0}, Le/c;->a()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v0}, Le/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v0}, Le/c;->a()I

    move-result v0

    sub-int/2addr p1, v0

    .line 5
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;

    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;

    invoke-direct {v1, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 5
    iput-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    .line 6
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 8
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 10
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 13
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v3}, Le/c;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v3, v2}, Le/c;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    if-le v3, v4, :cond_0

    .line 7
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    const/4 v4, 0x2

    const-string/jumbo v5, "\u661f\u671f"

    invoke-virtual {v3, v5, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 10
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    if-le v3, v4, :cond_1

    .line 11
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x3fb33333    # 1.4f

    .line 12
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    goto :goto_0

    .line 6
    :cond_2
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    :goto_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    goto :goto_0

    .line 6
    :cond_2
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    :goto_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g()V

    .line 3
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    int-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    .line 6
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->J:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    .line 7
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    int-to-float v1, v0

    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:F

    int-to-float v1, v0

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 8
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 9
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 10
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v0}, Le/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 14
    :cond_2
    :goto_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3
    new-array v2, v1, [F

    .line 4
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    return v0
.end method

.method public final getAdapter()Le/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/c;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d:Lf/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;

    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected final l(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;

    invoke-direct {v1, p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 2
    sget-object v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->FLING:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    if-ne p1, v0, :cond_2

    .line 3
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float p1, p1

    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 4
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    goto :goto_0

    :cond_1
    neg-int p1, p1

    .line 5
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;

    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    invoke-direct {v1, p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    new-array v8, v2, [Ljava/lang/Object;

    .line 3
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float v2, v2

    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 4
    :try_start_0
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    invoke-interface {v1}, Le/c;->a()I

    move-result v1

    rem-int/2addr v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-boolean v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 7
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    if-gez v1, :cond_1

    .line 8
    iput v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    .line 9
    :cond_1
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v2}, Le/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 10
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v1}, Le/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    goto :goto_1

    .line 11
    :cond_2
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    if-gez v1, :cond_3

    .line 12
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v1}, Le/c;->a()I

    move-result v1

    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    .line 13
    :cond_3
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v2}, Le/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 14
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v2}, Le/c;->a()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    .line 15
    :cond_4
    :goto_1
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float v1, v1

    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    rem-float/2addr v1, v2

    float-to-int v10, v1

    const/4 v1, 0x0

    .line 16
    :goto_2
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    if-ge v1, v2, :cond_8

    .line 17
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    .line 18
    iget-boolean v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    if-eqz v2, :cond_5

    .line 19
    invoke-direct {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    move-result v2

    .line 20
    iget-object v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v3, v2}, Le/c;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    goto :goto_3

    :cond_5
    const-string v2, ""

    if-gez v3, :cond_6

    .line 21
    aput-object v2, v8, v1

    goto :goto_3

    .line 22
    :cond_6
    iget-object v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v4}, Le/c;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_7

    .line 23
    aput-object v2, v8, v1

    goto :goto_3

    .line 24
    :cond_7
    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v2, v3}, Le/c;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 25
    iget v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:F

    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 26
    iget v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Ljava/lang/String;

    const/high16 v2, 0x40c00000    # 6.0f

    if-eqz v1, :cond_9

    .line 28
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    iget-object v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v3, v1

    .line 29
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Ljava/lang/String;

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    const/4 v1, 0x0

    .line 30
    :goto_4
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    if-ge v1, v3, :cond_10

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v3, v3

    const v4, 0x3fb33333    # 1.4f

    mul-float v3, v3, v4

    int-to-float v4, v1

    mul-float v4, v4, v3

    int-to-float v5, v10

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v11

    iget v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v13

    const-wide v13, 0x4056800000000000L    # 90.0

    div-double v11, v4, v11

    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double v11, v11, v15

    sub-double/2addr v13, v11

    double-to-float v6, v13

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v11, v6, v11

    if-gez v11, :cond_f

    const/high16 v11, -0x3d4c0000    # -90.0f

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_a

    goto/16 :goto_7

    .line 34
    :cond_a
    aget-object v6, v8, v1

    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h(Ljava/lang/String;)V

    .line 36
    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i(Ljava/lang/String;)V

    .line 37
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    int-to-double v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    iget v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    move/from16 v17, v10

    int-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v13, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    sub-double/2addr v11, v9

    double-to-float v9, v11

    const/4 v10, 0x0

    .line 38
    invoke-virtual {v7, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 40
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:F

    const v13, 0x3f4ccccd    # 0.8f

    cmpg-float v14, v9, v11

    if-gtz v14, :cond_c

    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v14, v14

    add-float/2addr v14, v9

    cmpl-float v14, v14, v11

    if-ltz v14, :cond_c

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v11, v11

    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:F

    sub-float/2addr v14, v9

    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float v11, v11, v13

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 44
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    int-to-float v11, v11

    iget v13, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:F

    sub-float/2addr v11, v9

    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v9, v9

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v12

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 49
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 51
    :cond_c
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    cmpg-float v15, v9, v14

    if-gtz v15, :cond_d

    iget v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v15, v15

    add-float/2addr v15, v9

    cmpl-float v15, v15, v14

    if-ltz v15, :cond_d

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v11, v11

    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    sub-float/2addr v14, v9

    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float v11, v11, v12

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 55
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    int-to-float v11, v11

    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v14, v14

    sub-float/2addr v14, v2

    iget-object v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v11, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    sub-float/2addr v11, v9

    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    int-to-float v9, v9

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v13

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 60
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_d
    cmpl-float v10, v9, v11

    if-ltz v10, :cond_e

    .line 62
    iget v10, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v10, v10

    add-float/2addr v10, v9

    cmpg-float v9, v10, v14

    if-gtz v9, :cond_e

    .line 63
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 64
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    iget-object v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    aget-object v4, v8, v1

    invoke-interface {v3, v4}, Le/c;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 66
    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    goto/16 :goto_5

    .line 67
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    float-to-int v3, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v9, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v13

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_f
    :goto_7
    move/from16 v17, v10

    const/4 v10, 0x0

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v17

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->J:I

    .line 2
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k()V

    .line 3
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    iget p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    int-to-float p1, v0

    div-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    .line 5
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 6
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float v1, v1

    rem-float/2addr v1, p1

    add-float/2addr v1, p1

    rem-float/2addr v1, p1

    .line 7
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    div-int/2addr v4, v3

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x78

    cmp-long p1, v0, v3

    if-lez p1, :cond_0

    .line 9
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->CLICK:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:F

    .line 13
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    .line 14
    iget-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    if-nez p1, :cond_6

    .line 15
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    mul-float p1, p1, v1

    .line 16
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    invoke-interface {v1}, Le/c;->a()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    mul-float v1, v1, v3

    .line 17
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-double v5, v4

    float-to-double v7, v3

    const-wide v9, 0x3fd3333333333333L    # 0.3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    float-to-double v7, p1

    cmpg-double v11, v5, v7

    if-gez v11, :cond_2

    int-to-float p1, v4

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    int-to-double v5, v4

    float-to-double v7, v3

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    float-to-double v7, v1

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    int-to-float v1, v4

    sub-float/2addr v1, v0

    :cond_3
    :goto_0
    int-to-float v0, v4

    cmpg-float v0, v0, p1

    if-gez v0, :cond_4

    float-to-int p1, p1

    .line 19
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    goto :goto_1

    :cond_4
    int-to-float p1, v4

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    float-to-int p1, v1

    .line 20
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:J

    .line 22
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:F

    .line 24
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public final setAdapter(Le/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Le/c;

    .line 2
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Ljava/lang/String;

    return-void
.end method

.method public final setOnItemSelectedListener(Lf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d:Lf/c;

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method
