.class final Lcom/switfpass/pay/activity/zxing/decoding/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;

.field static final b:Ljava/util/Vector;

.field static final c:Ljava/util/Vector;

.field static final d:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->b:Ljava/util/Vector;

    sget-object v1, Lcom/switfpass/pay/activity/zxing/decoding/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->c:Ljava/util/Vector;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->d:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
