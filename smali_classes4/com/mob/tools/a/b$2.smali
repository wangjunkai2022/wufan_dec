.class Lcom/mob/tools/a/b$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/b;->a(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/mob/tools/a/b;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/b$2;->b:Lcom/mob/tools/a/b;

    iput-object p2, p0, Lcom/mob/tools/a/b$2;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/a/b$2;->b:Lcom/mob/tools/a/b;

    invoke-virtual {p1, p0}, Lcom/mob/tools/a/b;->a(Landroid/content/BroadcastReceiver;)V

    const-string p1, "android.net.wifi.SCAN_RESULTS"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mob/tools/a/b$2;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
