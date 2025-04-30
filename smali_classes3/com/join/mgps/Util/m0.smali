.class public Lcom/join/mgps/Util/m0;
.super Ljava/lang/Object;
.source "HomeAnimInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    .line 2
    iput v0, p0, Lcom/join/mgps/Util/m0;->a:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    .line 4
    iput v0, p0, Lcom/join/mgps/Util/m0;->a:F

    .line 5
    iput p1, p0, Lcom/join/mgps/Util/m0;->a:F

    return-void
.end method

.method private static a(F)F
    .locals 1

    mul-float p0, p0, p0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr p1, v2

    float-to-double v2, p1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const p1, 0x3ecccccd    # 0.4f

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
