.class Lcom/xinzhu/overmind/server/pm/l$a;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/j;


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
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/l$a;->a:Lcom/xinzhu/overmind/server/pm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/l$a;->a:Lcom/xinzhu/overmind/server/pm/l;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/l;->h(Lcom/xinzhu/overmind/server/pm/l;Landroid/content/Intent;I)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/l$a;->a:Lcom/xinzhu/overmind/server/pm/l;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/l;->h(Lcom/xinzhu/overmind/server/pm/l;Landroid/content/Intent;I)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/l$a;->a:Lcom/xinzhu/overmind/server/pm/l;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/l;->h(Lcom/xinzhu/overmind/server/pm/l;Landroid/content/Intent;I)V

    return-void
.end method
