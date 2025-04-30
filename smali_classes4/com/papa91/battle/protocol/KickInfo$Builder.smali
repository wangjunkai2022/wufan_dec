.class public final Lcom/papa91/battle/protocol/KickInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "KickInfo.java"

# interfaces
.implements Lcom/papa91/battle/protocol/KickInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/KickInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/KickInfo;",
        "Lcom/papa91/battle/protocol/KickInfo$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/KickInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->access$000()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/KickInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCopper()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->access$400(Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public clearCount()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->access$200(Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public clearIsVIP()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->access$600(Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->access$800(Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public clearVipCopper()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->access$1100(Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getCopper()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getCount()I

    move-result v0

    return v0
.end method

.method public getIsVIP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getIsVIP()Z

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVipCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getVipCopper()I

    move-result v0

    return v0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$300(Lcom/papa91/battle/protocol/KickInfo;I)V

    return-object p0
.end method

.method public setCount(I)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$100(Lcom/papa91/battle/protocol/KickInfo;I)V

    return-object p0
.end method

.method public setIsVIP(Z)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$500(Lcom/papa91/battle/protocol/KickInfo;Z)V

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$700(Lcom/papa91/battle/protocol/KickInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$900(Lcom/papa91/battle/protocol/KickInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVipCopper(I)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/KickInfo;->access$1000(Lcom/papa91/battle/protocol/KickInfo;I)V

    return-object p0
.end method
