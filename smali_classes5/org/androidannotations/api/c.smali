.class public Lorg/androidannotations/api/c;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/c$d;,
        Lorg/androidannotations/api/c$b;,
        Lorg/androidannotations/api/c$c;,
        Lorg/androidannotations/api/c$e;
    }
.end annotation


# static fields
.field private static final j:I = 0x134b

.field private static final k:I = 0xa

.field private static final l:Ljava/lang/String; = "user"

.field private static final m:Ljava/lang/String; = "ViewServer"

.field private static final n:Ljava/lang/String; = "4"

.field private static final o:Ljava/lang/String; = "4"

.field private static final p:Ljava/lang/String; = "PROTOCOL"

.field private static final q:Ljava/lang/String; = "SERVER"

.field private static final r:Ljava/lang/String; = "LIST"

.field private static final s:Ljava/lang/String; = "AUTOLIST"

.field private static final t:Ljava/lang/String; = "GET_FOCUS"

.field private static u:Lorg/androidannotations/api/c;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private final b:I

.field private c:Ljava/lang/Thread;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private h:Landroid/view/View;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/androidannotations/api/c;->b:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    iput p1, p0, Lorg/androidannotations/api/c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/androidannotations/api/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/c;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/androidannotations/api/c;->w(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lorg/androidannotations/api/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static synthetic c(Lorg/androidannotations/api/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/c;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lorg/androidannotations/api/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lorg/androidannotations/api/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static synthetic f(Lorg/androidannotations/api/c;Lorg/androidannotations/api/c$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/androidannotations/api/c;->j(Lorg/androidannotations/api/c$e;)V

    return-void
.end method

.method static synthetic g(Lorg/androidannotations/api/c;Lorg/androidannotations/api/c$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/androidannotations/api/c;->q(Lorg/androidannotations/api/c$e;)V

    return-void
.end method

.method private j(Lorg/androidannotations/api/c$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/c$e;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/c$e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/c$e;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/c$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m(Landroid/content/Context;)Lorg/androidannotations/api/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Lorg/androidannotations/api/c;

    const/16 v0, 0x134b

    invoke-direct {p0, v0}, Lorg/androidannotations/api/c;-><init>(I)V

    sput-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    .line 5
    :cond_0
    sget-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    invoke-virtual {p0}, Lorg/androidannotations/api/c;->n()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    :try_start_0
    sget-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    invoke-virtual {p0}, Lorg/androidannotations/api/c;->u()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Lorg/androidannotations/api/c$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/androidannotations/api/c$b;-><init>(Lorg/androidannotations/api/c$a;)V

    sput-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    .line 8
    :catch_0
    :cond_2
    :goto_0
    sget-object p0, Lorg/androidannotations/api/c;->u:Lorg/androidannotations/api/c;

    return-object p0
.end method

.method private q(Lorg/androidannotations/api/c$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static w(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 4
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7
    :catch_1
    :cond_0
    throw p0

    :catch_2
    nop

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public h(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/androidannotations/api/c;->i(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 4
    invoke-direct {p0}, Lorg/androidannotations/api/c;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 6
    throw p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/c;->p(Landroid/view/View;)V

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 6
    :try_start_1
    iget-object v0, p0, Lorg/androidannotations/api/c;->h:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/androidannotations/api/c;->h:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 9
    invoke-direct {p0}, Lorg/androidannotations/api/c;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 11
    throw p1

    :catchall_1
    move-exception p1

    .line 12
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 13
    throw p1
.end method

.method public r(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/c;->t(Landroid/view/View;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/androidannotations/api/c;->b:I

    const/16 v2, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/androidannotations/api/c;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/androidannotations/api/c;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lorg/androidannotations/api/c;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/androidannotations/api/c;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lorg/androidannotations/api/c$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lorg/androidannotations/api/c$d;-><init>(Lorg/androidannotations/api/c;Ljava/net/Socket;Lorg/androidannotations/api/c$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/androidannotations/api/c;->h:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 4
    invoke-direct {p0}, Lorg/androidannotations/api/c;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 6
    throw p1
.end method

.method public u()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/androidannotations/api/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/androidannotations/api/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    iget-object v0, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object v0, p0, Lorg/androidannotations/api/c;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    iput-object v1, p0, Lorg/androidannotations/api/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object v1, p0, Lorg/androidannotations/api/c;->c:Ljava/lang/Thread;

    .line 7
    :try_start_1
    iget-object v0, p0, Lorg/androidannotations/api/c;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 8
    iput-object v1, p0, Lorg/androidannotations/api/c;->a:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    .line 9
    :catch_1
    :cond_1
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    :try_start_2
    iget-object v0, p0, Lorg/androidannotations/api/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    iget-object v0, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 12
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 13
    :try_start_3
    iput-object v1, p0, Lorg/androidannotations/api/c;->h:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    iget-object v0, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/androidannotations/api/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 15
    throw v0

    :catchall_1
    move-exception v0

    .line 16
    iget-object v1, p0, Lorg/androidannotations/api/c;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 17
    throw v0
.end method
