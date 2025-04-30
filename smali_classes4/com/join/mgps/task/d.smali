.class public Lcom/join/mgps/task/d;
.super Ljava/lang/Object;
.source "ScanApClientThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field b:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/event/d;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/task/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/task/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/d;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/task/d;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/task/d;->e:Z

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/d;->a:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/task/d;->b:Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/task/d;->c:Ljava/util/List;

    .line 8
    iput-wide p3, p0, Lcom/join/mgps/task/d;->d:J

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ScanApClientThread: mTime::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/join/mgps/task/d;->d:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/event/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, " +"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x3

    .line 6
    aget-object v3, v0, v3

    const/4 v4, 0x0

    .line 7
    aget-object v5, v0, v4

    const-string v6, "..:..:..:..:..:.."

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    aget-object v6, v0, v4

    invoke-virtual {p0, v6}, Lcom/join/mgps/task/d;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v4, 0xbb8

    invoke-virtual {v0, v4}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v6

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v6, :cond_0

    .line 11
    :cond_2
    new-instance v0, Lcom/join/mgps/event/d;

    invoke-direct {v0, v6, v3, v5}, Lcom/join/mgps/event/d;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 13
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 14
    :catch_1
    throw p1

    :catch_2
    move-object v1, v0

    .line 15
    :catch_3
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_3
    return-object v1
.end method

.method b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/event/d;

    invoke-direct {v0}, Lcom/join/mgps/event/d;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/d;->f(Z)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping  -c 1 -W 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_1
    :cond_0
    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/task/d;->e:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/task/d;->e:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/d;->b:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/task/d;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/task/d;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: \u6570\u91cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/task/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/d;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 5
    iget-wide v0, p0, Lcom/join/mgps/task/d;->d:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
