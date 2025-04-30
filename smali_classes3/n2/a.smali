.class public Ln2/a;
.super Ljava/lang/Object;
.source "PackageListIniSolver.java"


# static fields
.field private static final a:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyForMainPackage"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->e()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [B

    .line 5
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-ne v4, v0, :cond_8

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->createCharArray()[C

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_9

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 25
    invoke-static {p0, v6}, Ln2/a;->b(ZZ)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 26
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v10

    invoke-static {v4}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9, v5}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x5

    if-ne v0, p0, :cond_5

    const/4 p0, 0x0

    :goto_3
    if-ge p0, v3, :cond_9

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_4

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 40
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v8

    invoke-static {v0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7, v4}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 41
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    if-ge v0, p0, :cond_9

    const/4 p0, 0x0

    :goto_5
    if-ge p0, v3, :cond_9

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_6

    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 55
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 56
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v9

    invoke-static {v4}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v5}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 57
    :cond_6
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 59
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to read Persistence file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 60
    :try_start_1
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_9

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 63
    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method private static b(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onlyForMainPackage",
            "is64bitPackage"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
