.class public Lcom/join/mgps/Util/z0;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "z0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte2K: size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x400

    .line 2
    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static b(J)F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte2M: size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    .line 3
    new-instance p1, Ljava/math/BigDecimal;

    float-to-double v0, p0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, p0, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method
