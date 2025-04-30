.class public Lcom/xinzhu/overmind/server/ProcessRecord;
.super Landroid/os/Binder;
.source "ProcessRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appThread:Landroid/os/IInterface;

.field public baseVUid:I

.field public callingVUid:I

.field public client:Lcom/xinzhu/overmind/client/c;

.field public final info:Landroid/content/pm/ApplicationInfo;

.field public initLock:Landroid/os/ConditionVariable;

.field public pid:I

.field public final processName:Ljava/lang/String;

.field public runWithPlugin:Z

.field public uid:I

.field public userId:I

.field public vpid:I

.field public vuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/ProcessRecord$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/ProcessRecord$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/ProcessRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "processName",
            "vuid",
            "vpid",
            "callingVUid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 4
    iput p3, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 5
    iput p4, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 7
    iput p5, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 10
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 11
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 3
    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    iget v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCallingVUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    return v0
.end method

.method public getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/ClientConfig;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/ClientConfig;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->c:I

    .line 5
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 6
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->e:I

    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->f:I

    .line 8
    iput-object p0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->h:Landroid/os/IBinder;

    .line 9
    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    iput v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->g:I

    .line 10
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    iput-boolean v1, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->i:Z

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-static {v0}, Lcom/xinzhu/overmind/client/f;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-static {v0}, Lcom/xinzhu/overmind/client/f;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public kill()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->callingVUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
