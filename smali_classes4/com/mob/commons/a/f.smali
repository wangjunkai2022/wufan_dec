.class public Lcom/mob/commons/a/f;
.super Lcom/mob/commons/a/c;


# instance fields
.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002:gf;k"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mob/commons/a/f;->c:J

    return-void
.end method

.method private a(Ljava/util/HashMap;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/a/f;->n()Ljava/util/HashMap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "004fPfg5nk"

    .line 8
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    const-string v0, "005Ugffghh.ef"

    .line 9
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    const-string v0, "0091gffghhEef;ikge*jk"

    .line 10
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    const-string v0, "012 hefh%ffkPfjfkgjAfPfhGfk"

    .line 11
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v10, :cond_0

    .line 12
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    :cond_0
    const-string v0, "011fkngkKfjfh0fFfefjXk"

    .line 13
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v0, "007l3gegfIf(fhhh$k"

    .line 14
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    const-string v0, "006Ohi1f6fh;fXfehi"

    .line 15
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v0, "007gDgffehhhhUkj"

    .line 16
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v0, "005WgfXklkNgf"

    .line 17
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v6, v0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v14, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v13, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v12, v6

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v11, v6

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v10, v6

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object v9, v6

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object v8, v6

    goto :goto_0

    :catchall_8
    move-exception v0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    move-object v9, v8

    :goto_1
    move-object v10, v9

    :goto_2
    move-object v11, v10

    :goto_3
    move-object v12, v11

    :goto_4
    move-object v13, v12

    :goto_5
    move-object v14, v13

    .line 18
    :goto_6
    :try_start_a
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    invoke-virtual {v15, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_7
    if-nez v7, :cond_1

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    if-eqz v14, :cond_2

    if-eqz v6, :cond_2

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    .line 22
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v0, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v15, v0, :cond_3

    .line 23
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :cond_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenBrightness()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenBrightnessMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0055gffghh3ef"

    .line 35
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "009YgffghhMef%ikgeDjk"

    .line 36
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "007g+fjCk6hiGk]fmQf"

    .line 37
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v8, "007g6fj=kWhi+kNfm2f"

    .line 38
    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "010fk)fiQeHfmgegfgehhfk"

    .line 39
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "010fkXfi!e=fmgegfgehhfk"

    .line 40
    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "011Sfi@eQfhfjhh.k$ff-f%fk:gk"

    .line 41
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "011HfiZe+fhfjhhFk<ffTfCfk;gk"

    .line 42
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "005Fhififhgf5k"

    .line 43
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "005Phififhgf k"

    .line 44
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0117fifefjfjRk0fmRfJfffmgehf"

    .line 45
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "011YfifefjfjSk%fm=f+fffmgehf"

    .line 46
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "011Efifefjfj8k<fmEfCfffhXl4hh"

    .line 47
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "011Afifefjfj,kPfm)f fffhHlXhh"

    .line 48
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "006ekYfhgf!fe"

    .line 49
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "006ekRfhgfDfe"

    .line 50
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "008)fifhUg2fhfifg!fQfk"

    .line 51
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v9, "008-fifh,g<fhfifgGfPfk"

    .line 52
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "011fkngk7fjfhVf7fefjOk"

    .line 53
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "007lDgegf9f fhhhTk"

    .line 55
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "006Dhi0fKfh?fHfehi"

    .line 57
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "007gRgffehhhh;kj"

    .line 59
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "005%gfCklk:gf"

    .line 61
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "011fkngk8fjfhJf+fefj@k"

    .line 63
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "007lZgegf*f[fhhh9k"

    .line 64
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "006]hiXf)fh5f,fehi"

    .line 65
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "007gNgffehhhh<kj"

    .line 66
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0058gfCklk]gf"

    .line 67
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "012KhefhLffk9fjfkgj+fVfh\'fk"

    .line 68
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "004fUfgHnk"

    .line 71
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "014Sfm6kLfn+fPggHg!gfgefhRjNgkfg:nk"

    .line 72
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v0, v10, v3

    if-nez v0, :cond_4

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    invoke-static {v10, v11}, Ljava/lang/Long;->signum(J)I

    mul-long v10, v10, v12

    add-long/2addr v10, v8

    :try_start_b
    const-string v0, "014\'fm]kXfnBfXggNg%gfgefhMjOgkfg0nk"

    .line 74
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_5

    cmp-long v0, v8, v10

    if-gez v0, :cond_5

    sub-long v3, v10, v8

    :cond_5
    cmp-long v0, v8, v10

    if-ltz v0, :cond_6

    const-string v0, "014=fm$kBfn^fBggKgLgfgefh<j*gkfg+nk"

    .line 76
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "009Vfifhfi0ek?gjfgie]k"

    .line 77
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LEIOMT"

    .line 78
    invoke-virtual {v1, v0, v5}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 79
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "014;fmRk_fn5f!gg5g)gfgefhVjYgkfgBnk"

    .line 80
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v8

    mul-long v8, v8, v12

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_6
    invoke-direct {v1, v5}, Lcom/mob/commons/a/f;->b(Ljava/util/HashMap;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    .line 82
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_8
    return-wide v3
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    .line 11
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    .line 13
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 14
    throw p1
.end method

.method private n()Ljava/util/HashMap;
    .locals 8
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
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 4
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v5, v3, v1

    .line 7
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    move-object v4, v6

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v0, v4

    goto :goto_0

    :catchall_2
    move-exception v6

    move-object v0, v4

    move-object v5, v0

    .line 8
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v5, v3, v1

    .line 9
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    :goto_1
    if-nez v4, :cond_1

    .line 10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object v4

    :catchall_3
    move-exception v4

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v5, v3, v1

    .line 11
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 12
    throw v4
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/mob/commons/a/f$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/commons/a/f$1;-><init>(Lcom/mob/commons/a/f;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getBatteryState(Lcom/mob/tools/utils/ReflectHelper$a;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {p0, v0}, Lcom/mob/commons/a/f;->a(Ljava/util/HashMap;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mob/commons/a/f;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/mob/commons/a/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/commons/a/f;->c:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/mob/commons/a/f;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(J)V

    return-void
.end method

.method protected j()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/mob/commons/a/f;->c:J

    return-void
.end method
