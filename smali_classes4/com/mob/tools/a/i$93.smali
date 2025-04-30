.class Lcom/mob/tools/a/i$93;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->au()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$93;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/i$93;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/k;->c()Ljava/util/Enumeration;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 4
    iget-object v2, p0, Lcom/mob/tools/a/i$93;->a:Lcom/mob/tools/a/i;

    invoke-static {v2}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mob/tools/a/k;->a(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v1

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/i$93;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
