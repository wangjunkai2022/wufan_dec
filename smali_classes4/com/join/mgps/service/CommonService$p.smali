.class Lcom/join/mgps/service/CommonService$p;
.super Landroid/content/BroadcastReceiver;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$p;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "text"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wufan/friend/chat/c;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->K()V

    :goto_0
    return-void
.end method
