.class public Lcom/papa/controller/core/ControllerManager;
.super Ljava/lang/Object;
.source "ControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/core/ControllerManager$ControllerManagerException;,
        Lcom/papa/controller/core/ControllerManager$d;,
        Lcom/papa/controller/core/ControllerManager$c;
    }
.end annotation


# static fields
.field private static i:Lcom/papa/controller/core/ControllerManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/component/bluetooth/a;

.field private d:Lcom/papa/controller/component/bluetooth/a$d;

.field private e:Lcom/papa/controller/component/inputmanagercompat/a;

.field private f:Lcom/papa/controller/component/inputmanagercompat/a$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ControllerManager"

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/ControllerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->l()V

    return-void
.end method

.method static synthetic b(Lcom/papa/controller/core/ControllerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->p()V

    return-void
.end method

.method private g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 4
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa/controller/core/ControllerManager$c;

    .line 6
    invoke-virtual {p2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static h(Landroid/content/Context;)Lcom/papa/controller/core/ControllerManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/core/ControllerManager;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa/controller/core/ControllerManager;->i:Lcom/papa/controller/core/ControllerManager;

    return-object p0
.end method

.method private i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/papa/controller/core/ControllerManager$ControllerManagerException;

    const-string v1, "Context is required!"

    invoke-direct {v0, p0, v1}, Lcom/papa/controller/core/ControllerManager$ControllerManagerException;-><init>(Lcom/papa/controller/core/ControllerManager;Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs j(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private k(I)Z
    .locals 2

    and-int/lit16 v0, p1, 0x401

    const/16 v1, 0x401

    if-eq v0, v1, :cond_1

    const v0, 0x1000010

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 3
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->m(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized m(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/ControllerManager$d;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/papa/controller/core/ControllerManager$d;->a(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    .line 7
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized n(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/ControllerManager$d;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/papa/controller/core/ControllerManager$d;->b(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    .line 7
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized o()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 3
    iget-object v3, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v2}, Lcom/papa/controller/core/ControllerManager;->n(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 7
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->m(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized p()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/ControllerManager;->d()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/papa/controller/core/ControllerManager;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/ControllerManager$c;

    .line 3
    iget-object v2, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v1}, Lcom/papa/controller/core/ControllerManager;->n(Lcom/papa/controller/core/ControllerManager$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {v1, v0}, Lcom/papa/controller/component/bluetooth/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/papa/controller/core/ControllerManager$a;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager$a;-><init>(Lcom/papa/controller/core/ControllerManager;)V

    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->d:Lcom/papa/controller/component/bluetooth/a$d;

    .line 5
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/a;->u(Lcom/papa/controller/component/bluetooth/a$d;)V

    .line 6
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/controller/component/inputmanagercompat/a$a;->a(Landroid/content/Context;)Lcom/papa/controller/component/inputmanagercompat/a;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/papa/controller/core/ControllerManager$b;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/ControllerManager$b;-><init>(Lcom/papa/controller/core/ControllerManager;)V

    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->f:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 5
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/papa/controller/component/inputmanagercompat/a;->c(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->y()V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager;->f:Lcom/papa/controller/component/inputmanagercompat/a$b;

    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a;->b(Lcom/papa/controller/component/inputmanagercompat/a$b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, v1, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    .line 3
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v0, v1, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Lcom/papa/controller/component/inputmanagercompat/a;->e()[I

    move-result-object v9

    .line 9
    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_4

    aget v0, v9, v11

    .line 10
    iget-object v12, v1, Lcom/papa/controller/core/ControllerManager;->e:Lcom/papa/controller/component/inputmanagercompat/a;

    invoke-interface {v12, v0}, Lcom/papa/controller/component/inputmanagercompat/a;->d(I)Landroid/view/InputDevice;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v12}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v13

    .line 12
    invoke-virtual {v12}, Landroid/view/InputDevice;->getSources()I

    move-result v14

    .line 13
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    const-string v0, "isExternal"

    const/4 v15, 0x0

    new-array v7, v8, [Ljava/lang/Object;

    .line 14
    invoke-static {v12, v0, v15, v7}, Lcom/papa/controller/core/ControllerManager;->j(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_2
    invoke-direct {v1, v14}, Lcom/papa/controller/core/ControllerManager;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v6, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0x10

    goto :goto_0

    .line 19
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, v1, Lcom/papa/controller/core/ControllerManager;->c:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 23
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    const/16 v10, 0x500

    if-ne v9, v10, :cond_5

    .line 24
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v9, v10, :cond_6

    .line 25
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 30
    new-instance v11, Lcom/papa/controller/core/ControllerManager$c;

    invoke-direct {v11}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 31
    invoke-virtual {v11, v7}, Lcom/papa/controller/core/ControllerManager$c;->f(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v11, v9}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v11, v10}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 34
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v7, 0x10

    if-ge v0, v7, :cond_8

    return-object v2

    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 39
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 40
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    const/4 v3, 0x1

    .line 42
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-le v0, v7, :cond_11

    const-string v9, "OTG"

    const-string v10, ""

    if-nez v3, :cond_e

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    sub-int/2addr v0, v7

    :goto_4
    if-ge v8, v0, :cond_11

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_c

    move-object v4, v10

    goto :goto_5

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_d

    move-object v5, v10

    goto :goto_6

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    new-instance v5, Lcom/papa/controller/core/ControllerManager$c;

    invoke-direct {v5}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 46
    invoke-virtual {v5, v3}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v5, v4}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 49
    :cond_e
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 50
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    .line 52
    :cond_f
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 54
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_10

    move-object v5, v10

    goto :goto_9

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    new-instance v8, Lcom/papa/controller/core/ControllerManager$c;

    invoke-direct {v8}, Lcom/papa/controller/core/ControllerManager$c;-><init>()V

    .line 57
    invoke-virtual {v8, v3}, Lcom/papa/controller/core/ControllerManager$c;->f(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v8, v7}, Lcom/papa/controller/core/ControllerManager$c;->h(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v8, v5}, Lcom/papa/controller/core/ControllerManager$c;->e(Ljava/lang/String;)V

    .line 60
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    return-object v2
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->g:Ljava/util/List;

    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public r(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->h:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->s()V

    .line 3
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->t()V

    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->v()V

    .line 2
    invoke-direct {p0}, Lcom/papa/controller/core/ControllerManager;->w()V

    return-void
.end method
