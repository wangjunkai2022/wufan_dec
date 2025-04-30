.class public Lorg/ppsspp/ppsspp/d;
.super Ljava/lang/Object;
.source "InputDeviceState.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "InputDeviceState"

.field private static final d:I = 0xa


# instance fields
.field private a:Landroid/view/InputDevice;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/ppsspp/ppsspp/d;->a:Landroid/view/InputDevice;

    .line 3
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 4
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/ppsspp/ppsspp/d;->b:[I

    .line 6
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 7
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, p0, Lorg/ppsspp/ppsspp/d;->b:[I

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    aput v3, v4, v1

    move v1, v5

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering input device with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " axes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Lorg/ppsspp/ppsspp/d;->b(Landroid/view/InputDevice;)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inputDeviceConnected"

    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/d;->a:Landroid/view/InputDevice;

    return-object v0
.end method

.method b(Landroid/view/InputDevice;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " productId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->beginJoystickEvent()V

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/d;->b:[I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4
    aget v0, v0, v1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xa

    .line 6
    invoke-static {v3, v0, v2}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->endJoystickEvent()V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xa

    .line 3
    invoke-static {v1, v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyDown(IIZ)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0xa

    .line 2
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    move-result p1

    return p1
.end method
