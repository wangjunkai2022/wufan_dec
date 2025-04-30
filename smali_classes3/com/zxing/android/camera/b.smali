.class final Lcom/zxing/android/camera/b;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final d:Ljava/lang/String; = "CameraConfiguration"

.field private static final e:I = 0x12c00

.field private static final f:I = 0x5dc00

.field public static final g:Ljava/lang/String; = "preferences_front_light"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zxing/android/camera/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const-string v0, "torch"

    const-string v1, "on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zxing/android/camera/b;->c(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const-string v0, "off"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zxing/android/camera/b;->c(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 2
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int v5, v4, v3

    const v6, 0x12c00

    if-lt v5, v6, :cond_0

    const v6, 0x5dc00

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz p2, :cond_3

    move v4, v3

    .line 3
    :cond_3
    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    mul-int v6, v6, v5

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_4
    if-ge v3, v2, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    move v2, v3

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 6
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 7
    new-instance v1, Landroid/graphics/Point;

    iget p1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    :cond_6
    return-object v1
.end method

.method private static varargs c(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Settable value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v2
.end method

.method private static g(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences_front_light"

    const/4 v1, 0x0

    .line 1
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2
    invoke-static {p0, p1}, Lcom/zxing/android/camera/b;->a(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method


# virtual methods
.method d()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/b;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method e()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/b;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method f(Landroid/hardware/Camera;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/zxing/android/camera/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    .line 6
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/zxing/android/camera/b;->b:Landroid/graphics/Point;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zxing/android/camera/b;->b:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lcom/zxing/android/camera/b;->b(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/zxing/android/camera/b;->c:Landroid/graphics/Point;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera resolution: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zxing/android/camera/b;->c:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method h(Landroid/hardware/Camera;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/zxing/android/camera/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/zxing/android/camera/b;->g(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "macro"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zxing/android/camera/b;->c(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/zxing/android/camera/b;->c:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/16 v1, 0x5a

    .line 7
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method i(Landroid/hardware/Camera;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lcom/zxing/android/camera/b;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4
    iget-object p1, p0, Lcom/zxing/android/camera/b;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "preferences_front_light"

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
