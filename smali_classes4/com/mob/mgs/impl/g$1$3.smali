.class Lcom/mob/mgs/impl/g$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object p1, p1, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "guard_listener"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 5
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/guard/OnAppActiveListener;

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/mob/guard/OnAppActiveListener;->onAppActive(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/mob/mgs/impl/g;->c()Lcom/mob/mgs/OnAppActiveListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mgs/impl/g$1$3;->a:Lcom/mob/mgs/impl/g$1;

    iget-object v0, v0, Lcom/mob/mgs/impl/g$1;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/mob/mgs/OnAppActiveListener;->onAppActive(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 10
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
