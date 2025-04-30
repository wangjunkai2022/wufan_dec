.class public final Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/join/mgps/zxing/CaptureActivity;

.field private final b:Lcom/join/mgps/zxing/decoding/c;

.field private c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/zxing/CaptureActivity;",
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
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 3
    new-instance v0, Lcom/join/mgps/zxing/decoding/c;

    new-instance v1, Lcom/join/mgps/zxing/view/b;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/zxing/CaptureActivity;->G0()Lcom/join/mgps/zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/zxing/view/b;-><init>(Lcom/join/mgps/zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/join/mgps/zxing/decoding/c;-><init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    sget-object p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 7
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/zxing/camera/c;->l()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 3
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    invoke-virtual {v1}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f09032f

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/zxing/camera/c;->k(Landroid/os/Handler;I)V

    .line 4
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    const v1, 0x7f090125

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/zxing/camera/c;->j(Landroid/os/Handler;I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/CaptureActivity;->E0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 2
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->m()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f090ca6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v0, 0x7f090331

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f090330

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090125

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_6

    .line 3
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/join/mgps/zxing/camera/c;->j(Landroid/os/Handler;I)V

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f090d27

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b()V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f090331

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "barcode_bitmap"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/zxing/CaptureActivity;->H0(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    const v1, 0x7f090330

    if-ne v0, v1, :cond_4

    .line 9
    sget-object p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 10
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f09032f

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/zxing/camera/c;->k(Landroid/os/Handler;I)V

    goto :goto_1

    :cond_4
    const v1, 0x7f090d2b

    if-ne v0, v1, :cond_5

    .line 11
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    const v1, 0x7f090868

    if-ne v0, v1, :cond_6

    .line 13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method
