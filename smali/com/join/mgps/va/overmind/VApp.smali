.class public Lcom/join/mgps/va/overmind/VApp;
.super Lcom/papa91/arc/MApplication;
.source "VApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/VApp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VApp.kt\ncom/join/mgps/va/overmind/VApp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1#2:165\n1849#3,2:166\n*E\n*S KotlinDebug\n*F\n+ 1 VApp.kt\ncom/join/mgps/va/overmind/VApp\n*L\n158#1,2:166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007R\"\u0010\u0018\u001a\u00020\u00118\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/join/mgps/va/overmind/VApp;",
        "Lcom/papa91/arc/MApplication;",
        "Landroid/content/Context;",
        "base",
        "",
        "attachBaseContext",
        "onCreate",
        "",
        "j",
        "",
        "path",
        "h",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "g",
        "f",
        "Lcom/join/mgps/pref/PrefDef_;",
        "a",
        "Lcom/join/mgps/pref/PrefDef_;",
        "e",
        "()Lcom/join/mgps/pref/PrefDef_;",
        "i",
        "(Lcom/join/mgps/pref/PrefDef_;)V",
        "prefDef",
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
.field private static b:Landroid/content/Context; = null

.field public static final c:Ljava/lang/String; = "VApp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z

.field public static final e:Lcom/join/mgps/va/overmind/VApp$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field protected a:Lcom/join/mgps/pref/PrefDef_;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/va/overmind/VApp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/VApp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/va/overmind/VApp;->e:Lcom/join/mgps/va/overmind/VApp$a;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/join/mgps/va/overmind/VApp;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MApplication;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/VApp;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/join/mgps/va/overmind/VApp;->d:Z

    return v0
.end method

.method public static final synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/va/overmind/VApp;->b:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/join/mgps/va/overmind/VApp;->d:Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object p1, Lcom/join/mgps/va/overmind/VApp;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance p1, Lcom/join/mgps/va/overmind/d;

    invoke-direct {p1}, Lcom/join/mgps/va/overmind/d;-><init>()V

    .line 5
    sget-object v0, Lcom/join/mgps/va/overmind/VApp;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/va/overmind/d;->g(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/va/overmind/d;->f()V

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Overmind.get()"

    if-eqz p1, :cond_2

    .line 8
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/xinzhu/overmind/Overmind;->setXPEnable(Z)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected final e()Lcom/join/mgps/pref/PrefDef_;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    if-nez v0, :cond_0

    const-string v1, "prefDef"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f()Z
    .locals 13

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emulator check: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ":fba"

    const-string v4, ":fc"

    const-string v5, ":gba"

    const-string v6, ":sfc"

    const-string v7, ":md"

    const-string v8, ":gbc"

    const-string v9, ":ps"

    const-string v10, ":wsc"

    const-string v11, ":psp"

    const-string v12, ":y"

    .line 3
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "Overmind.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isMonitorProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

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

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {p1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 11
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    return-object v1

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_3
    :goto_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method protected final i(Lcom/join/mgps/pref/PrefDef_;)V
    .locals 1
    .param p1    # Lcom/join/mgps/pref/PrefDef_;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method

.method public j()Z
    .locals 7

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "prefDef"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_7

    const-string v1, "294_4.8.8.8"

    const-string v4, "284_4.8.6.6"

    const-string v5, "260_4.8.2"

    .line 2
    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/va/overmind/VApp;->b:Landroid/content/Context;

    if-nez v5, :cond_2

    const-string v6, "context"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "context.filesDir"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "host_app.inf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/va/overmind/VApp;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_5

    .line 5
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "mainHostVersionCode"

    .line 6
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "mainHostVersionName"

    .line 7
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v1

    .line 10
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return v0

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return v0

    .line 13
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v1, :cond_a

    return v3

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/papa91/arc/MApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/papa91/arc/MApplication;->onCreate()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/va/overmind/VApp;->a:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->doCreate()V

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "Overmind.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/mgps/va/overmind/b;

    invoke-direct {v1}, Lcom/join/mgps/va/overmind/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->setCustomCallback(Lcom/xinzhu/overmind/custom/CustomCallback;)V

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/va/overmind/VApp$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/va/overmind/VApp$b;-><init>(Lcom/join/mgps/va/overmind/VApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-super {p0}, Lcom/papa91/arc/MApplication;->onCreate()V

    return-void
.end method
