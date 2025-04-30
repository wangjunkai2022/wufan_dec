.class public Lcn/sharesdk/framework/a/a/d;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;J)J
    .locals 4

    const-class v0, Lcn/sharesdk/framework/a/a/d;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a/b;->a()Lcn/sharesdk/framework/a/a/b;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "post_time"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message_data"

    .line 5
    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message"

    .line 6
    invoke-virtual {v1, p0, v2}, Lcn/sharesdk/framework/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    .line 8
    monitor-exit v0

    return-wide p0
.end method

.method public static declared-synchronized a(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-class v0, Lcn/sharesdk/framework/a/a/d;

    monitor-enter v0

    if-nez p0, :cond_0

    const-wide/16 v1, 0x0

    .line 9
    monitor-exit v0

    return-wide v1

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, "\'"

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {}, Lcn/sharesdk/framework/a/a/b;->a()Lcn/sharesdk/framework/a/a/b;

    move-result-object v1

    const-string v4, "message"

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id in ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Lcn/sharesdk/framework/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 19
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const-string v4, "delete COUNT == %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->c(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p0

    .line 20
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/a/a/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/sharesdk/framework/a/a/d;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/a/a/b;->a()Lcn/sharesdk/framework/a/a/b;

    move-result-object v1

    const-string v2, "message"

    .line 41
    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/a/a/b;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v1}, Lcn/sharesdk/framework/a/a/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/a/a/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/sharesdk/framework/a/a/d;

    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v2, Lcn/sharesdk/framework/a/a/c;

    invoke-direct {v2}, Lcn/sharesdk/framework/a/a/c;-><init>()V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/a/a/b;->a()Lcn/sharesdk/framework/a/a/b;

    move-result-object v4

    const-string v5, "message"

    const-string v6, "_id"

    const-string v7, "post_time"

    const-string v8, "message_data"

    .line 25
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcn/sharesdk/framework/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    iget-object v4, v2, Lcn/sharesdk/framework/a/a/c;->b:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, v2, Lcn/sharesdk/framework/a/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v4, 0x64

    const/4 v5, 0x2

    if-ne p1, v4, :cond_0

    .line 29
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/sharesdk/framework/a/a/c;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lcn/sharesdk/framework/a/a/c;

    invoke-direct {v2}, Lcn/sharesdk/framework/a/a/c;-><init>()V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 36
    iget-object p0, v2, Lcn/sharesdk/framework/a/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcn/sharesdk/framework/a/a/c;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
