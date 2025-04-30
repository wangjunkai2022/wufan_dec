.class public Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
.super Ljava/lang/Object;
.source "MindPackageSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Lcom/xinzhu/overmind/server/pm/MindPackageUserState;


# instance fields
.field public a:Lcom/xinzhu/overmind/server/pm/MindPackage;

.field public b:I

.field public c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    .line 11
    const-class v2, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage;

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    .line 13
    const-class v2, Lcom/xinzhu/overmind/entity/pm/InstallOption;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/entity/pm/InstallOption;

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    :goto_2
    if-ge v1, v0, :cond_2

    .line 19
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 20
    const-class v3, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 21
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private h(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    return p1
.end method

.method public c(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageUserState;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-direct {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>(Lcom/xinzhu/overmind/server/pm/MindPackageUserState;)V

    .line 4
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    :cond_1
    return-object v0
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->r()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    return v0
.end method

.method public l()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/xinzhu/overmind/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p0, v0, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 7
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 10
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v3

    :catchall_0
    move-exception v5

    .line 11
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 14
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    monitor-exit p0

    return v4

    :catchall_1
    move-exception v1

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 16
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 17
    throw v1

    :catchall_2
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public n(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hidden",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    return-void
.end method

.method public o(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inst",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    return-void
.end method

.method public p(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runWithPlugin"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "calling setRunWithPlugin not in server process!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stop",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    return-void
.end method

.method public r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "armeabi"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "armeabi-v7a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "arm64-v8a"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->s()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 5
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
