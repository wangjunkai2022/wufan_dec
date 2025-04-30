.class public Lcom/join/mgps/Util/d;
.super Ljava/lang/Object;
.source "AntiEmulator.java"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;

.field private static f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "/dev/socket/qemud"

    const-string v1, "/dev/qemu_pipe"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->a:[Ljava/lang/String;

    const-string v0, "goldfish"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->b:[Ljava/lang/String;

    const-string v0, "/system/lib/libc_malloc_debug_qemu.so"

    const-string v1, "/sys/qemu_trace"

    const-string v2, "/system/bin/qemu-props"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->c:[Ljava/lang/String;

    const-string v1, "15555215554"

    const-string v2, "15555215556"

    const-string v3, "15555215558"

    const-string v4, "15555215560"

    const-string v5, "15555215562"

    const-string v6, "15555215564"

    const-string v7, "15555215566"

    const-string v8, "15555215568"

    const-string v9, "15555215570"

    const-string v10, "15555215572"

    const-string v11, "15555215574"

    const-string v12, "15555215576"

    const-string v13, "15555215578"

    const-string v14, "15555215580"

    const-string v15, "15555215582"

    const-string v16, "15555215584"

    .line 4
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->d:[Ljava/lang/String;

    const-string v0, "000000000000000"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->e:[Ljava/lang/String;

    const-string v0, "310260000000000"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/d;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/join/mgps/Util/d;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static b()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 5
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 8
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/join/mgps/Util/d;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/join/mgps/Util/d;->f:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/join/mgps/Util/d;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static f()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/join/mgps/Util/d;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static g()Z
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 8
    sget-object v1, Lcom/join/mgps/Util/d;->b:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method
