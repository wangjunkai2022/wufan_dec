.class public final Lcom/papa91/battle/protocol/RoomPosition$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RoomPosition.java"

# interfaces
.implements Lcom/papa91/battle/protocol/RoomPositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/RoomPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/RoomPosition;",
        "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->access$000()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/RoomPosition$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAvatar()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$1500(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$3400(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$2700(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$3000(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearClosed()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$200(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$1800(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearIgnore()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$3800(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearKickCount()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$3600(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$1200(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearPeripheral()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$2200(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearPhoneType()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$4700(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearPingVal()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$2000(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearPlatform()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$4200(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearProficiencyLevel()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$4400(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$2500(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearTitle()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$1000(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$600(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->access$400(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleAreaValue()I

    move-result v0

    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v0

    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    move-result v0

    return v0
.end method

.method public getIgnore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnoreBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPeripheral()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    move-result v0

    return v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPhoneType()Lcom/papa91/battle/protocol/PhoneType;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPhoneTypeValue()I

    move-result v0

    return v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    move-result v0

    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatformValue()I

    move-result v0

    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomPosition$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getStateValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$900(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1400(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1600(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3300(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3200(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2600(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2800(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2900(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3100(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClosed(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$100(Lcom/papa91/battle/protocol/RoomPosition;Z)V

    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1700(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setIgnore(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3700(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIgnoreBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3900(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKickCount(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$3500(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1100(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1300(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPeripheral(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2100(Lcom/papa91/battle/protocol/RoomPosition;Z)V

    return-object p0
.end method

.method public setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$4600(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/PhoneType;)V

    return-object p0
.end method

.method public setPhoneTypeValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$4500(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setPingVal(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1900(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setPlatform(Lcom/papa91/battle/protocol/Platform;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$4100(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/Platform;)V

    return-object p0
.end method

.method public setPlatformValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$4000(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setProficiencyLevel(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$4300(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomPosition$State;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2400(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/RoomPosition$State;)V

    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2300(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$800(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle$Builder;)V

    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$700(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$500(Lcom/papa91/battle/protocol/RoomPosition;I)V

    return-object p0
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$300(Lcom/papa91/battle/protocol/RoomPosition;Z)V

    return-object p0
.end method
