.class Lcom/mob/commons/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:[Lcom/mob/commons/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mob/commons/d$c;

    .line 1
    sput-object v0, Lcom/mob/commons/d$c;->a:[Lcom/mob/commons/d$c;

    .line 2
    new-instance v1, Lcom/mob/commons/d$c;

    invoke-direct {v1}, Lcom/mob/commons/d$c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/util/SparseArray;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, "time in ("

    const/4 v2, 0x0

    .line 17
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ", "

    .line 20
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v6, 0x27

    .line 21
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 22
    :try_start_1
    invoke-static {}, Lcom/mob/commons/d;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    .line 23
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 24
    invoke-static {}, Lcom/mob/commons/d;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 25
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v2
.end method

.method private a([[Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "004dHdeMli"

    .line 3
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "004h,df^d%df"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 4
    invoke-static {}, Lcom/mob/commons/d;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v4

    invoke-static {v4, v3, v1, v1, v1}, Lcom/mob/tools/utils/SQLiteHelper;->query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return v2

    .line 6
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v3, :cond_2

    .line 7
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return v2

    .line 8
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v6, 0x0

    :cond_3
    :try_start_5
    new-array v7, v0, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-wide/16 v8, -0x1

    .line 10
    :try_start_6
    aget-object v10, v7, v2

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    nop

    :goto_0
    cmp-long v10, v8, v3

    if-gtz v10, :cond_4

    .line 11
    :try_start_7
    aput-object v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    .line 12
    :cond_4
    array-length v7, p1

    if-ge v6, v7, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v7, :cond_3

    .line 13
    :cond_5
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_2

    :catchall_3
    move-exception p1

    move v2, v6

    goto :goto_1

    :catchall_4
    move-exception p1

    .line 14
    :goto_1
    :try_start_9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v1, :cond_6

    .line 15
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    :cond_6
    move v6, v2

    :catchall_6
    :goto_2
    return v6

    :catchall_7
    move-exception p1

    if-eqz v1, :cond_7

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 16
    :catchall_8
    :cond_7
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private a([[Ljava/lang/String;I)Landroid/util/SparseArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    const-string v4, "004e.eddf2d"

    .line 29
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "006hij)dedg4i"

    .line 30
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "005lFec(hi,ed"

    .line 31
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004h3dcdeLh"

    .line 32
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "iemt"

    .line 33
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "snmt"

    .line 34
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "0115dk$idPfdecdhdj0d;di<ei"

    .line 35
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "015h(df9d1dfef2idDfdecdhdjeidiCei"

    .line 36
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDataNtType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_0

    .line 39
    aget-object v7, p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    .line 40
    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 41
    invoke-static {v3, v8}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v8

    .line 42
    new-instance v9, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {v8}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 44
    aget-object v7, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 46
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1

    :cond_1
    const-string p1, "005h1dfNdYdffg"

    .line 49
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "005d8ecdjQi,dk"

    .line 50
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mob/commons/x;->a()Lcom/mob/commons/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/commons/x;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "013[eefgXi$dhhiegGhi9dk1d;deAdWdi"

    .line 52
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/mob/commons/v;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "004l)ecdeVh"

    .line 53
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/mob/tools/a/a;->aY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {p2}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v3, 0x7530

    .line 55
    iput v3, p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 56
    iput v3, p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 57
    new-instance v3, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mob/commons/c;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/v6/gcl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/commons/d$c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v4, v2, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->httpPostWithBytes(Ljava/lang/String;[BLjava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "200"

    const-string v2, "006SfgBdDdf6dOdcfg"

    .line 61
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    .line 62
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic a()Lcom/mob/commons/d$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/d$c;->b()Lcom/mob/commons/d$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/commons/d$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/d$c;->c()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 64
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 65
    :try_start_1
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 66
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 67
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 68
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    new-array v5, v3, [Ljava/io/Closeable;

    aput-object v4, v5, v2

    .line 69
    invoke-static {v5}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 71
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v1, "utf-8"

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 75
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v7, p0, v2

    .line 76
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 77
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p0

    .line 79
    new-instance v1, Lcom/mob/tools/utils/MobRSA;

    const/16 v5, 0x400

    invoke-direct {v1, v5}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    .line 80
    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 81
    new-instance v6, Ljava/math/BigInteger;

    const-string v8, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v1, v0, v5, v6}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    :try_start_4
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :try_start_5
    array-length v4, v0

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 87
    array-length v0, p0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 89
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v5, p0, v2

    .line 90
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    .line 92
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 93
    throw p0

    :catchall_2
    move-exception p0

    move-object v1, v7

    goto :goto_1

    :catchall_3
    move-exception p0

    :goto_1
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    .line 94
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 95
    throw p0

    :catchall_4
    move-exception p0

    move-object v1, v4

    goto :goto_2

    :catchall_5
    move-exception p0

    :goto_2
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    .line 96
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 97
    throw p0
.end method

.method private static b()Lcom/mob/commons/d$c;
    .locals 4

    .line 1
    sget-object v0, Lcom/mob/commons/d$c;->a:[Lcom/mob/commons/d$c;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    aput-object v3, v0, v1

    .line 4
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/d$c;->a:[Lcom/mob/commons/d$c;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 2
    :try_start_1
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 3
    aput-object p0, v0, v1

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x32

    :try_start_0
    new-array v1, v0, [[Ljava/lang/String;

    .line 1
    invoke-direct {p0, v1}, Lcom/mob/commons/d$c;->a([[Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_3

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/mob/commons/d$c;->a([[Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4
    invoke-direct {p0, v3}, Lcom/mob/commons/d$c;->a(Landroid/util/SparseArray;)I

    :cond_1
    if-ge v2, v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0, v1}, Lcom/mob/commons/d$c;->a([[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mob/commons/d$c;->c()V

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/mob/commons/d$c;->c()V

    .line 8
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
