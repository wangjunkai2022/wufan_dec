.class Lcom/join/mgps/service/MAIDLService$a$a;
.super Ljava/lang/Object;
.source "MAIDLService.java"

# interfaces
.implements Lcom/join/mgps/Util/k1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/MAIDLService$a;->oauth4StandaloneGame(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/service/MAIDLService$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/MAIDLService$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/MAIDLService$a$a;->b:Lcom/join/mgps/service/MAIDLService$a;

    iput-object p2, p0, Lcom/join/mgps/service/MAIDLService$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/Util/k1$c;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.join.android.wufun.sdk.wfsg.broadcast."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/service/MAIDLService$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/Util/k1$c;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send rs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/Util/k1$c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "xxxxx"

    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/service/MAIDLService$a$a;->b:Lcom/join/mgps/service/MAIDLService$a;

    iget-object p1, p1, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
