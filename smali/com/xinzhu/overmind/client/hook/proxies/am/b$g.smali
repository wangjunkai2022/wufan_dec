.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;
.super Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "checkPermissionWithToken"

    return-object v0
.end method
