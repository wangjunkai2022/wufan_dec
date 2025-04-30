.class Lcom/mob/apc/a/d$a;
.super Lcom/mob/apc/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/apc/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/apc/a/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/apc/a/d$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.mob.apc.impl.IAidlInterface"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0, v2}, Lcom/mob/apc/a/e;->a(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/mob/apc/a/d$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8
    invoke-static {v1}, Lcom/mob/apc/a/e;->a(Landroid/os/Parcel;)Lcom/mob/apc/a/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/apc/a/d$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.mob.apc.impl.IAidlInterface"

    return-object v0
.end method
