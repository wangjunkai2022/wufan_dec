.class public Lcom/join/mgps/ptr/util/b;
.super Ljava/lang/Object;
.source "PtrLocalDisplay.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/ptr/util/b;->d:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_0

    int-to-float v0, v0

    mul-float p0, p0, v0

    const/high16 v0, 0x43a00000    # 320.0f

    div-float/2addr p0, v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result p0

    return p0
.end method

.method public static b(F)I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/ptr/util/b;->c:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/join/mgps/ptr/util/b;->a:I

    .line 5
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/join/mgps/ptr/util/b;->b:I

    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/join/mgps/ptr/util/b;->c:F

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 7
    sput p0, Lcom/join/mgps/ptr/util/b;->d:I

    int-to-float p0, v1

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 8
    sput p0, Lcom/join/mgps/ptr/util/b;->e:I

    return-void
.end method

.method public static d(Landroid/view/View;FFFF)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/ptr/util/b;->a(F)I

    move-result p1

    invoke-static {p2}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result p2

    invoke-static {p3}, Lcom/join/mgps/ptr/util/b;->a(F)I

    move-result p3

    invoke-static {p4}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
