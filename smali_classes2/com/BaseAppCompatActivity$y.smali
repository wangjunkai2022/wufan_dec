.class Lcom/BaseAppCompatActivity$y;
.super Landroid/content/BroadcastReceiver;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$y;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, " permissxx   getpermiss"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.wufun.get.downFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "gameid"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/BaseAppCompatActivity$y;->a:Lcom/BaseAppCompatActivity;

    invoke-static {p2, p1}, Lcom/BaseAppCompatActivity;->access$000(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/BaseAppCompatActivity$x;

    iget-object v0, p0, Lcom/BaseAppCompatActivity$y;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p1, v0}, Lcom/BaseAppCompatActivity$x;-><init>(Lcom/BaseAppCompatActivity;)V

    const-string v0, "permission"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/BaseAppCompatActivity$x;->a:Ljava/lang/String;

    const-string v0, "filePath"

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/BaseAppCompatActivity$x;->b:Ljava/lang/String;

    .line 8
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p2, Landroid/os/Message;->what:I

    .line 10
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/BaseAppCompatActivity$y;->a:Lcom/BaseAppCompatActivity;

    invoke-static {p1}, Lcom/BaseAppCompatActivity;->access$100(Lcom/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
