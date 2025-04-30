.class public Lcom/mob/tools/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/e;->g:Ljava/lang/String;

    const/16 v0, 0xc1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/e;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/mob/tools/a/e$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/a/e$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;Lcom/mob/tools/a/e$a;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/mob/tools/a/e$a;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/a/e$a<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p2}, Lcom/mob/tools/a/e$a;->b()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 46
    iget-object v2, p0, Lcom/mob/tools/a/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/mob/tools/a/e$a;->d:I

    if-lt v2, v3, :cond_1

    if-nez p3, :cond_1

    .line 48
    invoke-static {p2}, Lcom/mob/tools/a/e$a;->a(Lcom/mob/tools/a/e$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/a/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    if-eqz p3, :cond_6

    .line 51
    :cond_3
    invoke-virtual {p2}, Lcom/mob/tools/a/e$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52
    iget-object p3, p0, Lcom/mob/tools/a/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p2}, Lcom/mob/tools/a/e$a;->b(Lcom/mob/tools/a/e$a;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p3, v2, v5

    if-lez p3, :cond_4

    .line 54
    iget-object p3, p0, Lcom/mob/tools/a/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2}, Lcom/mob/tools/a/e$a;->b(Lcom/mob/tools/a/e$a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v1, :cond_5

    .line 55
    iget-object p3, p0, Lcom/mob/tools/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_5
    iget-object p3, p0, Lcom/mob/tools/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 57
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_7

    .line 58
    invoke-static {p2}, Lcom/mob/tools/a/e$a;->a(Lcom/mob/tools/a/e$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_7
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc1

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0x80

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xc1

    .line 27
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpisys-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mob/tools/a/e$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, p1, v1}, Lcom/mob/tools/a/e$1;-><init>(Lcom/mob/tools/a/e;Landroid/content/pm/PackageInfo;Ljava/lang/String;I)V

    invoke-direct {p0, v2, v5}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;Lcom/mob/tools/a/e$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_3

    if-ne v1, v0, :cond_3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/a/e$2;

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/mob/tools/a/e$2;-><init>(Lcom/mob/tools/a/e;Landroid/content/pm/PackageInfo;Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/e;->a(Ljava/lang/String;Lcom/mob/tools/a/e$a;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/pm/PackageInfo;

    :cond_3
    return-object v2

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "035.bdbi_f?bfcabcVfScjKcgZbf*j3bcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 4
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    const-string v1, "011-ddCgb?dgCgh*bcbe g:cePf"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/tools/a/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 5

    .line 7
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "035PbdbiGf,bfcabcEfHcj=cgXbfPjZbcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 9
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    const-string v1, "011Vdd?gbBdg$gh.bcbe6g:ceFf"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array p1, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, v4

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/mob/tools/a/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "027^bdbi,f%bfcabcIfXcjcadecjcfbgde4bgjZefbfca^cg5bf=bIbcJg@de"

    .line 12
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "003Kdd6gb"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "027%bdbi-fMbfcabc]f3cjcadecjcfbgde7bgj?efbfcaKcg-bfCbRbc gLde"

    .line 16
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "003Rdd(gb"

    .line 17
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getInetAddresses"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "019i+ba$gTbfbgcebi;bg3biHb-cf@g>bf:h-bcbe=gUde"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    new-array p1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, p1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, p2

    .line 22
    invoke-static {v0, v1, v3, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 5

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "0396bdbi9f4bfcabc=fHcj2cg!bf@j?bcdedebccabicjcheeeeebcfcfbbdicecdebbbcidjeechcgcedjcd"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    .line 31
    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "045*bdbiMf[bfcabcSf:cj(cgRbfTj+bcdedebccabicjcheeeeebcfcfbbdhcheefhfiecdjcccddgbbcidjeechcgcedjcd"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "location"

    .line 32
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const-string v1, "022ObfDgiTbaGg$deFb.cicabebdBbRbccabicc2cf5bdSbg3de"

    .line 33
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v3, p3

    const/4 p1, 0x3

    aput-object p5, v3, p1

    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mob/commons/a/o;->b()Landroid/os/Looper;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, v3, p5

    new-array p4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, p4, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, p4, p2

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object p2, p4, p3

    const-class p2, Landroid/location/LocationListener;

    aput-object p2, p4, p1

    const-class p1, Landroid/os/Looper;

    aput-object p1, p4, p5

    .line 35
    invoke-static {v0, v1, v3, p4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 5

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "015=bf]g2decacb:hgZchbe.b2bc>hTbc*bYbg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    new-array p1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, p1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, p2

    .line 8
    invoke-static {v0, v1, v3, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "039AbdbiTfYbfcabc4fZcj3cg<bf*j@bcdedebccabicjcheeeeebcfcfbbdicecdebbbcidjeechcgcedjcd"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "045%bdbi$f(bfcabcNfGcj@cgBbf6j6bcdedebccabicjcheeeeebcfcfbbdhcheefhfiecdjcccddgbbcidjeechcgcedjcd"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "location"

    .line 12
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const-string v1, "020@ddYgb cibddeQbMfhbicadbbicicabebd%bAbccabi"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "035<bdbi$f9bfcabc8f8cj9cg(bfVj\'bcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    const-string v1, "015UddOgb<cfbadadebebfbcda7gGbfceFf"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/tools/a/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    const-string v1, "014IddAgbLcdEgbRdbcabfbhcgbg,cg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const-string v1, "035^bdbiDf0bfcabcCfLcj1cg3bf9jTbcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/e;->b:Ljava/lang/Object;

    const-string v1, "018+dd gb.dgbdPbCbdcdIgb+dbcabfbhcgbgLcg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public f()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
