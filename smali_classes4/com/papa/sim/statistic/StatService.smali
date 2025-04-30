.class public Lcom/papa/sim/statistic/StatService;
.super Landroid/app/Service;
.source "StatService.java"


# static fields
.field private static final m:Ljava/lang/String; = "StatService"


# instance fields
.field a:Lcom/papa/sim/statistic/db/b;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/a;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/papa/sim/statistic/pref/b;

.field e:Lcom/papa/sim/statistic/o;

.field f:Ljava/lang/Object;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/papa/sim/statistic/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->f:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->k:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/papa/sim/statistic/b;

    invoke-direct {v0}, Lcom/papa/sim/statistic/b;-><init>()V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->l:Lcom/papa/sim/statistic/b;

    return-void
.end method

.method static synthetic a(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/StatService;->i()V

    return-void
.end method

.method static synthetic b(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/StatService;->j()V

    return-void
.end method

.method static synthetic c(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/StatService;->k()V

    return-void
.end method

.method static synthetic d(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/StatService;->o()V

    return-void
.end method

.method private delete(Lcom/papa/sim/statistic/db/a;)Z
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/b;->d(Lcom/papa/sim/statistic/db/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/papa/sim/statistic/StatService;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private delete(Lcom/papa/sim/statistic/db/d;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/b;->delete(Lcom/papa/sim/statistic/db/d;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statservice deleStat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/papa/sim/statistic/StatService;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/StatService;->delete(Lcom/papa/sim/statistic/db/d;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/StatService;->p(Lcom/papa/sim/statistic/db/d;)V

    return-void
.end method

.method static synthetic g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/StatService;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic h(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/StatService;->q(Lcom/papa/sim/statistic/db/d;)V

    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->d:Lcom/papa/sim/statistic/pref/b;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa/sim/statistic/StatService;->m(J)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/q;->q(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/q;->r(Landroid/content/Context;)Z

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    .line 6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/papa/sim/statistic/StatService;->m(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->R1(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->d:Lcom/papa/sim/statistic/pref/b;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa/sim/statistic/StatService;->m(J)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/q;->q(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/q;->r(Landroid/content/Context;)Z

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    .line 6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/papa/sim/statistic/StatService;->m(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/papa/sim/statistic/h;->c()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameList is ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/p;->G0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/q;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";error::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 5
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, ""

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    sget-object v1, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, v1, p1}, Lcom/papa/sim/statistic/db/b;->i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/b;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/db/a;

    .line 4
    invoke-direct {p0, v1}, Lcom/papa/sim/statistic/StatService;->delete(Lcom/papa/sim/statistic/db/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/o;->a0(Lcom/papa/sim/statistic/db/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/db/b;->t(Lcom/papa/sim/statistic/db/a;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private p(Lcom/papa/sim/statistic/db/d;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/JoyStickConfig;->setId(I)V

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/o;->o0(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    :cond_0
    return-void
.end method

.method private q(Lcom/papa/sim/statistic/db/d;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setId(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/papa/sim/statistic/l;->b(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public m(J)Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p2, v5, :cond_0

    if-ne v2, v1, :cond_0

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/p;->o()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/b;->b()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/q;->q(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/papa/sim/statistic/StatService;->h:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/o;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    iput-object v1, p0, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->d:Lcom/papa/sim/statistic/pref/b;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v1

    iput-object v1, p0, Lcom/papa/sim/statistic/StatService;->d:Lcom/papa/sim/statistic/pref/b;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v1

    iput-object v1, p0, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    .line 11
    :cond_2
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/pref/b;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    monitor-exit v0

    return p1

    .line 13
    :cond_3
    new-instance v1, Lcom/papa/sim/statistic/StatService$a;

    invoke-direct {v1, p0}, Lcom/papa/sim/statistic/StatService$a;-><init>(Lcom/papa/sim/statistic/StatService;)V

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
