.class public Lcom/join/mgps/wrapper/c;
.super Ljava/lang/Object;
.source "Wrapper12.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    return p0
.end method

.method static c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
