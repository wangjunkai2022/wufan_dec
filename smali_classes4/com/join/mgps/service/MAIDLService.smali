.class public Lcom/join/mgps/service/MAIDLService;
.super Landroid/app/Service;
.source "MAIDLService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/join/mgps/aidl/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/service/MAIDLService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/service/MAIDLService$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/MAIDLService$a;-><init>(Lcom/join/mgps/service/MAIDLService;)V

    iput-object v0, p0, Lcom/join/mgps/service/MAIDLService;->mBinder:Lcom/join/mgps/aidl/a$b;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/MAIDLService;->mBinder:Lcom/join/mgps/aidl/a$b;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
