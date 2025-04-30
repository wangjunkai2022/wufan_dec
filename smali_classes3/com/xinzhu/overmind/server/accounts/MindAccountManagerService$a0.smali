.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a0"
.end annotation


# instance fields
.field private final a:I

.field final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/xinzhu/overmind/server/accounts/i;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h:Ljava/util/Map;

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/i;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i:Lcom/xinzhu/overmind/server/accounts/i;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->l:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    .line 14
    iput p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->l:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i:Lcom/xinzhu/overmind/server/accounts/i;

    return-object p0
.end method

.method static synthetic j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a:I

    return p0
.end method

.method static synthetic k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method l(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    .line 5
    iget v3, v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    if-ne v3, p3, :cond_0

    iget-object v3, v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    .line 7
    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method m(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    .line 5
    iget v2, v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    if-ne v2, p1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    .line 4
    iget v3, v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method o(ILjava/lang/String;Landroid/accounts/Account;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "authTokenType",
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    .line 3
    iget v5, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    .line 5
    invoke-virtual {v4, p3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method p(ILandroid/accounts/Account;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    .line 3
    iget v5, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->a:I

    if-ne v5, p1, :cond_0

    iget-object v4, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;->c:Landroid/accounts/Account;

    .line 4
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method q(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m:Ljava/util/List;

    new-instance v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    invoke-direct {v2, p3, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;-><init>(ILjava/lang/String;Landroid/accounts/Account;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
