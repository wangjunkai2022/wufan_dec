.class Lcom/xinzhu/overmind/client/hook/delegate/d$a;
.super Ljava/lang/Object;
.source "ServiceConnectionDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/delegate/d;->createProxy(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)Landroid/app/IServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$iBinder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/delegate/d$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/d;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/client/hook/delegate/d$a;->a:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/d$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
