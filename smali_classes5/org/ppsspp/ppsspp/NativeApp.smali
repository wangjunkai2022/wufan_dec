.class public Lorg/ppsspp/ppsspp/NativeApp;
.super Ljava/lang/Object;
.source "NativeApp.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0xa

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ChangeDisk(Ljava/lang/String;)V
.end method

.method public static native IsEmuExitFinish()Z
.end method

.method public static native IsHapticFeedbackEnable()Z
.end method

.method public static native IsSoundEnable()Z
.end method

.method public static native NeedChangeDisk()Z
.end method

.method public static native RecreateMsg()V
.end method

.method public static native accelerometer(FFF)Z
.end method

.method public static native addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static native applyGameSettingConfig(I)V
.end method

.method public static native audioConfig(II)V
.end method

.method public static native audioInit()V
.end method

.method public static native audioShutdown()V
.end method

.method public static native backbufferResize(III)V
.end method

.method public static native beginJoystickEvent()V
.end method

.method public static native cheatEnable(II)V
.end method

.method public static native checkCheatCode(Ljava/lang/String;)Z
.end method

.method public static native computeDesiredBackbufferDimensions()V
.end method

.method public static native deleteEditCheat(I)V
.end method

.method public static native emuRestart()V
.end method

.method public static native enableEidtCheat(I)V
.end method

.method public static native enableHapticFeedback(Z)V
.end method

.method public static native enableSound(Z)V
.end method

.method public static native endJoystickEvent()V
.end method

.method public static native enterGameSettings(I)V
.end method

.method public static native getCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static native getDesiredBackbufferHeight()I
.end method

.method public static native getDesiredBackbufferWidth()I
.end method

.method public static native getEditCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static native httpPostMemberInfo()V
.end method

.method public static native init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native isAtTopLevel()Z
.end method

.method public static native isLandscape()Z
.end method

.method public static native joystickAxis(IIF)V
.end method

.method public static native keyDown(IIZ)Z
.end method

.method public static native keyUp(II)Z
.end method

.method public static native loadPspDBCheat()V
.end method

.method public static native loadState(Ljava/lang/String;)V
.end method

.method public static native modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static native mouseWheelEvent(FF)Z
.end method

.method public static native pause()V
.end method

.method public static native pauseGame()V
.end method

.method public static native pushCameraImage([B)V
.end method

.method public static native pushNewGpsData(FFFFFJ)V
.end method

.method public static native queryConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native resume()V
.end method

.method public static native resumeGame()V
.end method

.method public static native saveGameConfig()V
.end method

.method public static native saveScreenShot(Ljava/lang/String;)V
.end method

.method public static native saveState(Ljava/lang/String;)V
.end method

.method public static native sendMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setDisplayParameters(IIIF)V
.end method

.method public static native setJson(Ljava/lang/String;)V
.end method

.method public static native shutdown()V
.end method

.method public static native touch(FFII)Z
.end method
