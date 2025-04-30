.class public Lcom/mob/commons/b/d;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/b/d;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/mob/commons/b/b;->a(Landroid/content/Context;)Lcom/mob/commons/b/b;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/mob/commons/b/b;->a()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "004 ed iTef\'i"

    .line 6
    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "005JegedCiQefWi"

    .line 7
    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "004=edIi0efBi"

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v6, "009Oghed0ff fdeiAeji"

    .line 8
    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "011LefUiZfied9ffTfdei]eji"

    .line 9
    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0097ghedFffYfdei.eji"

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v3, "0097gief\'iAghhhegehNdj"

    .line 11
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {p0}, Lcom/mob/commons/b/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {p0}, Lcom/mob/commons/b/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {p0}, Lcom/mob/commons/b/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_4

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    const/4 p0, 0x0

    .line 17
    monitor-exit v0

    return-object p0

    .line 18
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/mob/commons/b/d;->b(Landroid/content/Context;)Z

    move-result p0

    const-string v4, "004VegegefCi"

    .line 19
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004Gfdegef-i"

    .line 20
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004kDegefGi"

    .line 21
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "005=egedNi:efFi"

    .line 22
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "011]efYi0fiedKffUfdei+eji"

    .line 23
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, p0

    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
