.class Lcom/papa91/wrapper/Wrapper5;
.super Ljava/lang/Object;
.source "Wrapper5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Activity_onBackPressed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static KeyEvent_isLongPress(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p0

    return p0
.end method

.method public static final MotionEvent_findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getSize(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getX(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public static final isBluetoothDiscoverable()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final isBluetoothEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isBluetoothPresent()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final supportsMultitouch(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
