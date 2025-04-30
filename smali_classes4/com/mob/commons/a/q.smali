.class public Lcom/mob/commons/a/q;
.super Lcom/mob/commons/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a/q$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002%eccd"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "005HeccdeeceRd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0xe10

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private n()V
    .locals 9

    const-string v0, "bsmt"

    const-string v1, "ssmt"

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAvailableWifiListOneKey()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "005Jeidgdgdfeh"

    .line 9
    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 10
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 11
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v6, "005=eidgdgdfeh"

    .line 12
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "004Wdgdgdfeh"

    .line 13
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "014=gkcbcjcicjdbeccjhbefefcd9gUhc"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCurrentWifiInfo()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 17
    :cond_4
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WIMT"

    const/4 v6, 0x1

    .line 19
    invoke-virtual {p0, v2, v3, v6}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 20
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 21
    invoke-virtual {v2, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v2, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/w;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "014^gkcbcjcicjdbeccjhbefefcdEgNhc"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "ssmt"

    .line 6
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bsmt"

    .line 7
    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/w;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/mob/commons/a/q;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/a/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/a/q;->o()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/q;->n()V

    .line 4
    invoke-static {}, Lcom/mob/commons/a/q$a;->a()Lcom/mob/commons/a/q$a;

    :goto_0
    return-void
.end method
