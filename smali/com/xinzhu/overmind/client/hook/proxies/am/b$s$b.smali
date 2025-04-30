.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field mFilter:Landroid/content/IntentFilter;

.field mOrigin:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IInterface;Landroid/content/IntentFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "filter"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;->mOrigin:Landroid/os/IInterface;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resultCode",
            "data",
            "extras",
            "ordered",
            "sticky",
            "sendingUser"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/a;->i(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/content/k;

    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s$b;->mOrigin:Landroid/os/IInterface;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/content/k;-><init>(Ljava/lang/Object;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/xinzhu/haunted/android/content/k;->b(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    return-void
.end method
