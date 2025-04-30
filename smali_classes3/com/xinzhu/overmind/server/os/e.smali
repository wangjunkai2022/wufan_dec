.class public Lcom/xinzhu/overmind/server/os/e;
.super Lcom/xinzhu/overmind/server/os/a$b;
.source "MindDeviceInfoService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sEnabled:Z

.field private static sService:Lcom/xinzhu/overmind/server/os/e;


# instance fields
.field mDeviceInfo:Lcom/xinzhu/overmind/server/os/MindDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/os/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/os/e;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/os/e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/e;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/os/e;->sService:Lcom/xinzhu/overmind/server/os/e;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/xinzhu/overmind/server/os/e;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/a$b;-><init>()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/e;->mDeviceInfo:Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    const-string v1, "3541065001663722161"

    .line 3
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->a:Ljava/lang/String;

    const-string v1, "976188710578541"

    .line 4
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->b:Ljava/lang/String;

    const-string v1, "97618871057854142254"

    .line 5
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->c:Ljava/lang/String;

    const-string v1, "stub"

    .line 6
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->d:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->e:Ljava/lang/String;

    const-string v1, "2134043431"

    .line 8
    iput-object v1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/e;->sService:Lcom/xinzhu/overmind/server/os/e;

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo()Lcom/xinzhu/overmind/server/os/MindDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/os/e;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/e;->mDeviceInfo:Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVirtualDeviceStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sput-boolean p1, Lcom/xinzhu/overmind/server/os/e;->sEnabled:Z

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
