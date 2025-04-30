.class public final Lcom/join/mgps/va/overmind/d$d;
.super Lcom/xinzhu/overmind/client/a;
.source "OvermindLoadCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/overmind/d;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/join/mgps/va/overmind/d$d",
        "Lcom/xinzhu/overmind/client/a;",
        "",
        "getHostPackageName",
        "getMainPackageName",
        "getPluginPackageName",
        "getMainAuthorityPrefix",
        "getPluginAuthorityPrefix",
        "",
        "isPluginValid",
        "ifDisablePluginPackageAutoManage",
        "ifDisableDaemonService",
        "packageName",
        "",
        "userId",
        "ifDisableVirtualDeviceForPackage",
        "isHideRoot",
        "isHideXposed",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/overmind/d$d;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/join/mgps/va/overmind/d$d;->b:Z

    iput-boolean p3, p0, Lcom/join/mgps/va/overmind/d$d;->c:Z

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostPackageName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/overmind/d$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMainAuthorityPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "com.join.android.app.mgsim.wufun"

    return-object v0
.end method

.method public getMainPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "com.join.android.app.mgsim.wufun"

    return-object v0
.end method

.method public getPluginAuthorityPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "com.join.android.app.mgsim.wufun.addon"

    return-object v0
.end method

.method public getPluginPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "com.join.android.app.mgsim.wufun.addon"

    return-object v0
.end method

.method public ifDisableDaemonService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifDisablePluginPackageAutoManage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "userId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "com.join.android.app.mgsim.wufun.virtual.service.dbprovider"

    const-string v1, "miniGameInfo"

    .line 4
    invoke-static {p2, v1, p1, v0}, Lcom/join/mgps/va/overmind/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "isMiniGame"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 7
    :cond_0
    sget-object v0, Lcom/join/mgps/va/overmind/VApp;->e:Lcom/join/mgps/va/overmind/VApp$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/VApp$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "vm_device_switch"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isHideRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/va/overmind/d$d;->b:Z

    return v0
.end method

.method public isHideXposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/va/overmind/d$d;->c:Z

    return v0
.end method

.method public isPluginValid()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    iget-object v1, p0, Lcom/join/mgps/va/overmind/d$d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e$a;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
