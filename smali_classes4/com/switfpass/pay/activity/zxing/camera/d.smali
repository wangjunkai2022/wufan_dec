.class final Lcom/switfpass/pay/activity/zxing/camera/d;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/lang/String; = "d"

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/zxing/camera/d;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 9

    sget-object v0, Lcom/switfpass/pay/activity/zxing/camera/d;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-int v6, p1, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_1

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return p1
.end method

.method private static b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    sget-object v0, Lcom/switfpass/pay/activity/zxing/camera/d;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, "Bad preview-size: "

    if-gez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int v7, v9, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_3

    move v5, v6

    move v4, v9

    :goto_2
    if-lez v4, :cond_2

    if-lez v5, :cond_2

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    if-ge v7, v2, :cond_4

    move v5, v6

    move v2, v7

    move v4, v9

    goto :goto_3

    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method final c(Landroid/hardware/Camera;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->d:I

    const-string v0, "preview-format"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default preview format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->b:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->b:Landroid/graphics/Point;

    const-string v1, "preview-size-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "preview-size-value"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p1, 0x0

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "preview-size-values parameter: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/switfpass/pay/activity/zxing/camera/d;->b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    shr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    iget v0, v0, Landroid/graphics/Point;->y:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_2
    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->c:Landroid/graphics/Point;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera resolution: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->b:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final d(Landroid/hardware/Camera;)V
    .locals 10

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting preview size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->c:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->c:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Behold II"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "flash-value"

    if-eqz v1, :cond_0

    sget v1, Lcom/switfpass/pay/activity/zxing/camera/a;->m:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_0
    const-string v1, "flash-mode"

    const-string v3, "off"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zoom-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    const-string v1, "max-zoom"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1b

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v6, v6, v4

    double-to-int v6, v6

    if-le v3, v6, :cond_2

    move v3, v6

    goto :goto_1

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad max-zoom: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v6, "taking-picture-zoom-max"

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-le v3, v7, :cond_3

    move v3, v7

    goto :goto_2

    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad taking-picture-zoom-max: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const-string v7, "mot-zoom-values"

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {v7, v3}, Lcom/switfpass/pay/activity/zxing/camera/d;->a(Ljava/lang/CharSequence;I)I

    move-result v3

    :cond_4
    const-string v8, "mot-zoom-step"

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-int v8, v8

    if-le v8, v2, :cond_5

    rem-int v2, v3, v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v3, v2

    goto :goto_3

    :catch_2
    nop

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    int-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_8
    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->d:I

    return v0
.end method

.method final f()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method final g()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/d;->e:Ljava/lang/String;

    return-object v0
.end method
