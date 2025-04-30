.class public Lcom/tencent/cos/task/storage/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final object:[B

.field private final object2:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lcom/tencent/cos/task/storage/StorageHelper;->object:[B

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lcom/tencent/cos/task/storage/StorageHelper;->object2:[B

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/task/storage/StorageHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method


# virtual methods
.method public loadUploadTasks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/storage/StorageHelper;->object2:[B

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/tencent/cos/task/storage/StorageHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-object v1

    :cond_0
    const-string v3, "upload_tasks"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 6
    :try_start_1
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 8
    array-length v5, v2

    invoke-virtual {v4, v2, v3, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    const-class v2, Lcom/tencent/cos/task/Task;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 12
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v4, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1

    .line 14
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public saveUploadTasks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/storage/StorageHelper;->object:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/task/storage/StorageHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 8
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 9
    iget-object p1, p0, Lcom/tencent/cos/task/storage/StorageHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "upload_tasks"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw p1

    :catchall_2
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
