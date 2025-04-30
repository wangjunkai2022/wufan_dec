.class Lcom/mob/commons/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/i;


# direct methods
.method constructor <init>(Lcom/mob/commons/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mob/commons/h;

    if-eqz p1, :cond_5

    .line 3
    iget-object v0, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {v0}, Lcom/mob/commons/i;->b(Lcom/mob/commons/i;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {v0}, Lcom/mob/commons/i;->c(Lcom/mob/commons/i;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, v2, v5, v6}, Lcom/mob/commons/h;->a(ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;JZ)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {p1, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;Z)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;J)J

    .line 9
    iget-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {p1, v1}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;Z)V

    .line 10
    iget-object p1, p0, Lcom/mob/commons/i$1;->a:Lcom/mob/commons/i;

    invoke-static {p1}, Lcom/mob/commons/i;->a(Lcom/mob/commons/i;)V

    :cond_5
    :goto_1
    return v1
.end method
