.class public Lcom/papa91/wrapper/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# static fields
.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Activity_invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper11;->Activity_invalidateOptionsMenu(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static final Activity_onBackPressed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper5;->Activity_onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public static final KeyEvent_isLongPress(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper5;->KeyEvent_isLongPress(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final MenuItem_setShowAsAction(Landroid/view/MenuItem;Z)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper11;->MenuItem_setShowAsAction(Landroid/view/MenuItem;Z)V

    :cond_0
    return-void
.end method

.method public static final MotionEvent_findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final MotionEvent_getSize(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSize()F

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getX(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    return p0
.end method

.method public static final MotionEvent_getY(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/papa91/wrapper/Wrapper5;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    return p0
.end method

.method public static disableHomeButton(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper14;->disableHomeButton(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static displayActionBar(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper11;->displayActionBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static displayHomeAsUp(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper11;->displayHomeAsUp(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static final getExternalScreenshotDirectory()Ljava/io/File;
    .locals 3

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/wrapper/Wrapper8;->getExternalPicturesDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "screenshots"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static isBluetoothDiscoverable()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/papa91/wrapper/Wrapper5;->isBluetoothDiscoverable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBluetoothEnabled()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/papa91/wrapper/Wrapper5;->isBluetoothEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBluetoothPresent()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/papa91/wrapper/Wrapper5;->isBluetoothPresent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isHwMenuBtnAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper14;->ViewConfiguration_hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final keyCodeToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_10

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_f

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_e

    const/16 p0, 0x4d

    if-eq p1, p0, :cond_d

    const/16 p0, 0x50

    if-eq p1, p0, :cond_c

    const/16 p0, 0x52

    if-eq p1, p0, :cond_b

    const/16 p0, 0x54

    if-eq p1, p0, :cond_a

    const/16 p0, 0x66

    if-eq p1, p0, :cond_9

    const/16 p0, 0x68

    if-eq p1, p0, :cond_8

    const/4 p0, 0x3

    if-eq p1, p0, :cond_7

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    const/4 p0, 0x5

    if-eq p1, p0, :cond_5

    const/16 p0, 0x42

    if-eq p1, p0, :cond_4

    const/16 p0, 0x43

    if-eq p1, p0, :cond_3

    const/16 p0, 0x6c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x6d

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 1
    sget p0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/papa91/wrapper/Wrapper12;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KEYCODE_"

    const-string v0, ""

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x5f

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "??? (\u2116"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SHIFT (right)"

    return-object p0

    :pswitch_1
    const-string p0, "SHIFT (left)"

    return-object p0

    :pswitch_2
    const-string p0, "ALT (right)"

    return-object p0

    :pswitch_3
    const-string p0, "ALT (left)"

    return-object p0

    :pswitch_4
    const-string p0, "."

    return-object p0

    :pswitch_5
    const-string p0, ","

    return-object p0

    :pswitch_6
    const-string p0, "Z"

    return-object p0

    :pswitch_7
    const-string p0, "Y"

    return-object p0

    :pswitch_8
    const-string p0, "X"

    return-object p0

    :pswitch_9
    const-string p0, "W"

    return-object p0

    :pswitch_a
    const-string p0, "V"

    return-object p0

    :pswitch_b
    const-string p0, "U"

    return-object p0

    :pswitch_c
    const-string p0, "T"

    return-object p0

    :pswitch_d
    const-string p0, "S"

    return-object p0

    :pswitch_e
    const-string p0, "R"

    return-object p0

    :pswitch_f
    const-string p0, "Q"

    return-object p0

    :pswitch_10
    const-string p0, "P"

    return-object p0

    :pswitch_11
    const-string p0, "O"

    return-object p0

    :pswitch_12
    const-string p0, "N"

    return-object p0

    :pswitch_13
    const-string p0, "M"

    return-object p0

    :pswitch_14
    const-string p0, "L"

    return-object p0

    :pswitch_15
    const-string p0, "K"

    return-object p0

    :pswitch_16
    const-string p0, "J"

    return-object p0

    :pswitch_17
    const-string p0, "I"

    return-object p0

    :pswitch_18
    const-string p0, "H"

    return-object p0

    :pswitch_19
    const-string p0, "G"

    return-object p0

    :pswitch_1a
    const-string p0, "F"

    return-object p0

    :pswitch_1b
    const-string p0, "E"

    return-object p0

    :pswitch_1c
    const-string p0, "D"

    return-object p0

    :pswitch_1d
    const-string p0, "C"

    return-object p0

    :pswitch_1e
    const-string p0, "B"

    return-object p0

    :pswitch_1f
    const-string p0, "A"

    return-object p0

    :pswitch_20
    const-string p0, "Volume DOWN"

    return-object p0

    :pswitch_21
    const-string p0, "Volume UP"

    return-object p0

    :pswitch_22
    const-string p0, "DPAD Center"

    return-object p0

    :pswitch_23
    const-string p0, "DPAD Right"

    return-object p0

    :pswitch_24
    const-string p0, "DPAD Left"

    return-object p0

    :pswitch_25
    const-string p0, "DPAD Down"

    return-object p0

    :pswitch_26
    const-string p0, "DPAD Up"

    return-object p0

    :pswitch_27
    const-string p0, "9"

    return-object p0

    :pswitch_28
    const-string p0, "8"

    return-object p0

    :pswitch_29
    const-string p0, "7"

    return-object p0

    :pswitch_2a
    const-string p0, "6"

    return-object p0

    :pswitch_2b
    const-string p0, "5"

    return-object p0

    :pswitch_2c
    const-string p0, "4"

    return-object p0

    :pswitch_2d
    const-string p0, "3"

    return-object p0

    :pswitch_2e
    const-string p0, "2"

    return-object p0

    :pswitch_2f
    const-string p0, "1"

    return-object p0

    :pswitch_30
    const-string p0, "0"

    return-object p0

    :cond_1
    const-string p0, "Select"

    return-object p0

    :cond_2
    const-string p0, "Start"

    return-object p0

    :cond_3
    const-string p0, "DEL"

    return-object p0

    :cond_4
    const-string p0, "ENTER"

    return-object p0

    :cond_5
    const-string p0, "CALL"

    return-object p0

    :cond_6
    const-string p0, "BACK"

    return-object p0

    :cond_7
    const-string p0, "HOME"

    return-object p0

    :cond_8
    const-string p0, "Right trigger"

    return-object p0

    :cond_9
    const-string p0, "Left trigger"

    return-object p0

    :cond_a
    const-string p0, "SEARCH"

    return-object p0

    :cond_b
    const-string p0, "MENU"

    return-object p0

    :cond_c
    const-string p0, "FOCUS"

    return-object p0

    :cond_d
    const-string p0, "@"

    return-object p0

    :cond_e
    const-string p0, "SPACE"

    return-object p0

    :cond_f
    const-string p0, "CAMERA"

    return-object p0

    :cond_10
    const-string p0, "-"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsMultitouch(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/papa91/wrapper/Wrapper5;->supportsMultitouch(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
