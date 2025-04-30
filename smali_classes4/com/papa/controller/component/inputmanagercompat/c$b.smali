.class Lcom/papa/controller/component/inputmanagercompat/c$b;
.super Landroid/os/Handler;
.source "InputManagerV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/papa/controller/component/inputmanagercompat/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/papa/controller/component/inputmanagercompat/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/component/inputmanagercompat/c;

    if-eqz p1, :cond_4

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->f(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0xbb8

    if-ge v5, v3, :cond_3

    .line 6
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->f(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-eqz v8, :cond_2

    .line 7
    aget-wide v9, v8, v4

    sub-long v9, v1, v9

    cmp-long v11, v9, v6

    if-lez v11, :cond_2

    .line 8
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->f(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 9
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x2

    .line 10
    invoke-static {p1, v7, v6}, Lcom/papa/controller/component/inputmanagercompat/c;->g(Lcom/papa/controller/component/inputmanagercompat/c;II)V

    .line 11
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->f(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 12
    :cond_1
    aput-wide v1, v8, v4

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_2
    return-void
.end method
