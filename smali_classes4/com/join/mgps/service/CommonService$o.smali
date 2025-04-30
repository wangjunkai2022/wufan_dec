.class Lcom/join/mgps/service/CommonService$o;
.super Landroid/content/BroadcastReceiver;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$o;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->a:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p1}, Lcom/join/mgps/service/CommonService;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->a:Lcom/join/mgps/service/CommonService;

    iget-object p1, p1, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string p2, "type"

    const-string v0, "11"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->a:Lcom/join/mgps/service/CommonService;

    iget-object p1, p1, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string p2, "msg"

    const-string v0, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->a:Lcom/join/mgps/service/CommonService;

    iget-object p2, p1, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
