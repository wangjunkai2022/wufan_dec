.class public final Lcom/switfpass/pay/activity/zxing/camera/a;
.super Ljava/lang/Object;


# static fields
.field private static final k:Ljava/lang/String; = "a"

.field private static l:Lcom/switfpass/pay/activity/zxing/camera/a;

.field static final m:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/switfpass/pay/activity/zxing/camera/d;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Lcom/switfpass/pay/activity/zxing/camera/f;

.field private final j:Lcom/switfpass/pay/activity/zxing/camera/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/switfpass/pay/activity/zxing/camera/a;->m:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-direct {v0, p1}, Lcom/switfpass/pay/activity/zxing/camera/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->h:Z

    new-instance v1, Lcom/switfpass/pay/activity/zxing/camera/f;

    invoke-direct {v1, v0, p1}, Lcom/switfpass/pay/activity/zxing/camera/f;-><init>(Lcom/switfpass/pay/activity/zxing/camera/d;Z)V

    iput-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->i:Lcom/switfpass/pay/activity/zxing/camera/f;

    new-instance p1, Lcom/switfpass/pay/activity/zxing/camera/c;

    invoke-direct {p1}, Lcom/switfpass/pay/activity/zxing/camera/c;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->j:Lcom/switfpass/pay/activity/zxing/camera/c;

    return-void
.end method

.method public static c()Lcom/switfpass/pay/activity/zxing/camera/a;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/activity/zxing/camera/a;->l:Lcom/switfpass/pay/activity/zxing/camera/a;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/switfpass/pay/activity/zxing/camera/a;->l:Lcom/switfpass/pay/activity/zxing/camera/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/switfpass/pay/activity/zxing/camera/a;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/activity/zxing/camera/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/camera/a;->l:Lcom/switfpass/pay/activity/zxing/camera/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)Lcom/switfpass/pay/activity/zxing/camera/b;
    .locals 12

    invoke-virtual {p0}, Lcom/switfpass/pay/activity/zxing/camera/a;->e()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v1}, Lcom/switfpass/pay/activity/zxing/camera/d;->e()I

    move-result v1

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v2}, Lcom/switfpass/pay/activity/zxing/camera/d;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string v3, "yuv420p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/switfpass/pay/activity/zxing/camera/b;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/switfpass/pay/activity/zxing/camera/b;-><init>([BIIIIII)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported picture format: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v8, Lcom/switfpass/pay/activity/zxing/camera/b;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/switfpass/pay/activity/zxing/camera/b;-><init>([BIIIIII)V

    return-object v8
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/e;->d()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/camera/d;->g()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->d:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1e

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x32

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->d:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calculated framing rect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/switfpass/pay/activity/zxing/camera/a;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v1}, Lcom/switfpass/pay/activity/zxing/camera/d;->f()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v2}, Lcom/switfpass/pay/activity/zxing/camera/d;->g()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int v3, v3, v4

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->e:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final g(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->f:Z

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/activity/zxing/camera/d;->c(Landroid/hardware/Camera;)V

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->b:Lcom/switfpass/pay/activity/zxing/camera/d;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/activity/zxing/camera/d;->d(Landroid/hardware/Camera;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Landroid/os/Handler;I)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->j:Lcom/switfpass/pay/activity/zxing/camera/c;

    invoke-virtual {v0, p1, p2}, Lcom/switfpass/pay/activity/zxing/camera/c;->a(Landroid/os/Handler;I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->j:Lcom/switfpass/pay/activity/zxing/camera/c;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Handler;I)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->i:Lcom/switfpass/pay/activity/zxing/camera/f;

    invoke-virtual {v0, p1, p2}, Lcom/switfpass/pay/activity/zxing/camera/f;->a(Landroid/os/Handler;I)V

    iget-boolean p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->i:Lcom/switfpass/pay/activity/zxing/camera/f;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->i:Lcom/switfpass/pay/activity/zxing/camera/f;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->h:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->i:Lcom/switfpass/pay/activity/zxing/camera/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/switfpass/pay/activity/zxing/camera/f;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->j:Lcom/switfpass/pay/activity/zxing/camera/c;

    invoke-virtual {v0, v2, v1}, Lcom/switfpass/pay/activity/zxing/camera/c;->a(Landroid/os/Handler;I)V

    iput-boolean v1, p0, Lcom/switfpass/pay/activity/zxing/camera/a;->g:Z

    :cond_1
    return-void
.end method
