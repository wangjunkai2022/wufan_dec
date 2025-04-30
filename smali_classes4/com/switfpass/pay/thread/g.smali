.class public Lcom/switfpass/pay/thread/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/switfpass/pay/thread/h;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/switfpass/pay/thread/j;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/thread/j;-><init>(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance v0, Lcom/switfpass/pay/thread/l;

    invoke-direct {v0, p1, p0}, Lcom/switfpass/pay/thread/l;-><init>(Lcom/switfpass/pay/thread/e;Lcom/switfpass/pay/thread/b;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
