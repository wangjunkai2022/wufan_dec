.class public Lcom/mob/tools/utils/DeviceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/DeviceHelper;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentActivityThread()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aL()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 3

    const-class v0, Lcom/mob/tools/utils/DeviceHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v2, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static invokeRuntimeExec(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "017^igeg1k0egfmfeegelggfmhfedelReAef.mj"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "010:gg@jeGhfedel6e$ef8mj"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "004jYemWj>eh"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    new-array p0, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, p0, v2

    invoke-static {v0, v1, v4, p0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkNetworkAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ah()Z

    move-result v0

    return v0
.end method

.method public checkPad()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkUA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public cx()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public debugable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->d()Z

    move-result v0

    return v0
.end method

.method public devEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->g()Z

    move-result v0

    return v0
.end method

.method public getAD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->bd()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getALLD()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->bc()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ab()I

    move-result v0

    return v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLastUpdateTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aP()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aG()I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aM()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableWifiList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->O()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableWifiListOneKey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->be()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBaseband()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryState(Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/ReflectHelper$a<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/DeviceHelper$1;-><init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/ReflectHelper$a;)V

    .line 2
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/mob/tools/a/a;->a(Landroid/os/Handler$Callback;)V

    :cond_0
    return-void
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardFromSysProperty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUFreq()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->am()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCPUInfo()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->U()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCPUType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamResolution()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aj()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier(Z)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->c(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierName(Z)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->d(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCdmaBid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->J()I

    move-result v0

    return v0
.end method

.method public getCdmaLat()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->H()I

    move-result v0

    return v0
.end method

.method public getCdmaLon()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->I()I

    move-result v0

    return v0
.end method

.method public getCdmaNid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->L()I

    move-result v0

    return v0
.end method

.method public getCdmaSid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->K()I

    move-result v0

    return v0
.end method

.method public getCellId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->E()I

    move-result v0

    return v0
.end method

.method public getCellLac()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->F()I

    move-result v0

    return v0
.end method

.method public getCgroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWifiInfo()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->N()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDataNtType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ai()I

    move-result v0

    return v0
.end method

.method public getDefaultIM()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aA()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIMPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->az()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultResolvePkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDataNotAES()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ax()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey(Z)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->f(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceMemUsage()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->at()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlavor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIA(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->e(Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(IIZ)Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/a/a;->a(IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getMIUIVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aa()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->M()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getODH()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Q()I

    move-result v0

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPInfo(ILjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/mob/tools/a/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1, p2}, Lcom/mob/tools/a/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/mob/tools/a/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPsc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->G()I

    move-result v0

    return v0
.end method

.method public getQemuKernel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolvePkgs(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSA()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aw()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->W()I

    move-result v0

    return v0
.end method

.method public getScreenBrightnessMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->X()I

    move-result v0

    return v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSerialno()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Z()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->al()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTTYDriversInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->V()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraffic()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getUD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->bb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ba()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public isFakePass(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInMainProcess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aI()Z

    move-result v0

    return v0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRooted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public isSensitiveDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->k()Z

    move-result v0

    return v0
.end method

.method public isSmlt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->j()Z

    move-result v0

    return v0
.end method

.method public isWifiProxy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->i()Z

    move-result v0

    return v0
.end method

.method public queryIMEI()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->C()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryIMSI()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->q()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public regReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerWifiScanReceiver(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public scanWifiList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->P()Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public unregReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public usbEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->h()Z

    move-result v0

    return v0
.end method

.method public vpn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->e()Z

    move-result v0

    return v0
.end method
