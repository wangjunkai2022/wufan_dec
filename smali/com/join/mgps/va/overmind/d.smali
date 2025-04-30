.class public final Lcom/join/mgps/va/overmind/d;
.super Ljava/lang/Object;
.source "OvermindLoadCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00072\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J6\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0012\u001a\u00020\tJ\u0010\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016R\u001e\u0010\u001c\u001a\n \u0019*\u0004\u0018\u00010\u000c0\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/join/mgps/va/overmind/d;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/net/Uri;",
        "uri",
        "Landroid/content/ContentProviderClient;",
        "e",
        "client",
        "",
        "j",
        "g",
        "",
        "method",
        "arg",
        "Landroid/os/Bundle;",
        "extras",
        "call",
        "f",
        "h",
        "packageName",
        "processName",
        "Landroid/app/Application;",
        "application",
        "i",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static b:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.virtual.service.dbprovider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lcom/join/mgps/va/overmind/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/va/overmind/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/va/overmind/d;->e:Lcom/join/mgps/va/overmind/d$a;

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/join/mgps/va/overmind/d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/join/mgps/va/overmind/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/va/overmind/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/d;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/d;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic c(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/va/overmind/d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic d(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/va/overmind/d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final e(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final j(Landroid/content/ContentProviderClient;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/va/overmind/d;->e(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/va/overmind/d;->j(Landroid/content/ContentProviderClient;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalAccessException;

    invoke-direct {p2}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    :try_start_2
    new-instance p3, Ljava/lang/IllegalAccessException;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_1
    invoke-direct {p0, p1}, Lcom/join/mgps/va/overmind/d;->j(Landroid/content/ContentProviderClient;)V

    throw p2
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "Overmind.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/join/mgps/va/overmind/d$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/va/overmind/d$b;-><init>(Lcom/join/mgps/va/overmind/d;)V

    invoke-virtual {v0, v2}, Lcom/xinzhu/overmind/Overmind;->setAppLifecycleCallback(Lcom/xinzhu/overmind/client/hook/a;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/mgps/va/overmind/d$c;

    invoke-direct {v1}, Lcom/join/mgps/va/overmind/d$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->setActivityLifecycleCallback(Lcom/xinzhu/overmind/client/hook/delegate/a;)V

    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "root_hide"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "xp_hide"

    .line 4
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/va/overmind/d$d;

    invoke-direct {v3, p1, v2, v0}, Lcom/join/mgps/va/overmind/d$d;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v1, p1, v3}, Lcom/xinzhu/overmind/Overmind;->doAttachBaseContext(Landroid/content/Context;Lcom/xinzhu/overmind/client/a;)V

    return-void
.end method

.method public final h(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "kitsBitmask"

    const-string v1, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "com.facebook.sdk.USER_SETTINGS"

    const/4 v3, 0x4

    .line 1
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, -0x1

    .line 2
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v5, 0x7

    .line 3
    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string v1, "com.facebook.sdk.appEventPreferences"

    .line 5
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/16 v1, 0x227

    .line 7
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    new-array v1, v3, [Ljava/lang/String;

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCleartextTrafficPermitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    new-array v1, v3, [Ljava/lang/String;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchMod start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/join/mgps/va/overmind/e;

    invoke-direct {v1}, Lcom/join/mgps/va/overmind/e;-><init>()V

    invoke-virtual {v1, p1, p2, p3}, Lcom/join/mgps/va/overmind/e;->Y(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    instance-of p3, p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p3, :cond_3

    .line 9
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/join/mgps/va/overmind/d;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    new-array p1, v3, [Ljava/lang/String;

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchMod finish:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", activityLifeCallback:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/join/mgps/va/overmind/d;->b:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, ":"

    const/4 p3, 0x2

    .line 11
    invoke-static {p2, p1, v2, p3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string v5, ":"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p2

    .line 12
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_0
    new-array p1, v3, [Ljava/lang/String;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "process->"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string v0, "main"

    :cond_7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
