.class public Lcom/mob/commons/cc/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "016]ff4idGehdifgRdil?eh-i$dh9jIdedgBi"

    .line 2
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    aget-object p2, p4, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 4
    aput-object p2, p6, v0

    .line 5
    aput-object p1, p7, v0

    :goto_0
    return p5

    :cond_0
    const-string p2, "getApplicationInfo"

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, p4

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_1
    const-string p2, "018\'ffBid4ggecdk9di^dkTdZgeYiIfgeced1ji9dh"

    .line 8
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    array-length p2, p4

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_2
    const-string p2, "014\'ff=idAghdfdgdjdfffWiPefdf3li"

    .line 10
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    array-length p2, p4

    if-nez p2, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_3
    const-string p2, "017Dff\'id;ghdfdgdjdfff_iDgidfdkdfff@iOdh"

    .line 12
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    array-length p2, p4

    if-nez p2, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_4
    const-string p2, "startActivity"

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    array-length p2, p4

    if-ne p2, p5, :cond_5

    aget-object p2, p4, v0

    instance-of p2, p2, Landroid/content/Intent;

    if-eqz p2, :cond_5

    .line 15
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p5

    :cond_5
    const-string p2, "011YffXid$fkdeedYiFfgfidedh"

    .line 16
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_6
    const-string p2, "009[ff_idCejfgfgCidRfg"

    .line 18
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_7
    const-string p2, "016\'dhMiGffdefg diTdhge!iIdg3iIdeMji5dh"

    .line 20
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p7, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_9

    .line 21
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_8

    array-length p2, p4

    if-ne p2, p7, :cond_8

    aget-object p2, p4, v0

    instance-of p2, p2, Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_8

    aget-object p2, p4, p5

    instance-of p2, p2, Landroid/content/IntentFilter;

    if-eqz p2, :cond_8

    aget-object p2, p4, v1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_8

    .line 22
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/BroadcastReceiver;

    aget-object p3, p4, p5

    check-cast p3, Landroid/content/IntentFilter;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    .line 23
    :cond_8
    array-length p2, p4

    if-ne p2, v1, :cond_e

    aget-object p2, p4, v0

    instance-of p2, p2, Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_e

    aget-object p2, p4, p5

    instance-of p2, p2, Landroid/content/IntentFilter;

    if-eqz p2, :cond_e

    .line 24
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/BroadcastReceiver;

    aget-object p3, p4, p5

    check-cast p3, Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_9
    const-string p2, "0186dcdkdh9i(ffdefgGdi\'dhge$i]dgFiXdeUji.dh"

    .line 25
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 26
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return p5

    :cond_a
    const-string p2, "019:dg[ciQdgdjehUi8edfhghUiOdhQl?defgfgdeecdk"

    .line 27
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    array-length p2, p4

    if-ne p2, p5, :cond_c

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_b

    .line 29
    aget-object p2, p4, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, v0

    goto :goto_1

    .line 30
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    aget-object p3, p4, v0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, v0

    :goto_1
    return p5

    :cond_c
    const-string p2, "bindService"

    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    array-length p2, p4

    if-ne p2, p7, :cond_d

    .line 32
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/Intent;

    aget-object p3, p4, p5

    check-cast p3, Landroid/content/ServiceConnection;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_d
    const-string p2, "unbindService"

    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    array-length p2, p4

    if-ne p2, p5, :cond_e

    aget-object p2, p4, v0

    instance-of p2, p2, Landroid/content/ServiceConnection;

    if-eqz p2, :cond_e

    .line 34
    aget-object p2, p4, v0

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return p5

    :cond_e
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/d;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
