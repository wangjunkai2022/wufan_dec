.class public final Lcom/join/mgps/zxing/camera/c;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final k:Ljava/lang/String; = "c"

.field private static final l:I = 0x1a4

.field private static final m:I = 0x1a4

.field private static final n:I = 0x320

.field private static final o:I = 0x1e0

.field private static p:Lcom/join/mgps/zxing/camera/c;

.field static final q:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/join/mgps/zxing/camera/b;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Lcom/join/mgps/zxing/camera/g;

.field private final j:Lcom/join/mgps/zxing/camera/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 2
    :goto_0
    sput v0, Lcom/join/mgps/zxing/camera/c;->q:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/join/mgps/zxing/camera/b;

    invoke-direct {v0, p1}, Lcom/join/mgps/zxing/camera/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 4
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
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    .line 5
    new-instance v1, Lcom/join/mgps/zxing/camera/g;

    invoke-direct {v1, v0, p1}, Lcom/join/mgps/zxing/camera/g;-><init>(Lcom/join/mgps/zxing/camera/b;Z)V

    iput-object v1, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 6
    new-instance p1, Lcom/join/mgps/zxing/camera/a;

    invoke-direct {p1}, Lcom/join/mgps/zxing/camera/a;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    return-void
.end method

.method public static c()Lcom/join/mgps/zxing/camera/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/zxing/camera/c;

    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/camera/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)Lcom/join/mgps/zxing/camera/f;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/zxing/camera/c;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v1}, Lcom/join/mgps/zxing/camera/b;->f()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->g()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string v3, "yuv420p"

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v1, Lcom/join/mgps/zxing/camera/f;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/zxing/camera/f;-><init>([BIIIIII)V

    return-object v1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance v8, Lcom/join/mgps/zxing/camera/f;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/zxing/camera/f;-><init>([BIIIIII)V

    return-object v8
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public d()Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    if-nez v1, :cond_a

    .line 3
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x320

    const/16 v4, 0x1a4

    if-ge v2, v4, :cond_2

    const/16 v2, 0x1a4

    goto :goto_1

    :cond_2
    if-le v2, v3, :cond_3

    const/16 v2, 0x320

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 5
    iget v3, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x1e0

    if-ge v3, v4, :cond_5

    goto :goto_3

    :cond_5
    if-le v3, v5, :cond_6

    const/16 v4, 0x1e0

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    if-eqz v0, :cond_7

    .line 6
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v0, :cond_8

    .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    .line 8
    :goto_5
    iget-object v5, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 9
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v3, v3

    add-int/2addr v3, v2

    add-int/2addr v4, v0

    invoke-direct {v5, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    goto :goto_6

    .line 10
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v2, v3

    add-int/2addr v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 11
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x43700000    # 240.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    .line 4
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v4, v3, 0x3

    div-int/lit8 v4, v4, 0x4

    const/16 v5, 0xf0

    if-ge v4, v5, :cond_1

    const/16 v1, 0xf0

    goto :goto_0

    :cond_1
    if-le v4, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 6
    :goto_0
    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x4

    if-ge v4, v5, :cond_3

    const/16 v0, 0xf0

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    sub-int/2addr v3, v1

    .line 7
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v0

    .line 8
    div-int/lit8 v2, v2, 0x2

    .line 9
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public f()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/join/mgps/zxing/camera/c;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v1}, Lcom/join/mgps/zxing/camera/b;->c()Landroid/graphics/Point;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 7
    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int v3, v3, v4

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 8
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 9
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 11
    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int v3, v3, v4

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 12
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 13
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 14
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int v2, v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int v2, v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 16
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 17
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v2, v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    :goto_0
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->i(Landroid/hardware/Camera;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->j(Landroid/hardware/Camera;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->b()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Landroid/view/SurfaceHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->i(Landroid/hardware/Camera;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/zxing/camera/b;->k(Landroid/hardware/Camera;I)V

    .line 9
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->b()V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Landroid/os/Handler;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/zxing/camera/a;->a(Landroid/os/Handler;I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public k(Landroid/os/Handler;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/zxing/camera/g;->a(Landroid/os/Handler;I)V

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/zxing/camera/g;->a(Landroid/os/Handler;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/zxing/camera/a;->a(Landroid/os/Handler;I)V

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    :cond_1
    return-void
.end method
