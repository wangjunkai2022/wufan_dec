.class public final Lcom/efs/sdk/launch/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:J

.field private static j:J

.field private static k:I

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/record/EfsJSONLog;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "page_onCreate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_c

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/efs/sdk/launch/b;->d:J

    return-void

    :cond_0
    const-string v1, "page_onReStart"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_c

    sget v0, Lcom/efs/sdk/launch/b;->k:I

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/efs/sdk/launch/b;->e:J

    sput-boolean v2, Lcom/efs/sdk/launch/b;->g:Z

    return-void

    :cond_1
    const-string v1, "page_onStart"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_c

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    sget v0, Lcom/efs/sdk/launch/b;->k:I

    add-int/2addr v0, v2

    sput v0, Lcom/efs/sdk/launch/b;->k:I

    sput-boolean v2, Lcom/efs/sdk/launch/b;->h:Z

    return-void

    :cond_2
    const-string v1, "page_onResume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p2, :cond_c

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    sget-boolean v0, Lcom/efs/sdk/launch/b;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sput-boolean v1, Lcom/efs/sdk/launch/b;->f:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sget-wide v3, Lcom/efs/sdk/launch/b;->c:J

    sub-long v20, v18, v3

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_3

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "loadTime is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    sget-wide v3, Lcom/efs/sdk/launch/b;->a:J

    sub-long v6, v18, v3

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "======>>>>>> coldTime is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/efs/sdk/launch/c;->d(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    sget-wide v8, Lcom/efs/sdk/launch/b;->a:J

    sget-wide v10, Lcom/efs/sdk/launch/b;->b:J

    sget-wide v12, Lcom/efs/sdk/launch/b;->i:J

    sget-wide v14, Lcom/efs/sdk/launch/b;->c:J

    sget-wide v16, Lcom/efs/sdk/launch/b;->j:J

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    sget-object v26, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-static/range {v3 .. v26}, Lcom/efs/sdk/launch/b;->a(Landroid/content/Context;ILjava/lang/String;JJJJJJJJJJLjava/util/Map;)V

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/efs/sdk/launch/b;->k:I

    if-ne v0, v2, :cond_a

    sget-boolean v0, Lcom/efs/sdk/launch/b;->g:Z

    if-eqz v0, :cond_8

    sput-boolean v1, Lcom/efs/sdk/launch/b;->g:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/efs/sdk/launch/b;->e:J

    sub-long v25, v2, v4

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_7

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "======>>>>>> hotTime is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    :goto_0
    sget-object v29, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-static/range {v6 .. v29}, Lcom/efs/sdk/launch/b;->a(Landroid/content/Context;ILjava/lang/String;JJJJJJJJJJLjava/util/Map;)V

    goto :goto_1

    :cond_8
    sget-boolean v0, Lcom/efs/sdk/launch/b;->h:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/efs/sdk/launch/b;->d:J

    sub-long v27, v2, v4

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_9

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "======>>>>>> warmTime is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    goto :goto_0

    :cond_a
    :goto_1
    sput-boolean v1, Lcom/efs/sdk/launch/b;->h:Z

    return-void

    :cond_b
    const-string v1, "page_onStop"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    sget v0, Lcom/efs/sdk/launch/b;->k:I

    sub-int/2addr v0, v2

    sput v0, Lcom/efs/sdk/launch/b;->k:I

    :cond_c
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;JJJJJJJJJJLjava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "JJJJJJJJJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p7

    move-wide/from16 v4, p11

    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->isInit()Z

    move-result v6

    const-string v7, "cache launch report --->>> "

    const-string v9, "startperf"

    const-string v11, "userExtra"

    const-string/jumbo v12, "wl_page"

    const-string/jumbo v13, "wd_pagetm"

    const-string/jumbo v14, "wd_page"

    const-string/jumbo v15, "wl_build"

    const-string/jumbo v10, "wd_buildtm"

    const-string/jumbo v8, "wd_build"

    const-string/jumbo v4, "wl_init"

    const-string/jumbo v5, "wd_inittm"

    const-string/jumbo v2, "wd_init"

    const-string v3, "0.0.1.umeng"

    move-object/from16 v17, v7

    const-string v7, "l_version"

    move-object/from16 v18, v11

    const-string/jumbo v11, "w_url"

    move-object/from16 v19, v12

    const-string/jumbo v12, "w_type"

    move-object/from16 v20, v13

    const-string/jumbo v13, "wl_avgv"

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getLaunchConfigManager()Lcom/efs/sdk/launch/LaunchConfigManager;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/efs/sdk/launch/LaunchConfigManager;->enableTracer()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    invoke-direct {v6, v9}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v12, v9}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v11, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v3}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v13, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-static/range {p21 .. p22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v6, v1, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v6, v1, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p23, :cond_5

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    goto :goto_2

    :cond_4
    move-object/from16 v2, v18

    invoke-virtual {v6, v2, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/efs/sdk/launch/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "umid is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send current launch report --->>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_8
    return-void

    :cond_9
    sget-object v0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    :cond_b
    return-void

    :cond_c
    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    return-void

    :cond_d
    move-object/from16 v6, v20

    move-object/from16 v22, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    if-nez v0, :cond_12

    sget-boolean v16, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    move-object/from16 v20, v9

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, p7

    invoke-virtual {v9, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v2, p9

    invoke-virtual {v9, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v9, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, p11

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v2, p13

    invoke-virtual {v9, v15, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v9, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, p15

    invoke-virtual {v9, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, p17

    move-object/from16 v2, v20

    invoke-virtual {v9, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p23, :cond_10

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_1
    :cond_e
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :cond_f
    move-object/from16 v4, v19

    :try_start_3
    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/efs/sdk/launch/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no init, cache first launch, content is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_11
    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_12
    move-object/from16 v22, v4

    move-object v4, v2

    move-object v2, v9

    move-object/from16 v9, v22

    sget-boolean v20, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v20, :cond_13

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v6

    const-string v6, "no init, cache launch, type is "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :cond_13
    move-object/from16 v20, v2

    move-object/from16 v21, v6

    :goto_6
    new-instance v2, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    move-object/from16 v6, v18

    invoke-direct {v2, v6}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v7, v3}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v2, v1, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v2, v1, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p23, :cond_16

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface/range {p23 .. p23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Long;

    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    :try_start_4
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v6, 0x0

    :try_start_5
    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v7, 0x1

    :try_start_6
    aget-object v3, v3, v7

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    nop

    goto :goto_7

    :catchall_4
    :cond_14
    const/4 v6, 0x0

    :catchall_5
    const/4 v7, 0x1

    goto :goto_7

    :cond_15
    move-object/from16 v3, v19

    invoke-virtual {v2, v3, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    :goto_8
    const/4 v1, 0x3

    goto :goto_9

    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    invoke-static/range {p21 .. p22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_9
    sget-object v0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1a

    sget-object v0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_1a
    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    :cond_1b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/efs/sdk/launch/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "um_umid_header"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    :cond_2
    invoke-static {p0}, Lcom/efs/sdk/launch/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/efs/sdk/launch/b;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/efs/sdk/launch/c;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    sget-object p0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    sget-object p0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    if-eqz p1, :cond_4

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send cache launch report --->>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/efs/sdk/launch/b;->l:Ljava/util/List;

    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    sget-object p1, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "app_<init>"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "app_attachBaseContext"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/efs/sdk/launch/b;->a:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/efs/sdk/launch/b;->f:Z

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/efs/sdk/launch/b;->b:J

    sget-wide v0, Lcom/efs/sdk/launch/b;->a:J

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/efs/sdk/launch/b;->i:J

    sget-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "initTime is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v0, Lcom/efs/sdk/launch/b;->i:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string v0, "app_onCreate"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/efs/sdk/launch/b;->c:J

    sget-wide v0, Lcom/efs/sdk/launch/b;->b:J

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/efs/sdk/launch/b;->j:J

    sget-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "buildTime is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v0, Lcom/efs/sdk/launch/b;->j:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "userExtra"

    const-string/jumbo v2, "wl_page"

    const-string/jumbo v3, "wd_pagetm"

    const-string/jumbo v4, "wd_page"

    const-string/jumbo v5, "wl_build"

    const-string/jumbo v6, "wd_buildtm"

    const-string/jumbo v7, "wd_build"

    const-string/jumbo v8, "wl_init"

    const-string/jumbo v9, "wd_inittm"

    const-string/jumbo v10, "wd_init"

    const-string/jumbo v11, "wl_avgv"

    const-string v12, "l_version"

    const-string/jumbo v13, "w_url"

    const-string/jumbo v14, "w_type"

    :try_start_0
    new-instance v15, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    move-object/from16 v16, v1

    const-string v1, "startperf"

    invoke-direct {v15, v1}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v13, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v11, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v10, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v9, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v7, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v6, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v5, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v4, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v3, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v2, v1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send cache cold launch report --->>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v15}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    sget-object p1, Lcom/efs/sdk/launch/b;->m:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    return-void
.end method
