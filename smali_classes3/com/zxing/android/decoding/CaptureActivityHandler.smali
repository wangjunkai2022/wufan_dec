.class public final Lcom/zxing/android/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zxing/android/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/zxing/android/CaptureActivity;

.field private final b:Lcom/zxing/android/decoding/e;

.field private c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/zxing/android/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zxing/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zxing/android/CaptureActivity;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    .line 3
    new-instance v0, Lcom/zxing/android/decoding/e;

    new-instance v1, Lcom/zxing/android/view/a;

    .line 4
    invoke-virtual {p1}, Lcom/zxing/android/CaptureActivity;->d()Lcom/zxing/android/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zxing/android/view/a;-><init>(Lcom/zxing/android/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/zxing/android/decoding/e;-><init>(Lcom/zxing/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->b:Lcom/zxing/android/decoding/e;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    sget-object p2, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    iput-object p2, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 7
    invoke-virtual {p1}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zxing/android/camera/c;->k()V

    .line 8
    invoke-direct {p0}, Lcom/zxing/android/decoding/CaptureActivityHandler;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 3
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->b:Lcom/zxing/android/decoding/e;

    invoke-virtual {v1}, Lcom/zxing/android/decoding/e;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/c;->i(Landroid/os/Handler;I)V

    .line 4
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/zxing/android/camera/c;->h(Landroid/os/Handler;I)V

    .line 5
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/zxing/android/CaptureActivity;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->DONE:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 2
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->l()V

    .line 3
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->b:Lcom/zxing/android/decoding/e;

    invoke-virtual {v0}, Lcom/zxing/android/decoding/e;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->b:Lcom/zxing/android/decoding/e;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/zxing/android/decoding/CaptureActivityHandler;->b()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "barcode_bitmap"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/zxing/android/CaptureActivity;->e(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 13
    :cond_5
    sget-object p1, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 14
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object p1

    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->b:Lcom/zxing/android/decoding/e;

    invoke-virtual {v0}, Lcom/zxing/android/decoding/e;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zxing/android/camera/c;->i(Landroid/os/Handler;I)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->c:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_7

    .line 16
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandler;->a:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {p1}, Lcom/zxing/android/CaptureActivity;->b()Lcom/zxing/android/camera/c;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/zxing/android/camera/c;->h(Landroid/os/Handler;I)V

    :cond_7
    :goto_1
    return-void
.end method
