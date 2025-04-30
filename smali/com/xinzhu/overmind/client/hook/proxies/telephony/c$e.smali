.class public Lcom/xinzhu/overmind/client/hook/proxies/telephony/c$e;
.super Lcom/xinzhu/overmind/client/hook/proxies/telephony/c$a;
.source "PhoneSubInfoStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/telephony/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getImeiForSubscriber"

    return-object v0
.end method
