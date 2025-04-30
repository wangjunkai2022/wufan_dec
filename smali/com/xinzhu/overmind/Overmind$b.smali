.class Lcom/xinzhu/overmind/Overmind$b;
.super Ljava/lang/Object;
.source "Overmind.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/Overmind;->doAttachBaseContext(Landroid/content/Context;Lcom/xinzhu/overmind/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/Overmind;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/Overmind;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind$b;->a:Lcom/xinzhu/overmind/Overmind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    const-string v1, ":mind process dead, finish this process."

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
