.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;
.super Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "bindIsolatedService"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
