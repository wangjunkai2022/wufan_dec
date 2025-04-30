.class public LXI/XI/K0/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXI/XI/K0/kM;


# instance fields
.field public K0:La/a;

.field public XI:Landroid/content/Context;

.field public kM:LXI/XI/K0/xo;

.field public xo:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXI/XI/K0/K0$XI;

    invoke-direct {v0, p0}, LXI/XI/K0/K0$XI;-><init>(LXI/XI/K0/K0;)V

    iput-object v0, p0, LXI/XI/K0/K0;->xo:Landroid/content/ServiceConnection;

    iput-object p1, p0, LXI/XI/K0/K0;->XI:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public XI()Z
    .locals 2

    iget-object v0, p0, LXI/XI/K0/K0;->K0:La/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, La/a;->isSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LXI/XI/K0/K0;->K0:La/a;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
