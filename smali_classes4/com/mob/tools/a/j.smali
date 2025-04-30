.class public Lcom/mob/tools/a/j;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 138
    invoke-static {v0, v1}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v2

    const-string v3, "025!fhfmAj*fjgefgTj.gngehigngjMk\'fj7l+fgfi?k!ikfhfmfhhh3k=fj"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "010LhhOkfOgj7kHfjBlTfgfi=k"

    .line 139
    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p1, v7, v9

    const/4 v4, 0x0

    .line 140
    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 141
    invoke-static {v0, v1}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v3

    const-string v4, "024>fhfm:j4fjgefg@jUgngehigngj_ek^gfgfiifhgfgfhefhfifl"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/a/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v6, p4

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v7, p5

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 145
    invoke-static {v0, v1}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    const-string v7, "012)hiTek5gfgfiigeFnnWfhfm*j"

    invoke-static {v7}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/io/FileDescriptor;

    aput-object v12, v11, v9

    const-class v12, Ljava/io/FileDescriptor;

    aput-object v12, v11, v8

    const-class v12, Ljava/io/FileDescriptor;

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-class v12, [Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v12, v11, v14

    const-string v12, "024QfhfmVj(fjgefgEj5gngehigngjGek$gfgfiifhgfgfhefhfifl"

    .line 146
    invoke-static {v12}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v15, 0x4

    aput-object v12, v11, v15

    const-class v12, Landroid/os/ResultReceiver;

    const/16 v16, 0x5

    aput-object v12, v11, v16

    new-array v10, v10, [Ljava/lang/Object;

    .line 147
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    aput-object v4, v10, v9

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    aput-object v4, v10, v8

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    aput-object v4, v10, v13

    aput-object p2, v10, v14

    aput-object v3, v10, v15

    new-instance v3, Landroid/os/ResultReceiver;

    new-instance v4, Landroid/os/Handler;

    .line 148
    invoke-virtual/range {p6 .. p6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v4}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    aput-object v3, v10, v16

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v7

    move-object/from16 p4, v11

    move-object/from16 p5, v10

    .line 149
    invoke-virtual/range {p0 .. p5}, Lcom/mob/tools/a/h;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return v9
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, v0}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v1

    const-string p0, "025?fhfm%jJfjgefgAjOgngehigngj,kDfj\'lEfgfi,k9ikfhfmfhhh7k5fj"

    invoke-static {p0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string p0, "010:hh%kf0gj-k7fjOlOfgfi,k"

    .line 152
    invoke-static {p0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    new-array v6, p0, [Ljava/lang/Object;

    const-string p0, "007g5fhfiflfhhh\'k"

    invoke-static {p0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v7

    .line 153
    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/a/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "034IfhfmZj2fjgefgMj>gnfigefmRfkIfm!fDgn]gn-gngiijfhfiflfhhh k<ikfhfmfhhh-k)fj"

    .line 156
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-interface {p0, p4, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 162
    sget-object p0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw p0
.end method

.method public static a(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/commons/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "XPL-1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "005nk:fgiefe"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {v1, v2}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    invoke-static {v1, v4, v2}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v5

    .line 7
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 8
    :cond_2
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 9
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v5

    :goto_3
    if-eqz v6, :cond_d

    .line 10
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "034[fhfmAj.fjgefg5j$gnfigefm8fk8fm,f?gn+gnPgngiijfhfiflfhhh2kMikfhfmfhhh!kTfj"

    .line 12
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "004EgjQfLfehe"

    .line 13
    invoke-static {v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mob/tools/utils/DeviceHelper;->getAInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v10}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v10

    const-string v11, "0260gkigglghgjgliigkgihnghffhh(kfKijfhfiflfhhhFk%gifmhjge"

    .line 16
    invoke-static {v11}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v10, v9, v11, v5}, Lcom/mob/tools/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 18
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    move-object v11, v0

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 19
    :try_start_3
    invoke-static {v1, v0, v10, v10, v9}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v13, v0

    .line 20
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v5

    :goto_5
    if-eqz v0, :cond_b

    if-eqz p1, :cond_4

    .line 21
    invoke-static {v0}, Lcom/mob/tools/a/j;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_4
    if-nez p2, :cond_5

    .line 22
    invoke-static {v0}, Lcom/mob/tools/a/j;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_4

    .line 23
    :cond_5
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v14, "003g]flhh"

    .line 24
    invoke-static {v14}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_9

    if-eqz v11, :cond_6

    .line 25
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v14}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_6

    .line 26
    :cond_6
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v14, v5

    .line 27
    :goto_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v15, :cond_8

    .line 28
    :try_start_5
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    .line 29
    :catchall_3
    :try_start_6
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v12, v15, v14}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    move-object v12, v5

    :goto_7
    if-nez v12, :cond_7

    .line 30
    :try_start_7
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_8
    move-object v14, v12

    .line 31
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    :cond_8
    const-string v15, "004YfmfhGnk"

    .line 32
    invoke-static {v15}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v14, "007lk^fjhifggefm"

    .line 33
    invoke-static {v14}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "006kWfmfhhegf+k"

    .line 34
    invoke-static {v14}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v15, v15, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v15, :cond_a

    const-string v15, "1"

    goto :goto_9

    :cond_a
    const-string v15, "0"

    :goto_9
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "0161hjfgfjhiJf(gifmhi%fOfhgfgfgkfgZnk"

    .line 35
    invoke-static {v14}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "014KgffhhiZf_ggSgj3fh9fk5gkfgNnk"

    .line 36
    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v11

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v14

    :cond_b
    if-eqz p3, :cond_c

    if-eqz v12, :cond_c

    .line 38
    invoke-static {v1, v11}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_c
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 39
    :cond_d
    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_e

    .line 40
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_a

    .line 41
    :cond_e
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_a
    return-object v7

    :catchall_6
    move-exception v0

    .line 43
    :try_start_9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 45
    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_f

    .line 46
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_b

    .line 47
    :cond_f
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    .line 48
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_b
    return-object v1

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 49
    :try_start_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_10

    .line 50
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_c

    .line 51
    :cond_10
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    .line 52
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 53
    :goto_c
    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method private static a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ".ansx"

    .line 54
    :try_start_0
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 56
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 57
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tmp11"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "002*fgfm"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    const-string v0, "007g\'fhfiflfhhhBk"

    .line 69
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "004\'gffghi@f"

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v4, v11

    const/4 v0, 0x1

    const-string v2, "packages"

    aput-object v2, v4, v0

    move-object v2, p0

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 70
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    .line 71
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 72
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "008g1fhfiflfhhhWkh"

    .line 76
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 87
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 88
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    return-object p0

    .line 89
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 90
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 91
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 94
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 95
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tmp11"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "002Tfgfm"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v0, "0"

    const/4 v2, 0x4

    const-string v3, "--user"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "-a"

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/4 v11, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v12, "007g]fhfiflfhhh;k"

    .line 104
    invoke-static {v12}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/String;

    const-string v13, "016mLfe7kKfjfkjkfhfiPfUfgOl<fgCf>fgHkYhi"

    invoke-static {v13}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v11

    aput-object v6, v8, v7

    const-string v6, "026LfhfmSj:fjgefg?jOgnfgfmTfk-fm<fNgnfhfi*f[fggefmgnikglgigh"

    .line 105
    invoke-static {v6}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    aput-object v3, v8, v4

    aput-object v0, v8, v2

    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, p2

    .line 106
    invoke-static/range {v2 .. v8}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    goto :goto_0

    :cond_2
    const-string v12, "007gTfhfiflfhhhBk"

    .line 107
    invoke-static {v12}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "016mIfe-k-fjfkjkfhfiSf5fgFl.fg5f=fg?kOhi"

    invoke-static {v14}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    aput-object v6, v13, v7

    const-string v6, "0260fhfm^jNfjgefg(jKgnfgfmLfk:fm]fAgnfhfi>f*fggefmgnikglgigh"

    .line 108
    invoke-static {v6}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v5

    const-string v5, "-c"

    aput-object v5, v13, v4

    const-string v4, "032;fhfm[jZfjgefg@j]gnfgfm+fk]fmYf3gnfifhRfkBhhgefjfkgngmglggghiijfifig"

    .line 109
    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    aput-object v3, v13, v8

    const/4 v2, 0x6

    aput-object v0, v13, v2

    move-object v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, p2

    .line 110
    invoke-static/range {v2 .. v8}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 111
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 113
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 115
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "012g2fhfiflfhhh$k7ghfh nk7ki"

    .line 117
    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_4

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 124
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 129
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    return-object v0

    .line 130
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 131
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 132
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 136
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ".ansx"

    .line 58
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 59
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 60
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p0, p0, 0x80

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
