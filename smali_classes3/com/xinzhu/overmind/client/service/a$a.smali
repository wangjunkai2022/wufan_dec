.class Lcom/xinzhu/overmind/client/service/a$a;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/service/a;->b(Landroid/content/Intent;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/Intent$FilterComparison;

.field final synthetic c:Lcom/xinzhu/overmind/client/service/a;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/service/a;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$iBinder",
            "val$filterComparison"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a$a;->c:Lcom/xinzhu/overmind/client/service/a;

    iput-object p2, p0, Lcom/xinzhu/overmind/client/service/a$a;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xinzhu/overmind/client/service/a$a;->b:Landroid/content/Intent$FilterComparison;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$a;->c:Lcom/xinzhu/overmind/client/service/a;

    invoke-static {v0}, Lcom/xinzhu/overmind/client/service/a;->a(Lcom/xinzhu/overmind/client/service/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a$a;->b:Landroid/content/Intent$FilterComparison;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
