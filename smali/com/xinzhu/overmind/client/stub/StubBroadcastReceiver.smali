.class public Lcom/xinzhu/overmind/client/stub/StubBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StubBroadcastReceiver.java"


# static fields
.field public static final a:Ljava/lang/String; = "StubBroadcastReceiver"


# direct methods
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
    invoke-static {p2}, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
