.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# instance fields
.field private final a:I

.field private b:F

.field private final c:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:J

.field private e:F


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->a:I

    .line 3
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->c:Landroid/view/animation/Interpolator;

    .line 4
    iput-wide p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->d:J

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->e:F

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->d:J

    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->b:F

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->b:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->b:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->a:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->e:F

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->b:F

    return-void
.end method
