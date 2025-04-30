.class public Lcom/xinzhu/overmind/server/accounts/b;
.super Ljava/lang/Object;
.source "CompatReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/b$b;,
        Lcom/xinzhu/overmind/server/accounts/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "data/app/system/account-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "data/app/system/account-visibility-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/b;->b:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/b$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v6, Lcom/xinzhu/overmind/server/accounts/b;->a:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 5
    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    :goto_0
    if-lez v6, :cond_2

    .line 9
    new-instance v7, Lcom/xinzhu/overmind/server/accounts/b$a;

    invoke-direct {v7}, Lcom/xinzhu/overmind/server/accounts/b$a;-><init>()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 14
    new-instance v10, Landroid/accounts/Account;

    invoke-direct {v10, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->b:Landroid/accounts/Account;

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->e:J

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    :goto_1
    if-lez v8, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 20
    iget-object v11, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->f:Ljava/util/List;

    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    :goto_2
    if-lez v8, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 24
    iget-object v11, v7, Lcom/xinzhu/overmind/server/accounts/b$a;->g:Ljava/util/List;

    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 25
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    .line 27
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v5, v2

    .line 28
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    .line 30
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v1

    move-object v2, v5

    .line 31
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 32
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 33
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public static d()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/b$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v6, Lcom/xinzhu/overmind/server/accounts/b;->b:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {v5}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 5
    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    :goto_0
    if-lez v6, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    :goto_1
    if-lez v7, :cond_1

    .line 11
    new-instance v8, Lcom/xinzhu/overmind/server/accounts/b$b;

    invoke-direct {v8}, Lcom/xinzhu/overmind/server/accounts/b$b;-><init>()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 14
    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->a:I

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    :goto_2
    if-lez v9, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 20
    iget-object v12, v8, Lcom/xinzhu/overmind/server/accounts/b$b;->c:Ljava/util/List;

    new-instance v13, Landroid/util/Pair;

    invoke-direct {v13, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    .line 23
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v5, v2

    .line 24
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    .line 26
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v1

    move-object v2, v5

    .line 27
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 29
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
