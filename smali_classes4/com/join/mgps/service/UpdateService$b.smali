.class Lcom/join/mgps/service/UpdateService$b;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/service/UpdateService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_6

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    iget-boolean v1, v0, Lcom/join/mgps/service/UpdateService;->h:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.papa.broadcast.showUpdateDialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/VersionDto;->setFilepath(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;

    move-result-object p1

    const-string v1, "papaUpdateinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 10
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    goto/16 :goto_1

    .line 11
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 13
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    move-result v1

    invoke-virtual {p1, v0, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v0, v3}, Lcom/join/mgps/service/UpdateService;->g(Lcom/join/mgps/service/UpdateService;I)I

    .line 18
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/join/mgps/service/UpdateService;->l(Lcom/join/mgps/service/UpdateService;Ljava/io/File;Landroid/content/Context;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return-void
.end method
