.class public Lbolts/h;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/h$p;,
        Lbolts/h$q;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/ExecutorService;

.field private static final j:Ljava/util/concurrent/Executor;

.field public static final k:Ljava/util/concurrent/Executor;

.field private static volatile l:Lbolts/h$q;

.field private static m:Lbolts/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/h<",
            "*>;"
        }
    .end annotation
.end field

.field private static n:Lbolts/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lbolts/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lbolts/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/h<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Z

.field private g:Lbolts/j;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbolts/g<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lbolts/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/h;->i:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Lbolts/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Lbolts/a;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/h;->k:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lbolts/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbolts/h;->m:Lbolts/h;

    .line 5
    new-instance v0, Lbolts/h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lbolts/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbolts/h;->n:Lbolts/h;

    .line 6
    new-instance v0, Lbolts/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lbolts/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbolts/h;->o:Lbolts/h;

    .line 7
    new-instance v0, Lbolts/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbolts/h;-><init>(Z)V

    sput-object v0, Lbolts/h;->p:Lbolts/h;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/h;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/h;->h:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lbolts/h;->T(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/h;->h:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lbolts/h;->R()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lbolts/h;->T(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static C()Lbolts/h$q;
    .locals 1

    .line 1
    sget-object v0, Lbolts/h;->l:Lbolts/h$q;

    return-object v0
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lbolts/h;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v2, p0}, Lbolts/g;->a(Lbolts/h;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 5
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lbolts/h;->h:Ljava/util/List;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static Q(Lbolts/h$q;)V
    .locals 0

    .line 1
    sput-object p0, Lbolts/h;->l:Lbolts/h$q;

    return-void
.end method

.method public static W(Ljava/util/Collection;)Lbolts/h;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lbolts/h<",
            "*>;>;)",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v6, Lbolts/i;

    invoke-direct {v6}, Lbolts/i;-><init>()V

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lbolts/h;

    .line 9
    new-instance v12, Lbolts/h$n;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v7

    move-object v3, v10

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lbolts/h$n;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/i;)V

    invoke-virtual {v11, v12}, Lbolts/h;->m(Lbolts/g;)Lbolts/h;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v6}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/util/Collection;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lbolts/h<",
            "TTResult;>;>;)",
            "Lbolts/h<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbolts/h;->W(Ljava/util/Collection;)Lbolts/h;

    move-result-object v0

    new-instance v1, Lbolts/h$m;

    invoke-direct {v1, p0}, Lbolts/h$m;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lbolts/h;->H(Lbolts/g;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/util/Collection;)Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lbolts/h<",
            "*>;>;)",
            "Lbolts/h<",
            "Lbolts/h<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/h;

    .line 6
    new-instance v3, Lbolts/h$l;

    invoke-direct {v3, v1, v0}, Lbolts/h$l;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/i;)V

    invoke-virtual {v2, v3}, Lbolts/h;->m(Lbolts/g;)Lbolts/h;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/util/Collection;)Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lbolts/h<",
            "TTResult;>;>;)",
            "Lbolts/h<",
            "Lbolts/h<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/h;

    .line 6
    new-instance v3, Lbolts/h$k;

    invoke-direct {v3, v1, v0}, Lbolts/h$k;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/i;)V

    invoke-virtual {v2, v3}, Lbolts/h;->m(Lbolts/g;)Lbolts/h;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/h;->h(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V

    return-void
.end method

.method static synthetic b(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/h;->g(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V

    return-void
.end method

.method public static c(Ljava/util/concurrent/Callable;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->i:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Callable;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lbolts/h$j;

    invoke-direct {v1, p2, v0, p0}, Lbolts/h$j;-><init>(Lbolts/c;Lbolts/i;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lbolts/ExecutorException;

    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lbolts/i;->c(Ljava/lang/Exception;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->i:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0, p1}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->p:Lbolts/h;

    return-object v0
.end method

.method private static g(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/i<",
            "TTContinuationResult;>;",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Lbolts/h<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lbolts/h$f;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/h$f;-><init>(Lbolts/c;Lbolts/i;Lbolts/g;Lbolts/h;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lbolts/ExecutorException;

    invoke-direct {p2, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lbolts/i;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static h(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/i<",
            "TTContinuationResult;>;",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Lbolts/h<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lbolts/h$e;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/h$e;-><init>(Lbolts/c;Lbolts/i;Lbolts/g;Lbolts/h;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lbolts/ExecutorException;

    invoke-direct {p2, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lbolts/i;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static u()Lbolts/h$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/h<",
            "TTResult;>.p;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbolts/h;

    invoke-direct {v0}, Lbolts/h;-><init>()V

    .line 2
    new-instance v1, Lbolts/h$p;

    invoke-direct {v1, v0}, Lbolts/h$p;-><init>(Lbolts/h;)V

    return-object v1
.end method

.method public static v(J)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lbolts/b;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lbolts/h;->x(JLjava/util/concurrent/ScheduledExecutorService;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static w(JLbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lbolts/b;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lbolts/h;->x(JLjava/util/concurrent/ScheduledExecutorService;Lbolts/c;)Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method static x(JLjava/util/concurrent/ScheduledExecutorService;Lbolts/c;)Lbolts/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Lbolts/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbolts/h;->e()Lbolts/h;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 5
    new-instance v1, Lbolts/h$g;

    invoke-direct {v1, v0}, Lbolts/h$g;-><init>(Lbolts/i;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v1, p0, p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    if-eqz p3, :cond_2

    .line 6
    new-instance p1, Lbolts/h$h;

    invoke-direct {p1, p0, v0}, Lbolts/h$h;-><init>(Ljava/util/concurrent/ScheduledFuture;Lbolts/i;)V

    invoke-virtual {p3, p1}, Lbolts/c;->b(Ljava/lang/Runnable;)Lbolts/d;

    .line 7
    :cond_2
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Exception;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lbolts/i;->c(Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lbolts/h;->m:Lbolts/h;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lbolts/h;->n:Lbolts/h;

    goto :goto_0

    :cond_1
    sget-object p0, Lbolts/h;->o:Lbolts/h;

    :goto_0
    return-object p0

    .line 4
    :cond_2
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lbolts/i;->setResult(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lbolts/i;->a()Lbolts/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lbolts/h;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lbolts/h;->f:Z

    .line 4
    iget-object v1, p0, Lbolts/h;->g:Lbolts/j;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lbolts/j;->a()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lbolts/h;->g:Lbolts/j;

    .line 7
    :cond_0
    iget-object v1, p0, Lbolts/h;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public B()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lbolts/h;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbolts/h;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbolts/h;->b:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lbolts/h;->A()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public G()Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbolts/h$i;

    invoke-direct {v0, p0}, Lbolts/h$i;-><init>(Lbolts/h;)V

    invoke-virtual {p0, v0}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    move-result-object v0

    return-object v0
.end method

.method public H(Lbolts/g;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;)",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/h;->K(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public I(Lbolts/g;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/h;->K(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public J(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lbolts/h;->K(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public K(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbolts/h$c;

    invoke-direct {v0, p0, p3, p1}, Lbolts/h$c;-><init>(Lbolts/h;Lbolts/c;Lbolts/g;)V

    invoke-virtual {p0, v0, p2}, Lbolts/h;->s(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public L(Lbolts/g;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;)",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/h;->N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public M(Lbolts/g;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/h;->O(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lbolts/h;->O(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public O(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbolts/h$d;

    invoke-direct {v0, p0, p3, p1}, Lbolts/h$d;-><init>(Lbolts/h;Lbolts/c;Lbolts/g;)V

    invoke-virtual {p0, v0, p2}, Lbolts/h;->s(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method R()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbolts/h;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lbolts/h;->b:Z

    .line 5
    iput-boolean v1, p0, Lbolts/h;->c:Z

    .line 6
    iget-object v2, p0, Lbolts/h;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-direct {p0}, Lbolts/h;->P()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method S(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbolts/h;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lbolts/h;->b:Z

    .line 5
    iput-object p1, p0, Lbolts/h;->e:Ljava/lang/Exception;

    .line 6
    iput-boolean v2, p0, Lbolts/h;->f:Z

    .line 7
    iget-object p1, p0, Lbolts/h;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    invoke-direct {p0}, Lbolts/h;->P()V

    .line 9
    iget-boolean p1, p0, Lbolts/h;->f:Z

    if-nez p1, :cond_1

    invoke-static {}, Lbolts/h;->C()Lbolts/h$q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lbolts/j;

    invoke-direct {p1, p0}, Lbolts/j;-><init>(Lbolts/h;)V

    iput-object p1, p0, Lbolts/h;->g:Lbolts/j;

    .line 11
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method T(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbolts/h;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lbolts/h;->b:Z

    .line 5
    iput-object p1, p0, Lbolts/h;->d:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lbolts/h;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-direct {p0}, Lbolts/h;->P()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public U()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lbolts/h;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lbolts/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public V(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lbolts/h;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lbolts/h;->a:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lbolts/h;->E()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()Lbolts/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/h<",
            "TTOut;>;"
        }
    .end annotation

    return-object p0
.end method

.method public i(Ljava/util/concurrent/Callable;Lbolts/g;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/g<",
            "Ljava/lang/Void;",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lbolts/h;->l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/concurrent/Callable;Lbolts/g;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/g<",
            "Ljava/lang/Void;",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0, p3}, Lbolts/h;->l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/g<",
            "Ljava/lang/Void;",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lbolts/h;->l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/g<",
            "Ljava/lang/Void;",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lbolts/f;

    invoke-direct {v7}, Lbolts/f;-><init>()V

    .line 2
    new-instance v8, Lbolts/h$o;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lbolts/h$o;-><init>(Lbolts/h;Lbolts/c;Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/f;)V

    invoke-virtual {v7, v8}, Lbolts/f;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lbolts/h;->G()Lbolts/h;

    move-result-object p1

    invoke-virtual {v7}, Lbolts/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbolts/g;

    invoke-virtual {p1, p2, p3}, Lbolts/h;->s(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public m(Lbolts/g;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;)",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/h;->p(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Lbolts/g;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/h;->p(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public o(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lbolts/h;->p(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public p(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lbolts/i;

    invoke-direct {v6}, Lbolts/i;-><init>()V

    .line 2
    iget-object v7, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lbolts/h;->E()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4
    iget-object v9, p0, Lbolts/h;->h:Ljava/util/List;

    new-instance v10, Lbolts/h$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/h$a;-><init>(Lbolts/h;Lbolts/i;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 6
    invoke-static {v6, p1, p0, p2, p3}, Lbolts/h;->h(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V

    .line 7
    :cond_1
    invoke-virtual {v6}, Lbolts/i;->a()Lbolts/h;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Lbolts/g;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;)",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/h;->t(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public r(Lbolts/g;Lbolts/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbolts/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lbolts/h;->t(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public s(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lbolts/h;->t(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public t(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/g<",
            "TTResult;",
            "Lbolts/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/c;",
            ")",
            "Lbolts/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lbolts/i;

    invoke-direct {v6}, Lbolts/i;-><init>()V

    .line 2
    iget-object v7, p0, Lbolts/h;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lbolts/h;->E()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4
    iget-object v9, p0, Lbolts/h;->h:Ljava/util/List;

    new-instance v10, Lbolts/h$b;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/h$b;-><init>(Lbolts/h;Lbolts/i;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 6
    invoke-static {v6, p1, p0, p2, p3}, Lbolts/h;->g(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V

    .line 7
    :cond_1
    invoke-virtual {v6}, Lbolts/i;->a()Lbolts/h;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
