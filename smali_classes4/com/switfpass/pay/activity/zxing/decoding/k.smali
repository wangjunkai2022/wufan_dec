.class final Lcom/switfpass/pay/activity/zxing/decoding/k;
.super Landroid/os/Handler;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

.field private final b:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/switfpass/pay/activity/zxing/decoding/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/k;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f070001

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    array-length v0, v1

    new-array v6, v0, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-lt v8, p1, :cond_1

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object v0

    invoke-virtual {v0, v6, p1, v2}, Lcom/switfpass/pay/activity/zxing/camera/a;->a([BII)Lcom/switfpass/pay/activity/zxing/camera/b;

    move-result-object p1

    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->b:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Found barcode ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f070003

    invoke-static {v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/zxing/camera/b;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v2, "barcode_bitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/k;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const v0, 0x7f070002

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    mul-int v9, v0, p1

    add-int/2addr v9, p1

    sub-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    mul-int v10, v8, v2

    add-int/2addr v10, v0

    aget-byte v10, v1, v10

    aput-byte v10, v6, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const p1, 0x7f070007

    if-ne v0, p1, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_4
    return-void
.end method
