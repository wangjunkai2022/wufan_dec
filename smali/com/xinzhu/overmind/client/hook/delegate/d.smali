.class public Lcom/xinzhu/overmind/client/hook/delegate/d;
.super Landroid/app/IServiceConnection$Stub;
.source "ServiceConnectionDelegate.java"


# static fields
.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/client/hook/delegate/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mConn:Landroid/app/IServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/d;->m:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mConn",
            "targetComponent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->mConn:Landroid/app/IServiceConnection;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/d;->m:Ljava/util/Map;

    return-object v0
.end method

.method public static createProxy(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)Landroid/app/IServiceConnection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "componentName"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xinzhu/overmind/client/hook/delegate/d;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/hook/delegate/d;

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/d$a;

    invoke-direct {v1, v0}, Lcom/xinzhu/overmind/client/hook/delegate/d$a;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5
    :goto_0
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/d;

    invoke-direct {v1, p0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/d;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    .line 6
    sget-object p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->m:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getDelegate(Landroid/os/IBinder;)Lcom/xinzhu/overmind/client/hook/delegate/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iBinder"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/d;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xinzhu/overmind/client/hook/delegate/d;

    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/delegate/d;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "service",
            "dead"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/xinzhu/haunted/android/app/q;

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->mConn:Landroid/app/IServiceConnection;

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/q;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2, p3}, Lcom/xinzhu/haunted/android/app/q;->b(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/delegate/d;->mConn:Landroid/app/IServiceConnection;

    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method
