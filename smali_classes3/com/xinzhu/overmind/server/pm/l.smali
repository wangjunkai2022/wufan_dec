.class public abstract Lcom/xinzhu/overmind/server/pm/l;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/l$d;,
        Lcom/xinzhu/overmind/server/pm/l$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "PackageManager"

.field private static final m:Z = false

.field protected static final n:Ljava/lang/String; = "registered_services"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field protected final e:Ljava/lang/Object;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xinzhu/overmind/server/pm/l$e<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private g:Lcom/xinzhu/overmind/server/pm/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xinzhu/overmind/server/pm/m<",
            "TV;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private final i:Lcom/xinzhu/overmind/server/pm/j;

.field private final j:Lcom/xinzhu/overmind/server/user/b;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "interfaceName",
            "metaDataName",
            "attributeName"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->f:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/pm/l$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/l$a;-><init>(Lcom/xinzhu/overmind/server/pm/l;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->i:Lcom/xinzhu/overmind/server/pm/j;

    .line 5
    new-instance v1, Lcom/xinzhu/overmind/server/pm/l$b;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/pm/l$b;-><init>(Lcom/xinzhu/overmind/server/pm/l;)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->j:Lcom/xinzhu/overmind/server/user/b;

    .line 6
    new-instance v2, Lcom/xinzhu/overmind/server/pm/l$c;

    invoke-direct {v2, p0}, Lcom/xinzhu/overmind/server/pm/l$c;-><init>(Lcom/xinzhu/overmind/server/pm/l;)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/l;->k:Landroid/content/BroadcastReceiver;

    .line 7
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/l;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/l;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/xinzhu/overmind/server/pm/l;->c:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/xinzhu/overmind/server/pm/l;->d:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xinzhu/overmind/server/pm/h;->addPackageMonitor(Lcom/xinzhu/overmind/server/pm/j;)V

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xinzhu/overmind/server/user/c;->registerListener(Lcom/xinzhu/overmind/server/user/b;)V

    return-void
.end method

.method public static synthetic g(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/l;->r(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V

    return-void
.end method

.method static synthetic h(Lcom/xinzhu/overmind/server/pm/l;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/l;->q(Landroid/content/Intent;I)V

    return-void
.end method

.method private i(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceInfos",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/l$d;

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private j(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceInfos",
            "type",
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 3
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, v3, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    if-ne v3, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private k([Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedUids",
            "uid"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/d;->f([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method private l(I)Lcom/xinzhu/overmind/server/pm/l$e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xinzhu/overmind/server/pm/l$e<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/l$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/l$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/pm/l$e;-><init>(Lcom/xinzhu/overmind/server/pm/l$a;)V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private m([Ljava/lang/Integer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedUids",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/pm/l;->x(I)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/l;->w(Landroid/content/pm/ResolveInfo;)Lcom/xinzhu/overmind/server/pm/l$d;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load service info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load service info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object v2

    .line 10
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 13
    iget-object v9, v2, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    iget-object v10, v8, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_7

    .line 14
    iget-object v7, v2, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    iget-object v9, v8, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v7, v2, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    iget-object v9, v8, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    iget v10, v8, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean v7, v2, Lcom/xinzhu/overmind/server/pm/l$e;->c:Z

    if-eqz v7, :cond_5

    if-nez v3, :cond_6

    .line 17
    :cond_5
    iget-object v7, v8, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-direct {p0, v7, p2, v4}, Lcom/xinzhu/overmind/server/pm/l;->s(Ljava/lang/Object;IZ)V

    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v8, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    if-ne v9, v10, :cond_4

    .line 19
    iget-object v9, v2, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    iget-object v10, v8, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    invoke-direct {p0, v0, v6}, Lcom/xinzhu/overmind/server/pm/l;->i(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v2, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    .line 23
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-direct {p0, p1, v8}, Lcom/xinzhu/overmind/server/pm/l;->k([Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 24
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-direct {p0, v0, p2, v5}, Lcom/xinzhu/overmind/server/pm/l;->s(Ljava/lang/Object;IZ)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    if-eqz v7, :cond_c

    .line 29
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/pm/l;->t(I)V

    .line 30
    :cond_c
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private q(Landroid/content/Intent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "android.intent.extra.REPLACING"

    .line 4
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v4, "android.intent.extra.UID"

    .line 5
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_3

    new-array v0, v2, [Ljava/lang/Integer;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    .line 7
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/xinzhu/overmind/server/pm/l;->m([Ljava/lang/Integer;I)V

    :goto_2
    return-void
.end method

.method private static synthetic r(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/m;->a(Ljava/lang/Object;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "PackageManager"

    const-string p2, "Exception from onServiceChanged"

    .line 2
    invoke-static {p1, p2, p0}, Lcom/xinzhu/overmind/utils/u;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private s(Ljava/lang/Object;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "userId",
            "removed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->g:Lcom/xinzhu/overmind/server/pm/m;

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->h:Landroid/os/Handler;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v2, Lcom/xinzhu/overmind/server/pm/k;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/k;-><init>(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    .line 4
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/l;->t(I)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 8
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/b;

    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/l$d;->b:Landroid/content/pm/ComponentInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v3}, Lcom/xinzhu/haunted/android/content/pm/b;->D()I

    move-result v3

    int-to-long v3, v3

    .line 10
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/l$d;->b:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, p1}, Lcom/xinzhu/overmind/server/pm/h;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v6, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {v6, v5}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/xinzhu/haunted/android/content/pm/b;->D()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    :cond_2
    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :cond_3
    iget v2, v2, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/l;->m([Ljava/lang/Integer;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public c(Lcom/xinzhu/overmind/server/pm/m;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/m<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/l;->h:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/l;->g:Lcom/xinzhu/overmind/server/pm/m;

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, p1}, Lcom/xinzhu/overmind/server/pm/l;->m([Ljava/lang/Integer;I)V

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "fout",
            "args",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object p3

    .line 3
    iget-object p4, p3, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    if-eqz p4, :cond_0

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RegisteredServicesCache: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " services"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    iget-object p3, p3, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "RegisteredServicesCache: services not loaded"

    .line 7
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public n()Lcom/xinzhu/overmind/server/pm/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xinzhu/overmind/server/pm/m<",
            "TV;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->g:Lcom/xinzhu/overmind/server/pm/m;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected o(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object p1

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/l$e;->a:Ljava/util/Map;

    return-object p1
.end method

.method public p(Ljava/lang/Object;I)Lcom/xinzhu/overmind/server/pm/l$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/l;->l(I)Lcom/xinzhu/overmind/server/pm/l$e;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, p2}, Lcom/xinzhu/overmind/server/pm/l;->m([Ljava/lang/Integer;I)V

    .line 5
    :cond_0
    iget-object p2, v1, Lcom/xinzhu/overmind/server/pm/l$e;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/l$d;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    return-void
.end method

.method protected u(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

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

.method public abstract v(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "packageName",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method protected w(Landroid/content/pm/ResolveInfo;)Lcom/xinzhu/overmind/server/pm/l$d;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/l;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    .line 7
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 8
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lcom/xinzhu/overmind/server/pm/l;->d:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v5}, Lcom/xinzhu/overmind/server/pm/l;->v(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 12
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    .line 13
    :cond_2
    :try_start_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 14
    new-instance v1, Lcom/xinzhu/overmind/server/pm/l$d;

    invoke-direct {v1, v3, p1, v2}, Lcom/xinzhu/overmind/server/pm/l$d;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    .line 16
    :cond_3
    :try_start_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-object v1, v4

    goto :goto_1

    .line 17
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 18
    :catch_1
    :goto_1
    :try_start_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load resources for pacakge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v1, :cond_5

    .line 19
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 20
    :cond_5
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected x(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/l;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc0080

    .line 4
    invoke-virtual {v1, v0, v3, v2, p1}, Lcom/xinzhu/overmind/server/pm/h;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
