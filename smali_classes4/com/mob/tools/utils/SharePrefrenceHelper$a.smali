.class final Lcom/mob/tools/utils/SharePrefrenceHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "M-"

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "002,fihi"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/mob/tools/utils/SharePrefrenceHelper$a$1;

    invoke-direct {v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a$1;-><init>()V

    invoke-static {v0, v1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "003(hjfdgd"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/SharePrefrenceHelper$a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/utils/SharePrefrenceHelper$a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "004Bigghfdel"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "004$gieffe!j"

    .line 9
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 11
    iput p2, p1, Landroid/os/Message;->what:I

    .line 12
    sget-object p2, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "\n"

    .line 9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    .line 13
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    .line 14
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    .line 15
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 16
    throw v1

    .line 17
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 24
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 26
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;B)V
    .locals 0

    .line 14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object p1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "004<igghfdel"

    .line 34
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "004GgieffeHj"

    .line 35
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 37
    iput v0, p1, Landroid/os/Message;->what:I

    .line 38
    sget-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public b()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "004Higghfdel"

    .line 14
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "004)gieffe!j"

    .line 15
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 17
    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    sget-object v1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;B)V

    return-void
.end method
