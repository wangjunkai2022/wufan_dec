.class public Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTableDB"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->d:Ljava/util/LinkedHashMap;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->e:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/SQLiteHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    :cond_1
    iput-object v2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_d

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :catchall_1
    :cond_4
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_2
    const-string v0, "013UfgTkNeddeGdi(dd(l dffgSdiJdh"

    .line 19
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v0, "017d,di*ei.igificdfdk1h_icdkdfKli6igif"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "005dBdffced$i"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_6

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_d

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table  "

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 26
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 27
    iget-object v6, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 28
    iget-object v7, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    iget-boolean v8, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->g:Z

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 30
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-eqz v6, :cond_8

    const-string v5, " not null"

    goto :goto_3

    :cond_8
    move-object v5, v4

    .line 31
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_9

    const-string v4, " primary key"

    .line 32
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_a

    const-string v4, " autoincrement,"

    goto :goto_4

    :cond_a
    const-string v4, ","

    .line 33
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ");"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_c

    .line 36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_c
    throw v0

    :cond_d
    :goto_5
    return-void

    .line 38
    :cond_e
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "path is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method static synthetic a(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->a()V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->b()V

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->e:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
