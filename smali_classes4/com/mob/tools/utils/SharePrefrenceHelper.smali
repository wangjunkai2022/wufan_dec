.class public Lcom/mob/tools/utils/SharePrefrenceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SharePrefrenceHelper$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b()V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_1
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p1, v3, v2

    .line 8
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p1, v0

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p1, v3, v2

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 9
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getObj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-static {p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Lcom/mob/tools/utils/SharePrefrenceHelper$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public open(Ljava/lang/String;I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x2

    .line 6
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v4, p1, v1

    .line 8
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 9
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    .line 10
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 11
    throw p1
.end method

.method public putAll(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Lcom/mob/tools/utils/SharePrefrenceHelper$a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
