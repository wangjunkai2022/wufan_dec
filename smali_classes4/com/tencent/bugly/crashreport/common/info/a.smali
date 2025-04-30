.class public final Lcom/tencent/bugly/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static Z:Lcom/tencent/bugly/crashreport/common/info/a;


# instance fields
.field public A:Z

.field public B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/tencent/bugly/crashreport/a;

.field public E:Landroid/content/SharedPreferences;

.field private final F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:J

.field private N:J

.field private O:J

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/Boolean;

.field private W:Ljava/lang/String;

.field private X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public final a:J

.field private aa:I

.field private ab:I

.field private ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/lang/Boolean;

.field private ag:Ljava/lang/Boolean;

.field private final ah:Ljava/lang/Object;

.field private final ai:Ljava/lang/Object;

.field private final aj:Ljava/lang/Object;

.field private final ak:Ljava/lang/Object;

.field private final al:Ljava/lang/Object;

.field private final am:Ljava/lang/Object;

.field private final an:Ljava/lang/Object;

.field private ao:I

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    const-string v1, "3.4.4"

    .line 3
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    const-string v1, "unknown"

    .line 4
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    const-string v2, ""

    .line 5
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 7
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:J

    .line 8
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    .line 9
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    .line 10
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 11
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/util/Map;

    const/4 v4, 0x0

    .line 13
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Z

    .line 14
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 15
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 16
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    .line 18
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/Boolean;

    .line 20
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    .line 21
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 22
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 23
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/util/Map;

    .line 24
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    .line 25
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    const/4 v5, -0x1

    .line 26
    iput v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:I

    .line 27
    iput v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    .line 28
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    .line 29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    .line 30
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 32
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    .line 33
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    .line 34
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    .line 35
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    .line 36
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    .line 37
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Ljava/lang/String;

    .line 41
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 42
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Z

    .line 43
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/lang/Boolean;

    .line 44
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Ljava/lang/Boolean;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/HashMap;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    .line 47
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    .line 55
    iput v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    .line 57
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    .line 58
    iput-byte v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->b:B

    .line 59
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    const-string v2, "BUGLY_APPID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    const-string v3, "APP_ID"

    invoke-virtual {p0, v3, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "BUGLY_APP_VERSION"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_2
    const-string v2, "BUGLY_APP_CHANNEL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_3
    const-string v2, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    :cond_4
    const-string v2, "com.tencent.rdm.uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    :cond_5
    const-string v2, "BUGLY_APP_BUILD_NO"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_6
    const-string v2, "BUGLY_AREA"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    :try_start_2
    const-string v1, "bugly_db_"

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 68
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Z

    const-string v0, "App is first time to be installed on the device."

    new-array v1, v4, [Ljava/lang/Object;

    .line 69
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 70
    sget-boolean v1, Lcom/tencent/bugly/b;->c:Z

    if-eqz v1, :cond_8

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    const-string v0, "BUGLY_COMMON_VALUES"

    .line 72
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "com info create end"

    .line 73
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static D()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Lcom/tencent/bugly/crashreport/common/info/a;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 8
    :cond_0
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final A()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public final B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    return v0
.end method

.method public final declared-synchronized C()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is it a virtual machine? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Does it has hook frame? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:I

    if-eq v1, p1, :cond_0

    .line 16
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:I

    const-string p1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    const-string v0, "APP_ID"

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz p1, :cond_2

    .line 5
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0}, Lcom/tencent/bugly/crashreport/a;->setNativeIsAppForeground(Z)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 11
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    const/16 v0, 0x5e20

    if-eq p1, v0, :cond_0

    .line 12
    iput v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "server scene tag %d changed to tag %d"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "10000"

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 6
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deviceId"

    .line 4
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 8
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "change deviceModel\uff0cold:%s new:%s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deviceModel"

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1

    throw v2

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 6
    monitor-exit p0

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceId"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "androidid"

    if-eqz v2, :cond_2

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Z

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_6

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "-"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 6
    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 7
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    return-object v0

    :cond_7
    return-object v2
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 9
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "deviceModel"

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:J

    return-wide v0
.end method

.method public final l()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    return-wide v0
.end method

.method public final m()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v2, "BuglySdkInfos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 7
    :try_start_3
    invoke-static {v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 9
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 10
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "["

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "SDK_INFO = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "SDK_INFO"

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "SDK_INFO is empty"

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ROM ID: %s"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public final x()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public final y()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method

.method public final z()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method
