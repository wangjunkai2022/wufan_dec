.class public final Lcom/xinzhu/overmind/client/hook/delegate/b;
.super Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/e;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/xinzhu/overmind/client/hook/delegate/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/hook/delegate/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/d;->c()Lcom/xinzhu/overmind/client/hook/d;

    move-result-object v0

    const-class v1, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/hook/d;->b(Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/d;->c()Lcom/xinzhu/overmind/client/hook/d;

    move-result-object v0

    const-class v1, Lcom/xinzhu/overmind/client/hook/delegate/b;

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/hook/d;->b(Ljava/lang/Class;)V

    return-void
.end method

.method private d(Landroid/app/Instrumentation;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/xinzhu/overmind/client/hook/delegate/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 6
    const-class v7, Landroid/app/Instrumentation;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    instance-of v6, v6, Lcom/xinzhu/overmind/client/hook/delegate/b;

    if-eqz v6, :cond_2

    return v1

    :catch_0
    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 11
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3
.end method

.method public static e()Lcom/xinzhu/overmind/client/hook/delegate/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/b;->b:Lcom/xinzhu/overmind/client/hook/delegate/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xinzhu/overmind/client/hook/delegate/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/client/hook/delegate/b;->b:Lcom/xinzhu/overmind/client/hook/delegate/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/b;

    invoke-direct {v1}, Lcom/xinzhu/overmind/client/hook/delegate/b;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/client/hook/delegate/b;->b:Lcom/xinzhu/overmind/client/hook/delegate/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/b;->b:Lcom/xinzhu/overmind/client/hook/delegate/b;

    return-object v0
.end method

.method private f()Landroid/app/Instrumentation;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->U()Landroid/app/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method private g(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedOrientation"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/16 v5, 0x12

    if-lt v0, v5, :cond_2

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private h(Landroid/app/Instrumentation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/app/Instrumentation;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    iget-object v4, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    sget-object v3, Lcom/xinzhu/overmind/client/hook/delegate/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolve third party conflict instrumentation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->f()Landroid/app/Instrumentation;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/xinzhu/overmind/client/hook/delegate/b;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->f()Landroid/app/Instrumentation;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->h(Landroid/app/Instrumentation;)V

    .line 4
    :cond_1
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    .line 5
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/xinzhu/haunted/android/app/g;->k0(Landroid/app/Instrumentation;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->b()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callActivityOnCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Lcom/xinzhu/haunted/android/app/a;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/a;->h()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ActivityFixer;->fix(Landroid/app/Activity;)V

    .line 6
    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 8
    :cond_0
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

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
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityDestroyed(Landroid/app/Activity;)V

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
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityPaused(Landroid/app/Activity;)V

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
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnResume(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityResumed(Landroid/app/Activity;)V

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
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnStart(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityStarted(Landroid/app/Activity;)V

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
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callActivityOnStop(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/a;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->b()V

    .line 2
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
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

    .line 4
    invoke-super/range {p0 .. p6}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0
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

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0
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

    .line 6
    invoke-super/range {p0 .. p8}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
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

    .line 3
    invoke-super/range {p0 .. p6}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0
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

    .line 5
    invoke-super/range {p0 .. p7}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0
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

    .line 2
    invoke-super/range {p0 .. p7}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
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

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
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
    invoke-static {p3}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/client/e;->loadXposed(Landroid/content/Context;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method
