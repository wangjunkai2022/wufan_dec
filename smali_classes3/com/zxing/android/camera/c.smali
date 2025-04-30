.class public final Lcom/zxing/android/camera/c;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final m:Ljava/lang/String; = "c"

.field private static final n:I = 0xf0

.field private static final o:I = 0xf0

.field private static final p:I = 0x190

.field private static final q:I = 0x190

.field public static final r:Ljava/lang/String; = "preferences_reverse_image"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zxing/android/camera/b;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private final k:Lcom/zxing/android/camera/f;

.field private final l:Lcom/zxing/android/camera/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zxing/android/camera/c;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/zxing/android/camera/b;

    invoke-direct {v0, p1}, Lcom/zxing/android/camera/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 4
    new-instance p1, Lcom/zxing/android/camera/f;

    invoke-direct {p1, v0}, Lcom/zxing/android/camera/f;-><init>(Lcom/zxing/android/camera/b;)V

    iput-object p1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    .line 5
    new-instance p1, Lcom/zxing/android/camera/a;

    invoke-direct {p1}, Lcom/zxing/android/camera/a;-><init>()V

    iput-object p1, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/zxing/android/camera/e;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/zxing/android/camera/c;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v9, Lcom/zxing/android/camera/e;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Lcom/zxing/android/camera/c;->h:Z

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/zxing/android/camera/e;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 4
    iput-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 5
    iput-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x4

    const/16 v3, 0x190

    const/16 v4, 0xf0

    if-ge v2, v4, :cond_1

    const/16 v2, 0xf0

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    const/16 v2, 0x190

    .line 5
    :cond_2
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v5, v5, 0x4

    if-ge v5, v4, :cond_3

    const/16 v3, 0xf0

    goto :goto_1

    :cond_3
    if-le v5, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    sub-int/2addr v1, v2

    .line 6
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    .line 7
    div-int/lit8 v0, v0, 0x5

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/zxing/android/camera/c;->c()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->d()Landroid/graphics/Point;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {v2}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    move-result-object v2

    .line 6
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 7
    iget v3, v1, Landroid/graphics/Rect;->right:I

    mul-int v3, v3, v4

    div-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 8
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 9
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    mul-int v3, v3, v0

    div-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 10
    iput-object v1, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/SurfaceHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    iget-boolean p1, p0, Lcom/zxing/android/camera/c;->f:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/zxing/android/camera/c;->f:Z

    .line 8
    iget-object p1, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {p1, v0}, Lcom/zxing/android/camera/b;->f(Landroid/hardware/Camera;)V

    .line 9
    iget p1, p0, Lcom/zxing/android/camera/c;->i:I

    if-lez p1, :cond_2

    iget v2, p0, Lcom/zxing/android/camera/c;->j:I

    if-lez v2, :cond_2

    .line 10
    invoke-virtual {p0, p1, v2}, Lcom/zxing/android/camera/c;->j(II)V

    .line 11
    iput v1, p0, Lcom/zxing/android/camera/c;->i:I

    .line 12
    iput v1, p0, Lcom/zxing/android/camera/c;->j:I

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {p1, v0}, Lcom/zxing/android/camera/b;->h(Landroid/hardware/Camera;)V

    .line 14
    iget-object p1, p0, Lcom/zxing/android/camera/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "preferences_reverse_image"

    .line 15
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zxing/android/camera/c;->h:Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public h(Landroid/os/Handler;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zxing/android/camera/c;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    invoke-virtual {v0, p1, p2}, Lcom/zxing/android/camera/a;->a(Landroid/os/Handler;I)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public i(Landroid/os/Handler;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    invoke-virtual {v1, p1, p2}, Lcom/zxing/android/camera/f;->a(Landroid/os/Handler;I)V

    .line 4
    iget-object p1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public j(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/camera/c;->f:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    move p1, v1

    .line 4
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    sub-int/2addr v1, p1

    .line 5
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, p2

    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calculated manual framing rect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    goto :goto_0

    .line 10
    :cond_2
    iput p1, p0, Lcom/zxing/android/camera/c;->i:I

    .line 11
    iput p2, p0, Lcom/zxing/android/camera/c;->j:I

    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/zxing/android/camera/c;->g:Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 3
    iget-object v0, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/f;->a(Landroid/os/Handler;I)V

    .line 4
    iget-object v0, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/a;->a(Landroid/os/Handler;I)V

    .line 5
    iput-boolean v2, p0, Lcom/zxing/android/camera/c;->g:Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method
