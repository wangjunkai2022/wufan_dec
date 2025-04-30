.class public Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;
.super Landroid/app/Instrumentation;
.source "InstrumentationDelegate.java"


# instance fields
.field protected root:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method

.method private static varargs findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 5
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "result",
            "block"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object p1

    return-object p1
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "result",
            "block"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object p1

    return-object p1
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "icicle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "icicle",
            "persistentState"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "icicle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "icicle",
            "persistentState"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState",
            "persistentState"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState",
            "outPersistentState"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "monitor",
            "minHits"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result p1

    return p1
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 12
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
            "context",
            "iBinder",
            "iBinder2",
            "activity",
            "intent",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/app/Activity;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 13
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
            "context",
            "iBinder",
            "iBinder2",
            "activity",
            "intent",
            "i",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/app/Activity;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-class v5, Landroid/os/Bundle;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object p7, v3, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 14
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
            "context",
            "iBinder",
            "iBinder2",
            "activity",
            "intent",
            "i",
            "bundle",
            "userHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 21
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/app/Activity;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-class v5, Landroid/os/Bundle;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    const-class v5, Landroid/os/UserHandle;

    const/4 v13, 0x7

    aput-object v5, v4, v13

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object p7, v3, v12

    aput-object p8, v3, v13

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 12
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
            "context",
            "iBinder",
            "iBinder2",
            "fragment",
            "intent",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/app/Fragment;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 13
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
            "context",
            "iBinder",
            "iBinder2",
            "fragment",
            "intent",
            "i",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 17
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/app/Fragment;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-class v5, Landroid/os/Bundle;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object p7, v3, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 13
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
            "context",
            "iBinder",
            "iBinder2",
            "str",
            "intent",
            "i",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    const-string v2, "execStartActivity"

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/IBinder;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Landroid/content/Intent;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-class v5, Landroid/os/Bundle;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    invoke-static {v0, v2, v4}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->findDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object p7, v3, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetActivity",
            "id",
            "flag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result p1

    return p1
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetActivity",
            "id",
            "flag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    move-result p1

    return p1
.end method

.method public isProfiling()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "context",
            "token",
            "application",
            "intent",
            "info",
            "title",
            "parent",
            "id",
            "lastNonConfigurationInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runner"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendTrackballEventSync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->setAutomaticPerformanceSnapshots()V

    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inTouch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->start()V

    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public startPerformanceSnapshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    return-void
.end method

.method public startProfiling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startProfiling()V

    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopProfiling()V

    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipient"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waitForIdleSync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "monitor",
            "timeOut"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method
