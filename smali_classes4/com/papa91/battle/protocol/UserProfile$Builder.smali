.class public final Lcom/papa91/battle/protocol/UserProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UserProfile.java"

# interfaces
.implements Lcom/papa91/battle/protocol/UserProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/UserProfile;",
        "Lcom/papa91/battle/protocol/UserProfile$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/UserProfileOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->access$000()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/UserProfile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/UserProfile$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArea()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$2300(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$700(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$1200(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$1500(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$1800(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearKickCount()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$2000(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$400(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$200(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->access$1000(Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public getArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getAreaValue()I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getCopper()I

    move-result v0

    return v0
.end method

.method public getKickCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getKickCount()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getUid()I

    move-result v0

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->getVip()Z

    move-result v0

    return v0
.end method

.method public setArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$2200(Lcom/papa91/battle/protocol/UserProfile;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setAreaValue(I)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$2100(Lcom/papa91/battle/protocol/UserProfile;I)V

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$600(Lcom/papa91/battle/protocol/UserProfile;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$800(Lcom/papa91/battle/protocol/UserProfile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1100(Lcom/papa91/battle/protocol/UserProfile;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1300(Lcom/papa91/battle/protocol/UserProfile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1400(Lcom/papa91/battle/protocol/UserProfile;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1600(Lcom/papa91/battle/protocol/UserProfile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1700(Lcom/papa91/battle/protocol/UserProfile;I)V

    return-object p0
.end method

.method public setKickCount(I)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$1900(Lcom/papa91/battle/protocol/UserProfile;I)V

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$300(Lcom/papa91/battle/protocol/UserProfile;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$500(Lcom/papa91/battle/protocol/UserProfile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$100(Lcom/papa91/battle/protocol/UserProfile;I)V

    return-object p0
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/UserProfile;->access$900(Lcom/papa91/battle/protocol/UserProfile;Z)V

    return-object p0
.end method
