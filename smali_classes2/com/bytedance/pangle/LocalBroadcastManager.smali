.class public final Lcom/bytedance/pangle/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/LocalBroadcastManager$a;,
        Lcom/bytedance/pangle/LocalBroadcastManager$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/bytedance/pangle/LocalBroadcastManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/LocalBroadcastManager;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->a:Landroid/content/Context;

    .line 6
    new-instance v0, Lcom/bytedance/pangle/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/bytedance/pangle/LocalBroadcastManager$1;-><init>(Lcom/bytedance/pangle/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->e:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/pangle/LocalBroadcastManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/LocalBroadcastManager;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/LocalBroadcastManager;->g:Lcom/bytedance/pangle/LocalBroadcastManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/bytedance/pangle/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/pangle/LocalBroadcastManager;->g:Lcom/bytedance/pangle/LocalBroadcastManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/bytedance/pangle/LocalBroadcastManager;->g:Lcom/bytedance/pangle/LocalBroadcastManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    new-array v2, v1, [Lcom/bytedance/pangle/LocalBroadcastManager$a;

    .line 5
    iget-object v3, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 8
    aget-object v4, v2, v3

    .line 9
    iget-object v5, v4, Lcom/bytedance/pangle/LocalBroadcastManager$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 10
    iget-object v7, v4, Lcom/bytedance/pangle/LocalBroadcastManager$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    .line 11
    iget-boolean v8, v7, Lcom/bytedance/pangle/LocalBroadcastManager$b;->d:Z

    if-nez v8, :cond_2

    .line 12
    iget-object v7, v7, Lcom/bytedance/pangle/LocalBroadcastManager$b;->b:Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;

    iget-object v8, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->a:Landroid/content/Context;

    iget-object v9, v4, Lcom/bytedance/pangle/LocalBroadcastManager$a;->a:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final registerReceiver(Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    invoke-direct {v1, p2, p1}, Lcom/bytedance/pangle/LocalBroadcastManager$b;-><init>(Landroid/content/IntentFilter;Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;)V

    .line 3
    iget-object v2, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v4, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v4, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    iget-object v5, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_2
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

.method public final sendBroadcast(Landroid/content/Intent;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 3
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resolving type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_10

    if-eqz v16, :cond_2

    const-string v3, "Action list: "

    .line 12
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    move-object v7, v3

    const/4 v6, 0x0

    .line 13
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_d

    .line 14
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    if-eqz v16, :cond_3

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Matching against filter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/bytedance/pangle/LocalBroadcastManager$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    :cond_3
    iget-boolean v3, v5, Lcom/bytedance/pangle/LocalBroadcastManager$b;->c:Z

    if-eqz v3, :cond_4

    move/from16 v18, v6

    move-object/from16 v20, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    const/4 v11, 0x1

    move-object v10, v7

    goto/16 :goto_4

    .line 17
    :cond_4
    iget-object v3, v5, Lcom/bytedance/pangle/LocalBroadcastManager$b;->a:Landroid/content/IntentFilter;

    const-string v17, "LocalBroadcastManager"

    move-object v4, v10

    move-object v15, v5

    move-object v5, v11

    move/from16 v18, v6

    move-object v6, v13

    move-object/from16 v19, v10

    move-object v10, v7

    move-object v7, v12

    move-object/from16 v20, v8

    move-object v8, v14

    move-object/from16 v21, v11

    const/4 v11, 0x1

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    if-eqz v16, :cond_5

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Filter matched!  match=0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-nez v10, :cond_6

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    move-object v7, v10

    .line 21
    :goto_2
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iput-boolean v11, v15, Lcom/bytedance/pangle/LocalBroadcastManager$b;->c:Z

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_c

    const/4 v4, -0x4

    if-eq v3, v4, :cond_b

    const/4 v4, -0x3

    if-eq v3, v4, :cond_a

    const/4 v4, -0x2

    if-eq v3, v4, :cond_9

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    const-string v3, "unknown reason"

    goto :goto_3

    :cond_8
    const-string v3, "type"

    goto :goto_3

    :cond_9
    const-string v3, "data"

    goto :goto_3

    :cond_a
    const-string v3, "action"

    goto :goto_3

    :cond_b
    const-string v3, "category"

    :goto_3
    const-string v4, "  Filter did not match: "

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    :goto_4
    move-object v7, v10

    :goto_5
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v11, v21

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_d
    move-object v10, v7

    const/4 v11, 0x1

    if-eqz v10, :cond_10

    const/4 v3, 0x0

    .line 24
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 25
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;->c:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 26
    :cond_e
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/bytedance/pangle/LocalBroadcastManager$a;

    invoke-direct {v4, v0, v10}, Lcom/bytedance/pangle/LocalBroadcastManager$a;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->e:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    iget-object v0, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->e:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    :cond_f
    monitor-exit v2

    return v11

    .line 30
    :cond_10
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final sendBroadcastSync(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/pangle/LocalBroadcastManager;->a()V

    :cond_0
    return-void
.end method

.method public final unregisterReceiver(Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_5

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    .line 6
    iput-boolean v3, v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;->d:Z

    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v6, v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 8
    iget-object v6, v4, Lcom/bytedance/pangle/LocalBroadcastManager$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    if-ltz v8, :cond_2

    .line 11
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/pangle/LocalBroadcastManager$b;

    .line 12
    iget-object v10, v9, Lcom/bytedance/pangle/LocalBroadcastManager$b;->b:Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;

    if-ne v10, p1, :cond_1

    .line 13
    iput-boolean v3, v9, Lcom/bytedance/pangle/LocalBroadcastManager$b;->d:Z

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 16
    iget-object v7, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 17
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
