.class Lcom/join/mgps/ptr/header/a$f;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/header/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/ptr/header/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/a$f;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
