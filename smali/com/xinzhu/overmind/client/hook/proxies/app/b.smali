.class public Lcom/xinzhu/overmind/client/hook/proxies/app/b;
.super Ljava/lang/Object;
.source "HCallbackStub.java"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/e;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final c:Ljava/lang/String; = "HCallbackStub"


# instance fields
.field private a:Landroid/os/Handler$Callback;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private b()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->S()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/os/Handler$Callback;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/os/e;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/os/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/e;->b()Landroid/os/Handler$Callback;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientTransaction"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/servertransaction/a;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/app/servertransaction/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/servertransaction/a;->d()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/xinzhu/haunted/android/app/servertransaction/b;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    new-instance v2, Lcom/xinzhu/haunted/android/app/servertransaction/b;

    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/app/servertransaction/b;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/servertransaction/b;->f()Landroid/content/Intent;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/xinzhu/haunted/android/app/servertransaction/a;

    invoke-direct {v4, p1}, Lcom/xinzhu/haunted/android/app/servertransaction/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/xinzhu/haunted/android/app/servertransaction/a;->e()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lcom/xinzhu/haunted/android/app/g$a;

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/g$a;->j()Landroid/content/Intent;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/g$a;->l()Landroid/os/IBinder;

    move-result-object p1

    :goto_1
    if-nez v3, :cond_3

    return v1

    .line 10
    :cond_3
    invoke-static {v3}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    move-result-object v3

    .line 11
    iget-object v4, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_a

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object p1

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v2, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mUserId:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/xinzhu/overmind/client/frameworks/a;->v(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    .line 14
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xinzhu/overmind/client/e;->isInit()Z

    move-result v5

    if-nez v5, :cond_5

    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object p1

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/xinzhu/overmind/client/e;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 16
    :cond_5
    new-instance v5, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v1}, Lcom/xinzhu/haunted/android/app/l;->k(Landroid/os/IBinder;Z)I

    move-result v5

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v6

    iget-object v7, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    invoke-virtual {v6, v5, p1, v7}, Lcom/xinzhu/overmind/client/frameworks/a;->l(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 19
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lcom/xinzhu/haunted/android/app/servertransaction/b;->i(Landroid/content/Intent;)Z

    .line 20
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/app/servertransaction/b;->h(Landroid/content/pm/ActivityInfo;)Z

    .line 21
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    move-result v5

    const-string v6, "break circle"

    if-nez v5, :cond_7

    .line 24
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/g;->q(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/g;->K(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 26
    new-instance v5, Lcom/xinzhu/haunted/android/app/g$a;

    invoke-direct {v5, p1}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v5}, Lcom/xinzhu/haunted/android/app/g$a;->i()Ljava/lang/Object;

    move-result-object p1

    .line 28
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7, p1}, Lcom/xinzhu/haunted/android/app/g;->L(Landroid/content/pm/ApplicationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v5, v0}, Lcom/xinzhu/haunted/android/app/g$a;->p(Landroid/content/Intent;)Z

    .line 30
    invoke-virtual {v5, v4}, Lcom/xinzhu/haunted/android/app/g$a;->n(Landroid/content/pm/ActivityInfo;)Z

    .line 31
    invoke-virtual {v5, p1}, Lcom/xinzhu/haunted/android/app/g$a;->q(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/servertransaction/b;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/servertransaction/b;->d()Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 35
    new-instance p1, Lcom/xinzhu/haunted/android/app/b$a;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;-><init>(Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/am/a;->e:Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;->c(Landroid/os/IInterface;)Z

    goto :goto_3

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_9
    new-instance p1, Lcom/xinzhu/haunted/android/app/g$a;

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 39
    iget-object v0, v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/g$a;->p(Landroid/content/Intent;)Z

    .line 40
    invoke-virtual {p1, v4}, Lcom/xinzhu/haunted/android/app/g$a;->n(Landroid/content/pm/ActivityInfo;)Z

    :cond_a
    :goto_3
    return v1
.end method

.method private g()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLaunchingActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 3
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "android.app.servertransaction.LaunchActivityItem"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivityClientController"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "HCallbackStub"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reflectTrickForAndroid12 get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->d()Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->d()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a:Landroid/os/Handler$Callback;

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/os/e;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/os/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/xinzhu/haunted/android/os/e;->c(Landroid/os/Handler$Callback;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xinzhu/haunted/android/app/g$c;->d()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 7
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xinzhu/haunted/android/app/g$c;->e()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->a:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    :cond_2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    throw p1

    :cond_3
    return v2
.end method
