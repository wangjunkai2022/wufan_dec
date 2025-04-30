.class public Lcom/bytedance/pangle/log/ZeusLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Zeus"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "Zeus/activity"

.field public static final TAG_DOWNLOAD:Ljava/lang/String; = "Zeus/download"

.field public static final TAG_INIT:Ljava/lang/String; = "Zeus/init"

.field public static final TAG_INSTALL:Ljava/lang/String; = "Zeus/install"

.field public static final TAG_LOAD:Ljava/lang/String; = "Zeus/load"

.field public static final TAG_PAM:Ljava/lang/String; = "Zeus/pam"

.field public static final TAG_PPM:Ljava/lang/String; = "Zeus/ppm"

.field public static final TAG_PROVIDER:Ljava/lang/String; = "Zeus/provider"

.field public static final TAG_RECEIVER:Ljava/lang/String; = "Zeus/receiver"

.field public static final TAG_REPORTER:Ljava/lang/String; = "Zeus/reporter"

.field public static final TAG_RESOURCES:Ljava/lang/String; = "Zeus/resources"

.field public static final TAG_SERVER:Ljava/lang/String; = "Zeus/server"

.field public static final TAG_SERVICE:Ljava/lang/String; = "Zeus/service"

.field public static final TAG_SO:Ljava/lang/String; = "Zeus/so"

.field private static sDebug:Z = true

.field private static sEnableTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZeusLogger1655219899457dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :pswitch_0
    const/16 v0, 0x4a

    const/16 v1, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :goto_2
    :pswitch_4
    const/16 v0, 0x49

    const/16 v1, 0x60

    goto :goto_0

    :goto_3
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static errReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/pangle/log/IZeusLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static getTraceInfo()Ljava/lang/String;
    .locals 6

    const-string v0, "\t\t[No Trace Info]"

    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/bytedance/pangle/log/ZeusLogger;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v2, v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\t\t["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/pangle/log/ZeusLogger;->prefixTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/pangle/log/IZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    return v0
.end method

.method public static isEnableTrace()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sEnableTrace:Z

    return v0
.end method

.method private static prefixTraceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sEnableTrace:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/pangle/log/ZeusLogger;->getTraceInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    return-void
.end method

.method public static setEnableTrace(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/pangle/log/ZeusLogger;->sEnableTrace:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/pangle/log/ZeusLogger;->prefixTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/pangle/log/IZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/pangle/log/ZeusLogger;->prefixTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/pangle/log/IZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/pangle/log/ZeusLogger;->prefixTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/bytedance/pangle/log/ZeusLogger;->sDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getLogger()Lcom/bytedance/pangle/log/IZeusLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/pangle/log/IZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
