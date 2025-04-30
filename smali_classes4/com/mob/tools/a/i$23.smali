.class Lcom/mob/tools/a/i$23;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->be()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Ljava/util/ArrayList;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Lcom/mob/tools/a/i;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 2
    invoke-virtual {v0, v2}, Lcom/mob/tools/a/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    invoke-virtual {v2, v0}, Lcom/mob/tools/a/i;->a(Ljava/util/concurrent/BlockingQueue;)V

    .line 5
    iget-object v2, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    invoke-virtual {v2}, Lcom/mob/tools/a/i;->P()Z

    const-wide/16 v2, 0x4e20

    .line 6
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/mob/tools/a/i$23;->a:Lcom/mob/tools/a/i;

    invoke-virtual {v0}, Lcom/mob/tools/a/i;->O()Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/i$23;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
