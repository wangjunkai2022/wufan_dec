.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/IIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic f(Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "registerReceiver"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/content/IntentFilter;

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 2
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->d([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    aput-object v4, p3, v2

    .line 4
    invoke-virtual {p0, p3, v3}, Lcom/xinzhu/overmind/client/hook/g;->e([Ljava/lang/Object;I)V

    .line 5
    aget-object v2, p3, v0

    check-cast v2, Landroid/content/IntentFilter;

    .line 6
    invoke-static {v2}, Lcom/xinzhu/overmind/client/hook/env/a;->l(Landroid/content/IntentFilter;)V

    .line 7
    aput-object v2, p3, v0

    .line 8
    aget-object v0, p3, v1

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 9
    instance-of v3, v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;

    if-nez v3, :cond_1

    .line 10
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 11
    new-instance v4, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$a;

    invoke-direct {v4, p0, v3}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;Landroid/os/IBinder;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 12
    iget-object v4, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IIntentReceiver;

    if-nez v4, :cond_0

    .line 13
    new-instance v4, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;

    invoke-direct {v4, v0, v2}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;-><init>(Landroid/os/IInterface;Landroid/content/IntentFilter;)V

    .line 14
    iget-object v2, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    new-instance v2, Lcom/xinzhu/haunted/android/app/t$a$a;

    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/app/t$a$a;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/t$a$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 17
    new-instance v2, Lcom/xinzhu/haunted/android/app/t$a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/app/t$a;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/app/t$a;->c(Ljava/lang/Object;)Z

    .line 19
    aput-object v4, p3, v1

    .line 20
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 21
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/a;->i(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
