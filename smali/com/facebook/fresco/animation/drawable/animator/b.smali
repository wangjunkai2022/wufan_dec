.class public Lcom/facebook/fresco/animation/drawable/animator/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableValueAnimatorHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->a(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->b(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static c(Landroid/graphics/drawable/Drawable;I)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0, p1}, Lcom/facebook/fresco/animation/drawable/animator/a;->c(Lcom/facebook/fresco/animation/drawable/a;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
