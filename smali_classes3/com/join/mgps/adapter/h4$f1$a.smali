.class Lcom/join/mgps/adapter/h4$f1$a;
.super Ljava/lang/Thread;
.source "PapaMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4$f1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/h4$f1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4$f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$f1$a;->a:Lcom/join/mgps/adapter/h4$f1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$f1$a;->a:Lcom/join/mgps/adapter/h4$f1;

    iget-object v0, v0, Lcom/join/mgps/adapter/h4$f1;->a:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->B(Lcom/join/mgps/adapter/h4;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
