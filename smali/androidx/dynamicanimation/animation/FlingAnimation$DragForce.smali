.class final Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# static fields
.field private static final d:F = -4.2f

.field private static final e:F = 62.5f


# instance fields
.field private a:F

.field private b:F

.field private final c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 2
    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    .line 3
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method


# virtual methods
.method a()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method b(F)V
    .locals 1

    const v0, -0x3f79999a    # -4.2f

    mul-float p1, p1, v0

    .line 1
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    return-void
.end method

.method c(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float p1, p1, v0

    .line 1
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->b:F

    return-void
.end method

.method d(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float v3, p3, p4

    iget v4, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    div-float v2, p2, v1

    sub-float/2addr p1, v2

    float-to-double v2, p1

    div-float/2addr p2, v1

    float-to-double p1, p2

    mul-float v1, v1, p3

    div-float/2addr v1, p4

    float-to-double p3, v1

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, p1

    double-to-float p1, v2

    iput p1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->a:F

    .line 4
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->a:F

    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object p1
.end method

.method public getAcceleration(FF)F
    .locals 0

    .line 1
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a:F

    mul-float p2, p2, p1

    return p2
.end method

.method public isAtEquilibrium(FF)Z
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
