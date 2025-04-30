.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;
.super Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "getIntentSenderWithSourceToken"

    return-object v0
.end method
