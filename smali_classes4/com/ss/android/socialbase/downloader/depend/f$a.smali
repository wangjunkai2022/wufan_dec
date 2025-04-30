.class public abstract Lcom/ss/android/socialbase/downloader/depend/f$a;
.super Landroid/os/Binder;
.source "IDownloadAidlDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/f$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/depend/f;
    .locals 1

    .line 5
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/f$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/f;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/f;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/f;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/f$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/f$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_0

    :cond_2
    move-object p1, p4

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    sget-object p4, Lcom/ss/android/socialbase/downloader/exception/BaseException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9
    invoke-interface {p0, p1, p4, p2}, Lcom/ss/android/socialbase/downloader/depend/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
