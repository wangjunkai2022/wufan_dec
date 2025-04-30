.class public Lcom/tencent/cos/task/slice/FileSlicePart;
.super Ljava/lang/Object;
.source "FileSlicePart.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77b2d11c900da168L


# instance fields
.field public appid:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public bucket:Ljava/lang/String;

.field public cosPath:Ljava/lang/String;

.field public insertOnly:Ljava/lang/String;

.field public requestId:I

.field public session:Ljava/lang/String;

.field public sha:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public sliceParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/cos/task/slice/SlicePart;",
            ">;"
        }
    .end annotation
.end field

.field public sliceSize:I

.field public slice_init_flag:Z

.field public srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "caches"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method protected declared-synchronized init(Lcom/tencent/cos/task/slice/FileSlicePart;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    .line 7
    iget v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    iput v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 8
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 10
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 12
    iget-boolean v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    iput-boolean v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 13
    iget p1, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I

    iput p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isValid(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    .line 6
    monitor-exit p0

    return v1

    :cond_2
    const/4 p1, 0x1

    .line 7
    monitor-exit p0

    return p1

    .line 8
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 9
    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadFileSlicePart(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/task/slice/FileSlicePart;

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/cos/task/slice/FileSlicePart;->init(Lcom/tencent/cos/task/slice/FileSlicePart;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 7
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_a

    :catch_1
    move-exception p1

    .line 8
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_b

    :catch_6
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_7
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_4

    :catch_8
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    :catch_9
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto/16 :goto_b

    :catch_a
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_0

    .line 10
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catch_b
    move-exception v0

    .line 11
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_0
    :goto_3
    if-eqz p1, :cond_4

    .line 12
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catch_c
    move-exception p1

    goto :goto_1

    :catch_d
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 13
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_1

    .line 14
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    :catch_e
    move-exception v0

    .line 15
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_1
    :goto_5
    if-eqz p1, :cond_4

    .line 16
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_a

    :catch_f
    move-exception p1

    goto :goto_1

    :catch_10
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 17
    :goto_6
    :try_start_f
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v1, :cond_2

    .line 18
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    :catch_11
    move-exception v0

    .line 19
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_2
    :goto_7
    if-eqz p1, :cond_4

    .line 20
    :try_start_12
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_a

    :catch_12
    move-exception p1

    goto :goto_1

    :catch_13
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 21
    :goto_8
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v1, :cond_3

    .line 22
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_9

    :catch_14
    move-exception v0

    .line 23
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_3
    :goto_9
    if-eqz p1, :cond_4

    .line 24
    :try_start_16
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_a

    :catch_15
    move-exception p1

    goto/16 :goto_1

    .line 25
    :cond_4
    :goto_a
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :goto_b
    if-eqz v1, :cond_5

    .line 26
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception p1

    goto :goto_e

    :catch_16
    move-exception v1

    .line 27
    :try_start_18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :cond_5
    :goto_c
    if-eqz p1, :cond_6

    .line 28
    :try_start_19
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_d

    :catch_17
    move-exception p1

    .line 29
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    :cond_6
    :goto_d
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :goto_e
    monitor-exit p0

    goto :goto_10

    :goto_f
    throw p1

    :goto_10
    goto :goto_f
.end method

.method public declared-synchronized saveFileSlicePart(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 7
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 8
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_5
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_7

    :catch_6
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_0

    .line 10
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catch_7
    move-exception v0

    .line 11
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_0
    :goto_3
    if-eqz p1, :cond_2

    .line 12
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catch_8
    move-exception p1

    goto :goto_1

    :catch_9
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 13
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_1

    .line 14
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    :catch_a
    move-exception v0

    .line 15
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_1
    :goto_5
    if-eqz p1, :cond_2

    .line 16
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_6

    :catch_b
    move-exception p1

    goto :goto_1

    .line 17
    :cond_2
    :goto_6
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v1, :cond_3

    .line 18
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception p1

    goto :goto_a

    :catch_c
    move-exception v1

    .line 19
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_3
    :goto_8
    if-eqz p1, :cond_4

    .line 20
    :try_start_11
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_9

    :catch_d
    move-exception p1

    .line 21
    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_4
    :goto_9
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_a
    monitor-exit p0

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public declared-synchronized updateAfterSliceInit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 4
    iput-object p3, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 6
    invoke-virtual {p0, p4}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSlicePart(IZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/task/slice/SlicePart;

    invoke-virtual {p1, p2}, Lcom/tencent/cos/task/slice/SlicePart;->setOverFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
