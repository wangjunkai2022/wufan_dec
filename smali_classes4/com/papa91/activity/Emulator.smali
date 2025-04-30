.class public Lcom/papa91/activity/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/activity/Emulator$SortComparator;
    }
.end annotation


# static fields
.field public static CONTROL_CMD_RESET:I = 0x2

.field public static CONTROL_CMD_RESUME:I = 0x1

.field public static CONTROL_CMD_STOP:I = 0x3

.field public static CONTROL_TYPE_STATUS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native EmulatorReadRAM16(I)S
.end method

.method public static native EmulatorReadRAM8(I)B
.end method

.method public static native EmulatorWriteRAM16(II)I
.end method

.method public static native EmulatorWriteRAM8(II)I
.end method

.method public static native addIpsPatch(Ljava/lang/String;)I
.end method

.method public static native cheatEnable(II)I
.end method

.method public static native coreLoop(I)I
.end method

.method public static native deinit()I
.end method

.method public static native drawBmp(Landroid/graphics/Bitmap;)I
.end method

.method public static native drawGL()I
.end method

.method public static native enableIpsPatch(I)I
.end method

.method public static native getCheatOptionCount(I)I
.end method

.method public static native getCheatOptionName(II)Ljava/lang/String;
.end method

.method public static native getDrvInfo(II)Ljava/lang/String;
.end method

.method public static native getIpsPatchDesc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getRomInfo(Ljava/lang/String;I)I
.end method

.method public static native getRomText(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public static native getStateBuff()[B
.end method

.method public static native getVideoHeight()I
.end method

.method public static native getVideoWidth()I
.end method

.method public static native init(I)I
.end method

.method public static native ipsInit(I)I
.end method

.method public static native loadRom(Ljava/lang/String;)I
.end method

.method public static native loadState(Ljava/lang/String;)I
.end method

.method public static native saveState(Ljava/lang/String;)I
.end method

.method public static native setControl(II)I
.end method

.method public static native setGLQuality(I)I
.end method

.method public static native setKeyState(II)I
.end method

.method public static native setSoundEnable(I)I
.end method

.method public static native setStateBuff([BI)I
.end method

.method public static native signData(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native soInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native unloadRom()I
.end method
