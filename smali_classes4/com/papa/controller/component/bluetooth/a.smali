.class public Lcom/papa/controller/component/bluetooth/a;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/a$d;
    }
.end annotation


# static fields
.field private static k:Lcom/papa/controller/component/bluetooth/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:I

.field private d:Landroid/bluetooth/BluetoothProfile;

.field private e:Z

.field private f:Lcom/papa/controller/component/bluetooth/a$d;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/papa/controller/component/bluetooth/a;->c:I

    .line 4
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;

    .line 5
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/a;->e:Z

    .line 6
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/papa/controller/component/bluetooth/a$b;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/a$b;-><init>(Lcom/papa/controller/component/bluetooth/a;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 8
    new-instance v0, Lcom/papa/controller/component/bluetooth/a$c;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/a$c;-><init>(Lcom/papa/controller/component/bluetooth/a;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->j:Landroid/content/BroadcastReceiver;

    .line 9
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    .line 10
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    new-instance p1, Lcom/papa/controller/component/bluetooth/a$a;

    invoke-direct {p1, p0}, Lcom/papa/controller/component/bluetooth/a$a;-><init>(Lcom/papa/controller/component/bluetooth/a;)V

    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/papa/controller/component/bluetooth/a;)Lcom/papa/controller/component/bluetooth/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/a;->f:Lcom/papa/controller/component/bluetooth/a$d;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/papa/controller/component/bluetooth/a;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/component/bluetooth/a;->v(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/a;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/a;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private j()V
    .locals 3

    const-string v0, "closeProfileProxy"

    .line 1
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    iget v1, p0, Lcom/papa/controller/component/bluetooth/a;->c:I

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private m()I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothProfile;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 4
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INPUT_DEVICE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 7
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "HID_HOST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static n(Landroid/content/Context;)Lcom/papa/controller/component/bluetooth/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/a;->k:Lcom/papa/controller/component/bluetooth/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/controller/component/bluetooth/a;->k:Lcom/papa/controller/component/bluetooth/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa/controller/component/bluetooth/a;->k:Lcom/papa/controller/component/bluetooth/a;

    return-object p0
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/a;->c:I

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->m()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/component/bluetooth/a;->c:I

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget v3, p0, Lcom/papa/controller/component/bluetooth/a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private t()V
    .locals 3

    const-string v0, "Registering BluetoothReceiver..."

    .line 1
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/a;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->z()V

    .line 3
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Registering BluetoothReceiver failed."

    .line 20
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "Registering BluetoothReceiver finished."

    .line 22
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return-void
.end method

.method private v(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static w(I)V
    .locals 2

    int-to-long v0, p0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Unregistering BluetoothReceiver..."

    .line 2
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/a;->e:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unregistering BluetoothReceiver failed."

    .line 6
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, "Unregistering BluetoothReceiver finished."

    .line 8
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->d:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v1, "Bluetooth is not available."

    .line 2
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "Bluetooth is not available. Cannot get bluetooth address."

    .line 3
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return v0
.end method

.method declared-synchronized s()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->q()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/a;->g:Ljava/util/Map;

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/a;->k()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 8
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 9
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/component/bluetooth/a;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 12
    iget-object v5, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/papa/controller/component/bluetooth/a;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 14
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a;->h:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public u(Lcom/papa/controller/component/bluetooth/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a;->f:Lcom/papa/controller/component/bluetooth/a$d;

    .line 2
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/a;->s()V

    return-void
.end method

.method public x()V
    .locals 1

    const-string v0, "BluetoothManager starting ..."

    .line 1
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothManager start failed."

    .line 3
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->t()V

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->j()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "BluetoothManager start finished."

    .line 8
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->j()V

    .line 2
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/a;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
