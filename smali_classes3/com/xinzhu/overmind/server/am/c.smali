.class public Lcom/xinzhu/overmind/server/am/c;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# static fields
.field public static d:Ljava/lang/String; = "c"


# instance fields
.field private final a:Landroid/app/ActivityManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/am/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xinzhu/overmind/server/am/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->a:Landroid/app/ActivityManager;

    return-void
.end method

.method private C(ILjava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "callingPackage",
            "callingUid",
            "intent",
            "activityInfo",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "launchMode",
            "flags",
            "options",
            "newTask"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/c;->r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v5

    .line 2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/am/c;->F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;

    move-result-object v9

    if-eqz p13, :cond_0

    const/high16 v0, 0x8000000

    .line 3
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x80000

    .line 4
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    move/from16 v0, p10

    .line 6
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->H()Landroid/os/IBinder;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/p$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v8

    move-object/from16 v7, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v7 .. v15}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    const/4 v0, 0x0

    return v0
.end method

.method private D(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILjava/lang/String;ILcom/xinzhu/overmind/server/am/b;Landroid/content/pm/ActivityInfo;I)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options",
            "userId",
            "callingPackage",
            "callingUid",
            "sourceRecord",
            "activityInfo",
            "launchMode"
        }
    .end annotation

    move-object/from16 v0, p11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p12

    move-object/from16 v4, p3

    move/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v7, p10

    .line 1
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/am/c;->r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v6

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iput-object v1, v6, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 3
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    iput-object v1, v6, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    move-object/from16 v2, p0

    move/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p12

    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/am/c;->F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;

    move-result-object v10

    move/from16 v1, p13

    .line 5
    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    iget-object v9, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    move-object/from16 v8, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v8 .. v16}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "intent",
            "info",
            "record",
            "callingUid"
        }
    .end annotation

    move-object/from16 v5, p3

    .line 1
    new-instance v4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    move v3, p1

    move-object v1, p2

    move-object/from16 v0, p4

    invoke-direct {v4, p1, v5, p2, v0}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    const/4 v10, -0x1

    move v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v2, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    iget-boolean v6, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    move-object v0, p0

    move-object v1, p2

    move v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/c;->n(Landroid/content/Intent;IILcom/xinzhu/overmind/client/stub/record/StubActivityRecord;Landroid/content/pm/ActivityInfo;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create process, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private G()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->getRecentTasksContainPlugin(II)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 5
    iget-object v4, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/am/h;

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/xinzhu/overmind/server/am/b;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityRecord",
            "intent"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/client/c;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c(I)V
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
    iget-object p1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    .line 2
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    .line 5
    iget-boolean v2, v1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    if-eqz v2, :cond_1

    .line 6
    :try_start_0
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    invoke-interface {v2, v1}, Lcom/xinzhu/overmind/client/c;->finishActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "componentName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 2
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    if-ne p1, v3, :cond_0

    .line 3
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 4
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 2
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    if-ne p1, v3, :cond_0

    .line 3
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 4
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 2
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 3
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "taskAffinity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 3
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/h;->c:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private i(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/h;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 3
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    if-ne p1, v3, :cond_0

    .line 4
    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/am/b;

    .line 5
    iget-object v4, v4, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1

    .line 6
    monitor-exit v0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    .line 7
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private n(Landroid/content/Intent;IILcom/xinzhu/overmind/client/stub/record/StubActivityRecord;Landroid/content/pm/ActivityInfo;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "vpid",
            "userId",
            "target",
            "activityInfo",
            "runWithPlugin"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-direct {p0, p5, p3}, Lcom/xinzhu/overmind/server/am/c;->p(Landroid/content/pm/ActivityInfo;I)Z

    move-result p3

    .line 3
    invoke-direct {p0, p5}, Lcom/xinzhu/overmind/server/am/c;->q(Landroid/content/pm/ActivityInfo;)Z

    move-result p5

    if-eqz p6, :cond_0

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object p6

    :goto_0
    if-eqz p3, :cond_2

    if-nez p5, :cond_1

    .line 5
    new-instance p3, Landroid/content/ComponentName;

    invoke-static {p2}, Lcom/xinzhu/overmind/client/f;->i(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p3, Landroid/content/ComponentName;

    invoke-static {p2}, Lcom/xinzhu/overmind/client/f;->j(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    .line 7
    new-instance p3, Landroid/content/ComponentName;

    invoke-static {p2}, Lcom/xinzhu/overmind/client/f;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p3, Landroid/content/ComponentName;

    invoke-static {p2}, Lcom/xinzhu/overmind/client/f;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    :goto_1
    iget-object p2, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    iget p4, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mUserId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private o()Lcom/xinzhu/overmind/server/am/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private p(Landroid/content/pm/ActivityInfo;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ai",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/h;->getAppResources(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->R()[I

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    iget p1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->X()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 5
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->X()I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->Z()I

    move-result v1

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$e;->W()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    sget-object p1, Lcom/xinzhu/overmind/server/am/c;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifActivityFloating "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ifActivityFloating get Resources failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private q(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityInfo"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

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

.method private x(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->c()Lcom/xinzhu/haunted/android/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/m;->c(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/l;->i(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private y(Landroid/os/IBinder;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->c()Lcom/xinzhu/haunted/android/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/m;->d(Landroid/os/IBinder;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/l;->j(Landroid/os/IBinder;)I

    move-result p1

    return p1
.end method

.method private z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appThread",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    .line 3
    invoke-virtual/range {v1 .. v11}, Lcom/xinzhu/haunted/android/app/l;->startActivity(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/Object;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A(ILjava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "packageName",
            "callingUid",
            "intents",
            "resolvedTypes",
            "resultTo",
            "options"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "intents is null"

    .line 1
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "resolvedTypes is null"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v9, v0, v3

    aget-object v10, v1, v3

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v11, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v5 .. v15}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public B(Landroid/content/Intent;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    if-eqz v2, :cond_3

    .line 7
    iget v2, v1, Lcom/xinzhu/overmind/server/am/b;->userId:I

    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, v2, v3}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v4, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    if-eq v3, v4, :cond_2

    .line 9
    :cond_1
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v2

    .line 10
    :cond_2
    iget-object v1, v2, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    iget-object v4, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 11
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 12
    monitor-exit v0

    return p1

    .line 13
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "callingPackage",
            "callingUid",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v5, p4

    .line 1
    iget-object v1, v15, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v7, p5

    invoke-virtual {v1, v5, v2, v7, v0}, Lcom/xinzhu/overmind/server/pm/h;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 5
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    goto/16 :goto_17

    .line 6
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityLocked : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v1, p6

    .line 8
    invoke-direct {v15, v0, v1}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v4, :cond_2

    .line 9
    iget-object v8, v4, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_0
    invoke-static {v13}, Lcom/xinzhu/overmind/utils/r;->f(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x20000000

    .line 11
    invoke-virtual {v15, v5, v10}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v10, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v10, 0x1

    :goto_2
    const/high16 v11, 0x10000000

    .line 12
    invoke-virtual {v15, v5, v11}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v11

    const/high16 v12, 0x4000000

    .line 13
    invoke-virtual {v15, v5, v12}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v12

    const v14, 0x8000

    .line 14
    invoke-virtual {v15, v5, v14}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v14

    const/high16 v6, 0x2000000

    .line 15
    invoke-virtual {v15, v5, v6}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v6

    const v17, 0x2812000

    .line 16
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v18

    and-int v17, v18, v17

    .line 17
    iget v3, v13, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    const/high16 v3, 0x800000

    or-int v3, v17, v3

    move/from16 v17, v3

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v4, :cond_6

    .line 18
    iget-object v1, v4, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    if-eqz v1, :cond_6

    .line 19
    invoke-direct {v15, v0, v1}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_7

    .line 21
    sget-object v3, Lcom/xinzhu/overmind/server/am/c;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to forward result from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v19, v1

    .line 22
    iget v1, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_9

    if-eq v1, v2, :cond_9

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    .line 23
    :cond_8
    invoke-direct {v15, v0, v9}, Lcom/xinzhu/overmind/server/am/c;->h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;

    move-result-object v1

    goto :goto_4

    .line 24
    :cond_9
    invoke-direct {v15, v0, v9}, Lcom/xinzhu/overmind/server/am/c;->h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;

    move-result-object v1

    if-nez v1, :cond_a

    if-nez v11, :cond_a

    move-object v1, v8

    :cond_a
    :goto_4
    if-eqz v1, :cond_21

    .line 25
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, v8

    const/4 v7, 0x1

    goto/16 :goto_14

    .line 26
    :cond_b
    iget-object v6, v15, Lcom/xinzhu/overmind/server/am/c;->a:Landroid/app/ActivityManager;

    iget v9, v1, Lcom/xinzhu/overmind/server/am/h;->a:I

    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v12, :cond_d

    if-nez v10, :cond_d

    if-eqz v14, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_e

    .line 27
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 28
    invoke-static {v3, v5}, Lcom/xinzhu/overmind/utils/helpers/c;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 29
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v6

    if-ne v3, v6, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    const/4 v3, 0x0

    return v3

    .line 30
    :cond_f
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v9

    .line 31
    invoke-static {v13}, Lcom/xinzhu/overmind/utils/helpers/c;->e(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v15, v0, v3}, Lcom/xinzhu/overmind/server/am/c;->d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v3

    if-eqz v12, :cond_13

    if-eqz v3, :cond_13

    .line 32
    iget-object v6, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v6, v6, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    monitor-enter v6

    .line 33
    :try_start_1
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v4, v4, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_8
    if-ltz v4, :cond_12

    .line 34
    iget-object v2, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/b;

    if-eq v2, v3, :cond_10

    const/4 v7, 0x1

    .line 35
    iput-boolean v7, v2, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    const-string v8, "makerFinish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v7, p5

    move-object/from16 v8, v20

    const/4 v2, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v20, v8

    if-eqz v10, :cond_11

    move-object/from16 v16, v3

    goto :goto_a

    :cond_11
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, v3, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    goto :goto_9

    :cond_12
    move-object/from16 v20, v8

    :goto_9
    const/16 v16, 0x0

    .line 38
    :goto_a
    monitor-exit v6

    move-object/from16 v6, v16

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    move-object/from16 v20, v8

    const/4 v6, 0x0

    :goto_b
    if-eqz v10, :cond_17

    if-nez v12, :cond_17

    .line 39
    iget-object v2, v9, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    invoke-static {v2, v5}, Lcom/xinzhu/overmind/utils/helpers/c;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v6, v9

    goto :goto_d

    .line 40
    :cond_14
    iget-object v2, v15, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    monitor-enter v2

    .line 41
    :try_start_2
    iget-object v3, v15, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xinzhu/overmind/server/am/b;

    .line 42
    iget-boolean v8, v7, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    if-nez v8, :cond_15

    iget-object v7, v7, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v4, 0x1

    goto :goto_c

    .line 43
    :cond_16
    monitor-exit v2

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_17
    :goto_d
    const/4 v4, 0x0

    .line 44
    :goto_e
    iget v2, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    if-nez v12, :cond_1a

    .line 45
    iget-object v2, v9, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    invoke-static {v2, v5}, Lcom/xinzhu/overmind/utils/helpers/c;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v6, v9

    goto :goto_10

    .line 46
    :cond_18
    invoke-static {v13}, Lcom/xinzhu/overmind/utils/helpers/c;->e(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/am/c;->d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 47
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    monitor-enter v3

    .line 48
    :try_start_3
    iget-object v6, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_f
    if-ltz v6, :cond_19

    .line 49
    iget-object v8, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/overmind/server/am/b;

    if-eq v8, v2, :cond_19

    .line 50
    iput-boolean v7, v8, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_f

    .line 51
    :cond_19
    monitor-exit v3

    move-object v6, v2

    goto :goto_10

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 52
    :cond_1a
    :goto_10
    iget v2, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    move-object v6, v9

    :cond_1b
    if-eqz v14, :cond_1c

    if-eqz v11, :cond_1c

    .line 53
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    const/4 v7, 0x1

    .line 54
    iput-boolean v7, v3, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    goto :goto_11

    .line 55
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    if-eqz v6, :cond_1d

    .line 56
    invoke-direct {v15, v6, v5}, Lcom/xinzhu/overmind/server/am/c;->b(Lcom/xinzhu/overmind/server/am/b;Landroid/content/Intent;)V

    const/4 v2, 0x0

    return v2

    :cond_1d
    const/4 v2, 0x0

    if-eqz v4, :cond_1e

    return v2

    :cond_1e
    if-nez v19, :cond_1f

    .line 57
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 58
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    move-object/from16 v19, v1

    goto :goto_12

    :cond_1f
    if-eqz v20, :cond_20

    .line 59
    invoke-virtual/range {v20 .. v20}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 60
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    move-object v4, v1

    goto :goto_13

    :cond_20
    :goto_12
    move-object/from16 v4, v19

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object v12, v9

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v14, v17

    .line 61
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/am/c;->D(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILjava/lang/String;ILcom/xinzhu/overmind/server/am/b;Landroid/content/pm/ActivityInfo;I)I

    move-result v0

    return v0

    :cond_21
    const/4 v7, 0x1

    move-object v6, v8

    :goto_14
    if-ne v1, v6, :cond_23

    if-eqz v1, :cond_22

    goto :goto_15

    :cond_22
    const/4 v14, 0x0

    goto :goto_16

    :cond_23
    :goto_15
    const/4 v14, 0x1

    :goto_16
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p5

    move-object/from16 v8, v19

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, v17

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 62
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/am/c;->C(ILjava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)I

    move-result v0

    return v0

    :cond_24
    :goto_17
    const/4 v0, 0x0

    return v0

    :catchall_3
    move-exception v0

    .line 63
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18
.end method

.method public a(Landroid/content/Intent;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "flag"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(I)Lcom/xinzhu/overmind/server/am/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 3
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->a:I

    if-ne v3, p1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public j(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromPackage:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->x(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/os/IBinder;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromUid:I

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->y(Landroid/os/IBinder;)I

    move-result p1

    return p1
.end method

.method r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "info",
            "resultTo",
            "userId",
            "launchedFromPackage",
            "launchedFromUid"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/xinzhu/overmind/server/am/b;->create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(Lcom/xinzhu/overmind/server/ProcessRecord;ILandroid/os/IBinder;Lcom/xinzhu/overmind/server/am/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processRecord",
            "taskId",
            "token",
            "record"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/server/am/h;

    iget v2, p4, Lcom/xinzhu/overmind/server/am/b;->userId:I

    iget-object v3, p4, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/xinzhu/overmind/utils/r;->f(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Lcom/xinzhu/overmind/server/am/h;-><init>(IILjava/lang/String;)V

    .line 8
    iget-object v2, p4, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    iput-object v2, v0, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 9
    iget-object v2, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iput-object p3, p4, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 11
    iput-object p1, p4, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 12
    iput-object v0, p4, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 13
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/am/h;->a(Lcom/xinzhu/overmind/server/am/b;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onActivityCreated : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget p1, p4, Lcom/xinzhu/overmind/server/am/b;->userId:I

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public t(ILandroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->d(Lcom/xinzhu/overmind/server/am/b;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u(ILandroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->d(Lcom/xinzhu/overmind/server/am/b;)V

    .line 7
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->a(Lcom/xinzhu/overmind/server/am/b;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(ILandroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishActivity : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(ILandroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p2, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/b;

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v2, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishActivityAffinity token : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
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
