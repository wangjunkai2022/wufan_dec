.class public Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StubTrampolineReceiver.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
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
    sget-object p1, Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;->a:Ljava/lang/String;

    const-string v0, "StubTrampolineReceiver onReceive"

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->sanityCheck()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 5
    invoke-static {p2}, Lcom/xinzhu/overmind/client/hook/env/a;->k(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/xinzhu/overmind/client/frameworks/a;->w(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
