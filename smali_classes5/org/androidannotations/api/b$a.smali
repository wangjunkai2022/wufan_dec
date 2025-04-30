.class final Lorg/androidannotations/api/b$a;
.super Landroid/os/Handler;
.source "UiThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/androidannotations/api/b$b;

    invoke-static {p1}, Lorg/androidannotations/api/b;->a(Lorg/androidannotations/api/b$b;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
