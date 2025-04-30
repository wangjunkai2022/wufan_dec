.class public Lcom/ta/utdid2/core/persistent/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "t"

.field private static final n:Ljava/lang/String; = "t2"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/ta/utdid2/core/persistent/b;

.field private h:Landroid/content/SharedPreferences$Editor;

.field private i:Lcom/ta/utdid2/core/persistent/b$a;

.field private j:Landroid/content/Context;

.field private k:Lcom/ta/utdid2/core/persistent/d;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 8
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 9
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 10
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 11
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    .line 12
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 13
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 14
    iput-boolean p4, p0, Lcom/ta/utdid2/core/persistent/c;->c:Z

    .line 15
    iput-boolean p5, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 16
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->b:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    const-string p4, "t"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {v4, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 21
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 22
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "mounted"

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 25
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    goto :goto_2

    :cond_1
    const-string v6, "mounted_ro"

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 28
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    goto :goto_2

    .line 29
    :cond_2
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 30
    :goto_2
    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    const-string v6, "t2"

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    if-eqz v1, :cond_b

    :cond_3
    if-eqz p1, :cond_b

    .line 31
    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 32
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/c;->m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    if-eqz p2, :cond_b

    .line 33
    :try_start_1
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 34
    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p5, :cond_6

    cmp-long p2, v4, v7

    if-lez p2, :cond_4

    .line 35
    :try_start_2
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 36
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    goto/16 :goto_3

    :cond_4
    cmp-long p2, v4, v7

    if-gez p2, :cond_5

    .line 37
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 38
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    goto/16 :goto_3

    :cond_5
    cmp-long p1, v4, v7

    if-nez p1, :cond_c

    .line 39
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 40
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    goto/16 :goto_3

    .line 41
    :cond_6
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-interface {p2, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 42
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-interface {p2, v6, v2, v3}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p2, v4, v7

    if-gez p2, :cond_7

    cmp-long p2, v4, v2

    if-lez p2, :cond_7

    .line 43
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 44
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    :cond_7
    cmp-long p2, v4, v7

    if-lez p2, :cond_8

    cmp-long p2, v7, v2

    if-lez p2, :cond_8

    .line 45
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 46
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_8
    cmp-long p2, v4, v2

    if-nez p2, :cond_9

    cmp-long p2, v7, v2

    if-lez p2, :cond_9

    .line 47
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 48
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_9
    cmp-long p1, v7, v2

    if-nez p1, :cond_a

    cmp-long p1, v4, v2

    if-lez p1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 50
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    goto :goto_3

    :cond_a
    cmp-long p1, v4, v7

    if-nez p1, :cond_c

    .line 51
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 52
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_2
    :cond_b
    move-wide v7, v2

    :cond_c
    :goto_3
    cmp-long p1, v4, v7

    if-nez p1, :cond_d

    cmp-long p1, v4, v2

    if-nez p1, :cond_10

    cmp-long p1, v7, v2

    if-nez p1, :cond_10

    .line 53
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 54
    iget-boolean p3, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    if-eqz p3, :cond_e

    if-eqz p3, :cond_10

    cmp-long p3, v4, v2

    if-nez p3, :cond_10

    cmp-long p3, v7, v2

    if-nez p3, :cond_10

    .line 55
    :cond_e
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_f

    .line 56
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 57
    invoke-interface {p3, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    :cond_f
    :try_start_3
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz p3, :cond_10

    .line 60
    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    move-result-object p3

    .line 61
    invoke-interface {p3, v6, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    .line 62
    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_10
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/b;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 12
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 13
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 14
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 16
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 18
    :cond_5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method private e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b$a;->clear()Lcom/ta/utdid2/core/persistent/b$a;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_0

    .line 12
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 13
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_0

    .line 14
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_0

    .line 16
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_0

    .line 18
    :cond_5
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z

    :cond_6
    return-void
.end method

.method private k(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "%s%s%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/c;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/ta/utdid2/core/persistent/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ta/utdid2/core/persistent/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/b$a;->clear()Lcom/ta/utdid2/core/persistent/b$a;

    .line 8
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    if-nez v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    const-string v4, "t"

    .line 5
    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    :cond_2
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-nez v4, :cond_4

    .line 15
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ta/utdid2/core/persistent/c;->m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 16
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 17
    iget-boolean v5, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    if-nez v5, :cond_3

    .line 18
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0, v5, v4}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 20
    :goto_2
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    goto :goto_3

    .line 21
    :cond_4
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v4, :cond_5

    .line 22
    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, 0x0

    .line 23
    :cond_5
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v1, :cond_7

    .line 24
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    if-eqz v1, :cond_7

    .line 25
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    return v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public h(Ljava/lang/String;)F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public i(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public j(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v1, v2}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public o(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public p(Ljava/lang/String;F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public r(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    if-eqz v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/b$a;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    :cond_1
    return-void
.end method
