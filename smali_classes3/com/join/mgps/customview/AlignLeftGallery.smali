.class public Lcom/join/mgps/customview/AlignLeftGallery;
.super Landroid/widget/Gallery;
.source "AlignLeftGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AlignLeftGallery$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "AlignLeftGallery"

.field private static j:I

.field private static k:I


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lcom/join/mgps/customview/AlignLeftGallery$a;

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/AlignLeftGallery;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p3, Landroid/graphics/Camera;

    invoke-direct {p3}, Landroid/graphics/Camera;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/AlignLeftGallery;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d6

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/AlignLeftGallery;->c:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sput v1, Lcom/join/mgps/customview/AlignLeftGallery;->j:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstChildWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/join/mgps/customview/AlignLeftGallery;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sput v1, Lcom/join/mgps/customview/AlignLeftGallery;->k:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->d:Z

    .line 10
    :cond_0
    sget v0, Lcom/join/mgps/customview/AlignLeftGallery;->j:I

    div-int/2addr v0, p1

    sget v1, Lcom/join/mgps/customview/AlignLeftGallery;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->b:I

    div-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->e:I

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->a:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/join/mgps/customview/AlignLeftGallery;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "    offsetX"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    :try_start_0
    const-class p1, Lcom/join/mgps/customview/AlignLeftGallery;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mDownTouchPosition"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownTouchPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->f:Lcom/join/mgps/customview/AlignLeftGallery$a;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/AlignLeftGallery$a;->onItemClick(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged------- w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "oldw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "oldh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->d:Z

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->d:Z

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AlignLeftGallery;->e:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnItemClickListener(Lcom/join/mgps/customview/AlignLeftGallery$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AlignLeftGallery;->f:Lcom/join/mgps/customview/AlignLeftGallery$a;

    return-void
.end method
