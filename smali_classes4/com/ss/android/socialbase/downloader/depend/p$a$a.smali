.class Lcom/ss/android/socialbase/downloader/depend/p$a$a;
.super Ljava/lang/Object;
.source "IDownloadDiskSpaceAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/p;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p5, :cond_0

    .line 6
    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-interface {v0, v8, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/depend/p;->a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 12
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 13
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 14
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
