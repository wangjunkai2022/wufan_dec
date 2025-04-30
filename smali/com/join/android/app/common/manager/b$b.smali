.class public Lcom/join/android/app/common/manager/b$b;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "status_bar_height"

.field private static final k:Ljava/lang/String; = "navigation_bar_height"

.field private static final l:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final m:Ljava/lang/String; = "navigation_bar_width"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:F


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/join/android/app/common/manager/b$b;->h:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/b$b;->k(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/join/android/app/common/manager/b$b;->i:F

    const-string v1, "status_bar_height"

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/join/android/app/common/manager/b$b;->c(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/common/manager/b$b;->c:I

    .line 7
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/b$b;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/common/manager/b$b;->d:I

    .line 8
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/b$b;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/common/manager/b$b;->f:I

    .line 9
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/b$b;->g(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/join/android/app/common/manager/b$b;->g:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    .line 10
    :cond_1
    iput-boolean v2, p0, Lcom/join/android/app/common/manager/b$b;->e:Z

    .line 11
    iput-boolean p2, p0, Lcom/join/android/app/common/manager/b$b;->a:Z

    .line 12
    iput-boolean p3, p0, Lcom/join/android/app/common/manager/b$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/join/android/app/common/manager/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/manager/b$b;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private b(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "dimen"

    const-string v1, "android"

    .line 1
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/join/android/app/common/manager/b$b;->h:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p1, "navigation_bar_height_landscape"

    .line 5
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/join/android/app/common/manager/b$b;->c(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "navigation_bar_width"

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/join/android/app/common/manager/b$b;->c(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private k(Landroid/app/Activity;)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b$b;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/android/app/common/manager/b$b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->f:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b$b;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/android/app/common/manager/b$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->g:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(Z)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b$b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/join/android/app/common/manager/b$b;->d:I

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->c:I

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b$b;->e:Z

    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/android/app/common/manager/b$b;->i:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b$b;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
