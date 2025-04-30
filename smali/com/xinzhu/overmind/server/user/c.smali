.class public Lcom/xinzhu/overmind/server/user/c;
.super Lcom/xinzhu/overmind/server/user/a$b;
.source "MindUserManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/user/c;


# instance fields
.field private mUserListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/b;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserLock:Ljava/lang/Object;

.field public final mUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/c;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/user/c;->sService:Lcom/xinzhu/overmind/server/user/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/a$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    return-void
.end method

.method private createUserLocked(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/MindUserInfo;-><init>()V

    .line 2
    iput p1, v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    .line 3
    sget-object v1, Lcom/xinzhu/overmind/server/user/MindUserStatus;->ENABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    iput-object v1, v0, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->saveUserInfoLocked()V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/user/b;

    .line 9
    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/user/b;->b(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/env/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/b;->d(I)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static get()Lcom/xinzhu/overmind/server/user/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/c;->sService:Lcom/xinzhu/overmind/server/user/c;

    return-object v0
.end method

.method private saveUserInfoLocked()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-static {}, Lcom/xinzhu/overmind/a;->R()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 6
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 7
    invoke-virtual {v1, v4}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    .line 8
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 9
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    invoke-virtual {v1, v4}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    .line 11
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    :try_start_5
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    .line 13
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 14
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw v1
.end method

.method private scanUserL()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/a;->R()Ljava/io/File;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-void

    .line 7
    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/xinzhu/overmind/a;->R()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    :try_start_4
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 9
    array-length v6, v2

    invoke-virtual {v1, v2, v4, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 10
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    sget-object v2, Lcom/xinzhu/overmind/server/user/MindUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_1

    .line 12
    :try_start_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v4

    .line 13
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    .line 14
    :cond_1
    :try_start_6
    iget-object v6, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 15
    :try_start_7
    iget-object v7, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 17
    iget-object v8, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    iget v9, v7, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 19
    :try_start_8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v4

    .line 20
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 21
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v10, v5

    move-object v5, v2

    move-object v2, v10

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v10, v5

    move-object v5, v2

    move-object v2, v10

    .line 22
    :goto_1
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 23
    :try_start_c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v4

    .line 24
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 25
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v2

    .line 26
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v4

    .line 27
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 28
    throw v2

    :catchall_3
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->getUserInfo(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/user/c;->createUserLocked(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteUser(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/h;->deleteUser(I)V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->saveUserInfoLocked()V

    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->P(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/user/b;

    .line 8
    invoke-interface {v3, p1}, Lcom/xinzhu/overmind/server/user/b;->c(I)V

    .line 9
    invoke-interface {v3, p1}, Lcom/xinzhu/overmind/server/user/b;->a(I)V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public exists(I)Z
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserInfo(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/user/c;->mUsers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 4
    iget v4, v3, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    if-ltz v4, :cond_0

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public registerListener(Lcom/xinzhu/overmind/server/user/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/xinzhu/overmind/server/user/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/user/c;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/user/c;->mUserListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/user/c;->scanUserL()V

    return-void
.end method
