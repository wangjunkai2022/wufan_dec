.class public Lcom/join/mgps/zxing/decoding/d;
.super Landroid/os/Handler;
.source "FaceTransferDecodeHandler.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

.field private final b:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/zxing/decoding/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/zxing/decoding/d;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    return-void
.end method

.method private a([BII)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v6, v5, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, p2

    add-int/2addr v7, v5

    .line 3
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v2, p3, p2}, Lcom/join/mgps/zxing/camera/c;->a([BII)Lcom/join/mgps/zxing/camera/f;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/join/mgps/zxing/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 9
    throw p1

    .line 10
    :catch_0
    iget-object p2, p0, Lcom/join/mgps/zxing/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found barcode ("

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-virtual {p3}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->Q0()Landroid/os/Handler;

    move-result-object p3

    const v0, 0x7f090331

    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 15
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/zxing/camera/f;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    .line 17
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->Q0()Landroid/os/Handler;

    move-result-object p1

    const p2, 0x7f090330

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f09032f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/join/mgps/zxing/decoding/d;->a([BII)V

    goto :goto_0

    :cond_0
    const p1, 0x7f090ca6

    if-ne v0, p1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
