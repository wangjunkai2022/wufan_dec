.class public Lcom/mob/commons/cc/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/mob/commons/cc/q;

.field private static volatile b:Lcom/mob/commons/cc/p;

.field private static volatile c:Lcom/mob/commons/cc/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/mob/commons/cc/q;

    invoke-direct {v0}, Lcom/mob/commons/cc/q;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/a;->a:Lcom/mob/commons/cc/q;

    .line 2
    :try_start_0
    new-instance v0, Lcom/mob/commons/cc/p;

    new-instance v1, Lcom/mob/commons/cc/a$1;

    invoke-direct {v1}, Lcom/mob/commons/cc/a$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/p;-><init>(Lcom/mob/commons/cc/p$a;)V

    sput-object v0, Lcom/mob/commons/cc/a;->b:Lcom/mob/commons/cc/p;

    .line 3
    new-instance v0, Lcom/mob/commons/cc/p;

    new-instance v1, Lcom/mob/commons/cc/a$2;

    invoke-direct {v1}, Lcom/mob/commons/cc/a$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/p;-><init>(Lcom/mob/commons/cc/p$a;)V

    sput-object v0, Lcom/mob/commons/cc/a;->c:Lcom/mob/commons/cc/p;

    .line 4
    sget-object v0, Lcom/mob/commons/cc/a;->b:Lcom/mob/commons/cc/p;

    const-string v1, "tt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/p;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/cc/w;->a()I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    check-cast p0, Lcom/mob/commons/cc/y;

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/y;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-static {v0}, Lcom/mob/commons/cc/w;->a([Ljava/lang/String;)Lcom/mob/commons/cc/w$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/w$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lcom/mob/commons/cc/w;->a([Ljava/lang/String;)Lcom/mob/commons/cc/w$c;

    move-result-object p1

    const-string v0, "ss_dhMap"

    .line 5
    invoke-virtual {p1, v0, p3}, Lcom/mob/commons/cc/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object p3

    const-string v0, "ss_dataMaps"

    invoke-virtual {p3, v0, p4}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    const/4 p3, 0x0

    .line 6
    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/w$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lcom/mob/commons/cc/w;->a([[B)Lcom/mob/commons/cc/w$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcom/mob/commons/cc/a;->a(Lcom/mob/commons/cc/w$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static a(Lcom/mob/commons/cc/w$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    const-class v0, Lcom/mob/commons/cc/q;

    const-class v1, Lcom/mob/commons/cc/h;

    const-class v2, Lcom/mob/commons/cc/c;

    const-class v3, Lcom/mob/commons/cc/e;

    const-class v4, Lcom/mob/commons/cc/o;

    const-string v5, "012PekPdh\'cgce)c4cddbcjdg^hc"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/mob/commons/cc/w$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "MNT"

    .line 9
    invoke-virtual {v5, v6, v3}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "MSPH"

    .line 10
    invoke-virtual {v5, v6, v1}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "MBH"

    .line 11
    invoke-virtual {v5, v6, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "016!fhdbebgccecjZg+dc7h4cgdhKb<cgXh0ce)g"

    .line 12
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/tools/MobHandlerThread;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "0209fhdbebeicgdbce2gScfceefTc-fd;h%cf3hIcd>ihYcg"

    .line 13
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/commons/cc/i;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "018Gfhdbebffdbcj chNcjEcXfd<h9efdbdc]ih cg"

    .line 14
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/commons/cc/l;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "020_fhdbebdg,hFcg,iHcdcfZh0ffdbcjcj9hScfTc6cddbcj"

    .line 15
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/commons/cc/m;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "018<fhdbebffdbcjMchXcjYcEekebef0h8cgIih2cg"

    .line 16
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/commons/cc/k;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "0096dgeigccecj)gLdcAh cg"

    .line 17
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/commons/cc/p;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-class v6, Lcom/mob/tools/network/NetCommunicator;

    const-string v7, "MNC"

    .line 18
    invoke-virtual {v5, v7, v6}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-string v6, "004Nfhdedhek"

    .line 19
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-class v6, Lcom/mob/commons/cc/i;

    const-class v7, Lcom/mob/commons/cc/i;

    .line 20
    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-class v6, Lcom/mob/commons/cc/k;

    const-class v7, Lcom/mob/commons/cc/k;

    .line 21
    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    const-class v6, Lcom/mob/commons/cc/m;

    const-class v7, Lcom/mob/commons/cc/n;

    .line 22
    invoke-virtual {v5, v6, v7}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v0, v0}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v4, v4}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3, v3}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-class v3, Lcom/mob/commons/cc/j;

    .line 26
    invoke-virtual {v0, v1, v3}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    const-class v2, Lcom/mob/commons/cc/d;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManager;

    const-class v2, Lcom/mob/commons/cc/g;

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    const-class v2, Lcom/mob/commons/cc/f;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    const-class v2, Lcom/mob/commons/cc/b;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/cc/a;->a:Lcom/mob/commons/cc/q;

    const-string v2, "ss_suls"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object v0

    const-string v1, "015Qefefcccfdbcj1ch7ckFc3fgcecgceKk"

    .line 33
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object p1

    const-string v0, "014Sefefccef0cHcecgIcLfgcecgceOk>ef"

    .line 34
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object p1

    const-string p2, "012\'efefccefSc<cecg9cHdhcd:kh"

    .line 35
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object p1

    const-string p2, "0067efefccGkgd"

    .line 36
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/w$d;

    move-result-object p1

    const-string p2, "0169cfdb1kk*dbcjceLdJdkef4g?cidkcf1gNcf"

    .line 37
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/w$d;->a(Ljava/lang/String;)Lcom/mob/commons/cc/w$d;

    .line 38
    invoke-virtual {p0}, Lcom/mob/commons/cc/w$c;->a()V

    return-void
.end method

.method static synthetic b()Lcom/mob/commons/cc/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/cc/a;->c:Lcom/mob/commons/cc/p;

    return-object v0
.end method
