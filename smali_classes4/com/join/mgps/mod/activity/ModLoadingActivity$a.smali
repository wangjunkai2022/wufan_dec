.class Lcom/join/mgps/mod/activity/ModLoadingActivity$a;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->h1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "messenger service is running"

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "start messenger service"

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    const-class v3, Lcom/join/mgps/va/service/MessengerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method
