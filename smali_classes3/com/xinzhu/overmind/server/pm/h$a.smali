.class Lcom/xinzhu/overmind/server/pm/h$a;
.super Landroid/content/BroadcastReceiver;
.source "MindPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/pm/h;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/pm/h;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/h$a;->a:Lcom/xinzhu/overmind/server/pm/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
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

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h$a;->a:Lcom/xinzhu/overmind/server/pm/h;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/h;->access$000(Lcom/xinzhu/overmind/server/pm/h;)Lcom/xinzhu/overmind/server/pm/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    :cond_1
    return-void
.end method
