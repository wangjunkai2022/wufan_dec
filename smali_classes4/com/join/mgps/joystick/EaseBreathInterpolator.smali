.class public Lcom/join/mgps/joystick/EaseBreathInterpolator;
.super Ljava/lang/Object;
.source "EaseBreathInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fd54fdf3b645a1dL    # 0.333

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    add-double/2addr v0, v4

    :goto_0
    double-to-float p1, v0

    return p1

    :cond_0
    const-wide v6, -0x3fdd268380ccde2eL    # -9.42477796076938

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method
