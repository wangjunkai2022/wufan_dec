.class Lcom/xinzhu/overmind/server/pm/l$c;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/pm/l;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/pm/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/l$c;->a:Lcom/xinzhu/overmind/server/pm/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/l$c;->a:Lcom/xinzhu/overmind/server/pm/l;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/server/pm/l;->h(Lcom/xinzhu/overmind/server/pm/l;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
