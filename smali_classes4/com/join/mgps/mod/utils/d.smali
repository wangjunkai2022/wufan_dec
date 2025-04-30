.class public Lcom/join/mgps/mod/utils/d;
.super Ljava/lang/Object;
.source "PluginConstants.java"


# static fields
.field public static final a:Ljava/lang/String; = "Plugin"

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String; = "armeabi"

.field public static final e:Ljava/lang/String; = "x86"

.field public static final f:Ljava/lang/String; = "mips"

.field public static final g:Ljava/lang/String; = "plugin_configs"

.field public static final h:Ljava/lang/String; = "pluginLib"

.field public static final i:Ljava/lang/String; = "Plugin"

.field public static final j:Ljava/lang/String; = "PluginEntryData"

.field public static final k:Ljava/lang/String; = "useNativeLib"

.field public static final l:Ljava/lang/String; = "soCode"

.field public static final m:Ljava/lang/String; = "soVersion"

.field public static final n:Ljava/lang/String; = "launchPackage"

.field public static final o:Ljava/lang/String; = "hostPlatform"

.field public static final p:Ljava/lang/String; = "hostFlavor"

.field public static final q:Ljava/lang/String; = "hostTargetVersion"

.field public static final r:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final s:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyStart"

.field public static final t:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyFinish"

.field public static final u:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyFail"

.field public static final v:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.loadMod"

.field public static final w:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.launchEngine"

.field public static final x:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.exitGame"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "libctrl.so"

    const-string v1, "libGGGG.so"

    const-string v2, "libpgod.so"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/mod/utils/d;->b:[Ljava/lang/String;

    const-string v0, "libtolua.so"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/mod/utils/d;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
