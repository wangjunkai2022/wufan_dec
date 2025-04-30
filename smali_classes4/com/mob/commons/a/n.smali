.class public Lcom/mob/commons/a/n;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002 hi8j"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private n()[Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getQemuKernel()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "037i%hifkhi4fkniPgffgheDi0gffghefiffPn8fhgfgfgefiffTjkIhefehhff0mknWfegnhige"

    invoke-static {v7}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v7, Ljava/io/File;

    const-string v8, "015i-hifkhi=imkn6feffTfVfjfhfi9k"

    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v8, Ljava/io/File;

    const-string v9, "022i<hifkhiAfkniFhefgfmLimkn.fejk^g6fjgeLg*hi"

    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string v8, "014ijklimknKfeff g*fg0gk"

    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v8, Ljava/io/File;

    const-string v9, "017ijkli7higefiflOkfimknWfe<j"

    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    const/4 v7, 0x0

    .line 15
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :try_start_2
    const-string v8, "0221figeHn$gnhegffeLkIhiJf1fhfiflhignfh+ggn-fhfjGf"

    .line 16
    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v8, :cond_5

    .line 17
    :try_start_3
    new-instance v9, Ljava/io/File;

    const-string v10, "021ij]fh+f8fh@i.hegffe2k2hiOf*fhfiflhignPg*fjge$g"

    invoke-static {v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :catchall_2
    move-exception v9

    goto/16 :goto_21

    :cond_5
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_7

    .line 18
    new-instance v9, Ljava/io/File;

    const-string v10, "040inMfm:fig5fjFk+hefefm\'j)gf:kj0fhMgg\'hi9i0hegffeXkShiTf>fhfiflhign]gVfjge%g+gngefjfghh"

    invoke-static {v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, 0x1

    :goto_5
    if-nez v8, :cond_9

    const-string v9, "0343fige-n+gnhegffe)k;hi f(fhfiflhignhlhi7fTiige$nnMfhfmFj,ijfjgefi*k1hihigefj"

    .line 19
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-nez v8, :cond_b

    const-string v9, "019Bfige[nZgnhegffeYk<hiOf2fhfiflhign3ekRgf0g"

    .line 20
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v8, 0x1

    :goto_9
    if-nez v8, :cond_d

    const-string v9, "0199fige5nYgnhegffe^k1hiTf1fhfiflhign=e%geUnk"

    .line 21
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v8, 0x1

    :goto_b
    if-nez v8, :cond_f

    const-string v9, "018\'figeWn7gnhegffe:kNhi+f5fhfiflhignhiim(g"

    .line 22
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v8, 0x1

    :goto_d
    if-nez v8, :cond_11

    const-string v9, "024^fige$nUgnhegffe@k@hiXfAfhfiflhignhi<kRfhfjfiQeRfhDgg"

    .line 23
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v8, 0x1

    :goto_f
    if-nez v8, :cond_13

    const-string v9, "0302fige nBgnhegffeQkKhiAfPfhfiflhignfhfifi*k1gf_kQfjgeYnkfkHfjfefg"

    .line 24
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_10

    :cond_12
    const/4 v8, 0x0

    goto :goto_11

    :cond_13
    :goto_10
    const/4 v8, 0x1

    :goto_11
    if-nez v8, :cond_15

    const-string v9, "024Gfige1n2gnhegffe3k^hiEf6fhfiflhignfhMggJhjfgfmZjk+fj"

    .line 25
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_12

    :cond_14
    const/4 v8, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v8, 0x1

    :goto_13
    if-nez v8, :cond_17

    const-string v9, "022@figeTn%gnhegffe<kHhi6fAfhfiflhignfhJggn3fhfj;f"

    .line 26
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_14

    :cond_16
    const/4 v8, 0x0

    goto :goto_15

    :cond_17
    :goto_14
    const/4 v8, 0x1

    :goto_15
    if-nez v8, :cond_19

    const-string v9, "026_fige?n;gnhegffeDkMhiEfHfhfiflhignfh9gg6hiCkff)fgfmhhhi"

    .line 27
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_16

    :cond_18
    const/4 v8, 0x0

    goto :goto_17

    :cond_19
    :goto_16
    const/4 v8, 0x1

    :goto_17
    if-nez v8, :cond_1b

    const-string v9, "034NfigeIn9gnhegffeUkRhiHf8fhfiflhignhlhi4fLiige4nn]fhfm@j>ijfjgefi[k_hihigefj"

    .line 28
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_18

    :cond_1a
    const/4 v8, 0x0

    goto :goto_19

    :cond_1b
    :goto_18
    const/4 v8, 0x1

    :goto_19
    if-nez v8, :cond_1d

    const-string v9, "0249figeHn]gnhegffePk,hiVfWfhfiflhignhehi7fEhjgegfXjk^fj"

    .line 29
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_1a

    :cond_1c
    const/4 v8, 0x0

    goto :goto_1b

    :cond_1d
    :goto_1a
    const/4 v8, 0x1

    :goto_1b
    if-nez v8, :cond_1f

    const-string v9, "0203figeTnBgnhegffeHkChiQfLfhfiflhignhiDkf.fePg"

    .line 30
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_1c

    :cond_1e
    const/4 v8, 0x0

    goto :goto_1d

    :cond_1f
    :goto_1c
    const/4 v8, 0x1

    :goto_1d
    if-nez v8, :cond_21

    const-string v9, "024!fige2n_gnhegffeDk3hi fHfhfiflhignhi\'gFge!fMgffghh5ef"

    .line 31
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_1e

    :cond_20
    const/4 v8, 0x0

    goto :goto_1f

    :cond_21
    :goto_1e
    const/4 v8, 0x1

    :goto_1f
    if-nez v8, :cond_23

    const-string v9, "020Nfige*n!gnfhfmLjKfjgeihikgnPln9figefmhjfghh"

    .line 32
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_22

    goto :goto_20

    :cond_22
    const/4 v8, 0x0

    goto :goto_22

    :cond_23
    :goto_20
    const/4 v8, 0x1

    goto :goto_22

    :catchall_3
    move-exception v9

    const/4 v8, 0x0

    .line 33
    :goto_21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 34
    :goto_22
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getTTYDriversInfo()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 36
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_25

    .line 37
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_24

    .line 38
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_24

    .line 39
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 41
    :cond_25
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCPUInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "010mkn1fejl6kOfjfmTkMgf"

    .line 44
    invoke-static {v11}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "013mknEfehmfggf%k>iffnfghi7f"

    .line 45
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "012mknOfehkQklIiffnfghi:f"

    .line 46
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "019]hegffe.k?gj0f<fhfiflhihmfggfJk;iffnfghiZf"

    .line 47
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "010ff]fkhkfjfg$lk(fjhi"

    .line 48
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "0079fiVgDfegifmhjge"

    .line 49
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v10, v0, v4

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/a/n;->n()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 3
    array-length v3, v0

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 4
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    new-instance v3, Lcom/mob/tools/utils/e;

    invoke-direct {v3}, Lcom/mob/tools/utils/e;-><init>()V

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/e;->a(Landroid/content/Context;)I

    move-result v4

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/tools/utils/e;->b(Landroid/content/Context;)I

    move-result v5

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mob/tools/utils/e;->c(Landroid/content/Context;)I

    move-result v6

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mob/tools/utils/e;->d(Landroid/content/Context;)I

    move-result v7

    .line 13
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mob/tools/utils/e;->e(Landroid/content/Context;)I

    move-result v8

    .line 15
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mob/tools/utils/e;->f(Landroid/content/Context;)I

    move-result v9

    .line 17
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mob/tools/utils/e;->g(Landroid/content/Context;)I

    move-result v10

    .line 19
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3}, Lcom/mob/tools/utils/e;->a()I

    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v11

    sget-object v12, Lcom/mob/commons/w;->p:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 25
    :cond_1
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v11

    invoke-virtual {v11, v12, v1}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_2

    .line 27
    array-length v11, v0

    if-ne v11, v2, :cond_2

    const/4 v2, 0x1

    .line 28
    aget-object v11, v0, v2

    .line 29
    instance-of v11, v11, Ljava/util/HashMap;

    if-eqz v11, :cond_2

    .line 30
    aget-object v0, v0, v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    const-string v0, "010Sfiflhlfhhi]k9hefhfm:j"

    .line 31
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0078fiflhlgefhfj9j"

    .line 32
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "010Nfiflijgffh*f hjgefj+n"

    .line 33
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "008BfiflhmgffhTl0gefj"

    .line 34
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "008?fifliihhfjgefe2g"

    .line 35
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckiemt"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "011AfifliigeBnn5gefmfhYgg"

    .line 37
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0095fiflii+gAfefgfmhjge"

    .line 38
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIMUMT"

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    return-void
.end method
