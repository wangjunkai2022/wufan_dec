.class public Lcom/xinzhu/overmind/client/frameworks/d;
.super Ljava/lang/Object;
.source "MindJobManager.java"


# static fields
.field private static b:Lcom/xinzhu/overmind/client/frameworks/d;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/am/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/d;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/d;->b:Lcom/xinzhu/overmind/client/frameworks/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/xinzhu/overmind/client/frameworks/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/d;->b:Lcom/xinzhu/overmind/client/frameworks/d;

    return-object v0
.end method

.method private d()Lcom/xinzhu/overmind/server/am/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/d;->a:Lcom/xinzhu/overmind/server/am/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/d;->a:Lcom/xinzhu/overmind/server/am/e;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "job_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/am/e$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/d;->a:Lcom/xinzhu/overmind/server/am/e;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/d;->d()Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processName",
            "jobId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/d;->d()Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/am/e;->cancel(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/d;->d()Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xinzhu/overmind/server/am/e;->cancelAll(Ljava/lang/String;I)V
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

.method public e(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/JobRecord;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processName",
            "jobId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/d;->d()Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/am/e;->queryJobRecord(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/JobRecord;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/d;->d()Lcom/xinzhu/overmind/server/am/e;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xinzhu/overmind/server/am/e;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
