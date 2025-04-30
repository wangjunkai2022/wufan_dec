.class public final Lcom/papa91/battle/protocol/Account$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Account.java"

# interfaces
.implements Lcom/papa91/battle/protocol/AccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Account;",
        "Lcom/papa91/battle/protocol/Account$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/AccountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->access$000()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Account$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArea()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$2300(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$700(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$1200(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$1500(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$1800(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearIgnore1()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$2500(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearKickCount()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$2000(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$400(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearPhoneType()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$3400(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearPlatform()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$2900(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearProficiencyLevel()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$3100(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$200(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->access$1000(Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public getArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getAreaValue()I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getCopper()I

    move-result v0

    return v0
.end method

.method public getIgnore1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnore1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getIgnore1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getPhoneType()Lcom/papa91/battle/protocol/PhoneType;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getPhoneTypeValue()I

    move-result v0

    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getPlatformValue()I

    move-result v0

    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getUid()I

    move-result v0

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getVip()Z

    move-result v0

    return v0
.end method

.method public setArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2200(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setAreaValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2100(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$600(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$800(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1100(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1300(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1400(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1600(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1700(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setIgnore1(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2400(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIgnore1Bytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2600(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKickCount(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$1900(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$300(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$500(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$3300(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/PhoneType;)V

    return-object p0
.end method

.method public setPhoneTypeValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$3200(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setPlatform(Lcom/papa91/battle/protocol/Platform;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2800(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/Platform;)V

    return-object p0
.end method

.method public setPlatformValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$2700(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setProficiencyLevel(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$3000(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$100(Lcom/papa91/battle/protocol/Account;I)V

    return-object p0
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Account;->access$900(Lcom/papa91/battle/protocol/Account;Z)V

    return-object p0
.end method
