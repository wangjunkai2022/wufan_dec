.class public final Lcom/switfpass/pay/activity/zxing/decoding/a;
.super Ljava/lang/Thread;


# static fields
.field public static final e:Ljava/lang/String; = "barcode_bitmap"


# instance fields
.field private final a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

.field private final b:Ljava/util/Hashtable;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/Hashtable;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->b:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->b:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->c:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/j;->d:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    sget-object p2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, p2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/switfpass/pay/activity/zxing/decoding/k;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->b:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/switfpass/pay/activity/zxing/decoding/k;-><init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
