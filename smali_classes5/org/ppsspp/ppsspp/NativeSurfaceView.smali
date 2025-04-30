.class public Lorg/ppsspp/ppsspp/NativeSurfaceView;
.super Landroid/view/SurfaceView;
.source "NativeSurfaceView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/bda/controller/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/NativeSurfaceView$b;,
        Lorg/ppsspp/ppsspp/NativeSurfaceView$a;
    }
.end annotation


# static fields
.field private static l:Ljava/lang/String; = "NativeSurfaceView"

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x7

.field public static final u:I = 0x8

.field private static final v:F = 15.0f


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Lcom/bda/controller/Controller;

.field private d:Z

.field private e:I

.field private f:F

.field private g:F

.field private h:J

.field private i:F

.field private j:Landroid/view/GestureDetector;

.field k:Lorg/ppsspp/ppsspp/NativeGLView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->d:Z

    const-string v0, "sensor"

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->b:Landroid/hardware/Sensor;

    .line 6
    invoke-static {p1}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    .line 7
    :try_start_0
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/f;->a(Lcom/bda/controller/Controller;Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/b;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e()V

    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    return p0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/NativeSurfaceView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const-wide/16 v1, 0x32

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x0

    if-lt v0, v3, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v6, v8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v0, v7

    mul-float v6, v6, v6

    mul-float v0, v0, v0

    add-float/2addr v6, v0

    float-to-double v6, v6

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 5
    iget v6, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_0

    .line 6
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-lez v3, :cond_2

    .line 8
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    sub-float v1, v0, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 10
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x7

    .line 11
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 12
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    .line 13
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g:F

    .line 16
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    :cond_2
    return-void

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x5dc

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    const/4 p1, 0x6

    .line 21
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    return-void

    .line 22
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    sub-long/2addr v6, v8

    cmp-long v0, v6, v1

    if-lez v0, :cond_8

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f:F

    sub-float/2addr v0, v1

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g:F

    sub-float/2addr v1, v2

    .line 25
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    goto :goto_2

    .line 27
    :cond_5
    iput v3, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    goto :goto_2

    :cond_6
    cmpl-float v0, v1, v5

    if-lez v0, :cond_7

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    .line 29
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    .line 30
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f:F

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g:F

    :cond_8
    return-void
.end method

.method private d(Landroid/view/MotionEvent;I)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    return p1
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;

    invoke-direct {v2, p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;-><init>(Lorg/ppsspp/ppsspp/NativeSurfaceView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->j:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onResume()V

    :cond_0
    return-void
.end method

.method public i(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    .line 3
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1, v2}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c(Landroid/view/MotionEvent;)V

    .line 6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    if-eqz p1, :cond_4

    .line 7
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    invoke-interface {p1, v0}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    goto :goto_0

    .line 8
    :cond_2
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    .line 9
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1, v2}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f:F

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g:F

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h:J

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->i:F

    .line 17
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    if-eqz p1, :cond_4

    .line 18
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->e:I

    invoke-interface {p1, v0}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->c()I

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->d()I

    move-result p1

    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->d()I

    move-result p1

    invoke-static {v2, p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->keyDown(IIZ)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result v1

    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    const/16 v0, 0xb

    .line 3
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result v1

    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    const/16 v0, 0xe

    .line 4
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result v1

    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result v1

    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    const/16 v0, 0x12

    .line 6
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->d(I)F

    move-result p1

    invoke-static {v2, v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {v0, v1, p1}, Lorg/ppsspp/ppsspp/NativeApp;->accelerometer(FFF)Z

    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->c()I

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->c()I

    move-result p1

    const-string v0, "moga"

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->c:Lcom/bda/controller/Controller;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/bda/controller/Controller;->getState(I)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Moga"

    .line 5
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->d:Z

    const-string p1, "MogaPro"

    .line 7
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 8
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    if-eq v6, v1, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x5

    if-eq v6, v8, :cond_3

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_3

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-ne v6, v3, :cond_4

    const/4 v7, 0x4

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0, p1, v3}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->d(Landroid/view/MotionEvent;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v7, v6

    .line 8
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v6, v8, v7, v5}, Lorg/ppsspp/ppsspp/NativeApp;->touch(FFII)Z

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-lez v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    return-void
.end method
