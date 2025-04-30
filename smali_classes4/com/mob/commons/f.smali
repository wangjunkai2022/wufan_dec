.class public Lcom/mob/commons/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mob/commons/f;


# instance fields
.field private c:Lcom/mob/tools/network/NetCommunicator;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0041dkXgGchdc"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "025_chchchchghfhfhghQgg?hbgcgc(ekke_efefdkdgdgdghbfb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/commons/f;->d:Ljava/text/SimpleDateFormat;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mob/commons/f;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mob/commons/f;->g:I

    .line 6
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/f;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    new-instance v0, Lcom/mob/commons/f$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/f$1;-><init>(Lcom/mob/commons/f;)V

    iput-object v0, p0, Lcom/mob/commons/f;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/f;
    .locals 2

    const-class v0, Lcom/mob/commons/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/commons/f;->b:Lcom/mob/commons/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/commons/f;

    invoke-direct {v1}, Lcom/mob/commons/f;-><init>()V

    sput-object v1, Lcom/mob/commons/f;->b:Lcom/mob/commons/f;

    .line 5
    :cond_0
    sget-object v1, Lcom/mob/commons/f;->b:Lcom/mob/commons/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    .line 50
    :try_start_0
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    return-object v0

    .line 51
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 56
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 58
    :goto_1
    :try_start_3
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const-string p1, "023UeeRhcYdgFcPcecfcidhcgcecf$hRdgEcUcgcdcjeehbdbdb*k"

    .line 59
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v1, :cond_3

    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    return-object p1

    .line 61
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v1, :cond_5

    .line 62
    :try_start_6
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_5
    return-object p1

    :catchall_5
    move-exception p1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 63
    :catchall_6
    :cond_6
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized a(ILjava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    invoke-static {}, Lcom/mob/commons/e;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    .line 16
    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    .line 17
    :goto_1
    iput p4, v1, Landroid/os/Message;->arg1:I

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p4, v0

    if-nez p2, :cond_3

    move-object p2, p3

    :cond_3
    aput-object p2, p4, v2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p2

    const/4 p1, 0x3

    invoke-direct {p0}, Lcom/mob/commons/f;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p1

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/mob/commons/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/mob/commons/f$2;

    invoke-direct {p2, p0, v1}, Lcom/mob/commons/f$2;-><init>(Lcom/mob/commons/f;Landroid/os/Message;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/os/Message;)V
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/mob/commons/f;->c(Ljava/util/HashMap;)V

    .line 23
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "saa"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    const-string v1, "002^efFg"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    const-string v1, "004Jdccdef6c"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "002-cf1c"

    .line 30
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 31
    aget-object v4, v0, v2

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 32
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {p0, v2}, Lcom/mob/commons/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 33
    :cond_2
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\r\n\t"

    const-string v5, " "

    .line 35
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n\t"

    .line 36
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    .line 37
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v4, "002k0ee"

    .line 38
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mob/commons/f;->d:Ljava/text/SimpleDateFormat;

    aget-object v3, v0, v3

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v7, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "002hc"

    .line 39
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v4, v0, v6

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "002dNdb"

    .line 40
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    const-string v1, "0048dccdef>c"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/mob/commons/e;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const-wide/16 v0, 0xa

    .line 44
    invoke-direct {p0}, Lcom/mob/commons/f;->e()Z

    move-result p1

    if-nez p1, :cond_5

    const-wide/16 v0, 0x78

    .line 45
    :cond_5
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object p1

    iget-object v2, p0, Lcom/mob/commons/f;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/commons/a/o;->b(JLjava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/f;Landroid/os/Message;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/commons/f;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/commons/f;->b(Ljava/util/HashMap;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    .line 47
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 48
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mob/commons/f;->b(Ljava/util/HashMap;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 49
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/mob/commons/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/commons/q;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "006h!cgcgdbcgef"

    .line 6
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/mob/commons/f;->d()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/commons/c;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "004fgKcgdc"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "saa"

    .line 9
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdrl"

    invoke-static {v2}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sdrl"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/f;->c:Lcom/mob/tools/network/NetCommunicator;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/mob/commons/f;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/mob/commons/f;->c(Ljava/util/HashMap;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/mob/commons/f;->f()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    array-length v1, v0

    if-lez v1, :cond_3

    .line 9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 11
    invoke-direct {p0, v4}, Lcom/mob/commons/f;->a(Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/commons/f;->d(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mob/commons/f;->d(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 16
    :catchall_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/commons/f;->c:Lcom/mob/tools/network/NetCommunicator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/network/NetCommunicator;

    const/16 v1, 0x400

    const-string v2, "ab0a0a6473d1891d388773574764b239d4ad80cb2fd3a83d81d03901c1548c13fee7c9692c326e6682b239d4c5d0021d1b607642c47ec29f10b0602908c3e6c9"

    const-string v3, "23c3c8cb41c47dd288cc7f4c218fbc7c839a34e0a0d1b2130e87b7914936b120a2d6570ee7ac66282328d50f2acfd82f2259957c89baea32547758db05de9cd7c6822304c8e45742f24bbbe41c1e12f09e18c6fab4d078065f2e5aaed94c900c66e8bbf8a120eefa7bd1fb52114d529250084f5f6f369ed4ce9645978dd30c51"

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/tools/network/NetCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/commons/f;->c:Lcom/mob/tools/network/NetCommunicator;

    :cond_0
    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/mob/commons/f;->f()Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/commons/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    array-length v2, v2

    if-lez v2, :cond_2

    .line 11
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/commons/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private e()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "004LcjdbcjGh"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->getDataCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/mob/commons/f;->g:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ld vr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ILjava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
