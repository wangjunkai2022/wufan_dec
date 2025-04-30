.class public final Lit/sephiroth/android/library/util/a;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final a:Ljava/util/Random;

.field private static final b:F = 0.017453292f

.field private static final c:F = 57.295784f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static B(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float p0, p0, v0

    return p0
.end method

.method public static C(F)F
    .locals 1

    .line 1
    sget-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p0

    return v0
.end method

.method public static D(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    return p0

    .line 1
    :cond_0
    sget-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float v0, v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static E(I)I
    .locals 1

    .line 1
    sget-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float p0, p0

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static F(II)I
    .locals 1

    if-lt p0, p1, :cond_0

    return p0

    .line 1
    :cond_0
    sget-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float v0, v0, p1

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static G(J)V
    .locals 1

    .line 1
    sget-object v0, Lit/sephiroth/android/library/util/a;->a:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public static H(F)F
    .locals 0

    mul-float p0, p0, p0

    return p0
.end method

.method public static I(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static a(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0
.end method

.method public static b(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static c(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static d(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static e(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static f(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static g(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static h(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static i(F)F
    .locals 1

    const v0, 0x42652ee2

    mul-float p0, p0, v0

    return p0
.end method

.method public static j(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static k(FFFFFF)F
    .locals 0

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    mul-float p5, p5, p5

    add-float/2addr p3, p5

    float-to-double p0, p3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static l(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static m(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static n(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static o(FF)F
    .locals 0

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static p(FFF)F
    .locals 0

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    mul-float p2, p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static q(FFFFF)F
    .locals 0

    sub-float p3, p2, p3

    sub-float/2addr p4, p0

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    return p2
.end method

.method public static r(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static s(FFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static t(II)F
    .locals 0

    if-le p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static u(III)F
    .locals 0

    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static v(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static w(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p0, p1, p2

    if-gez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static x(II)F
    .locals 0

    if-ge p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static y(III)F
    .locals 0

    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static z(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method
