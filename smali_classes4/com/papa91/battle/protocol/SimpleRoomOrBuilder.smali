.class public interface abstract Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
.super Ljava/lang/Object;
.source "SimpleRoomOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAllowPCJoin()Z
.end method

.method public abstract getAllowPeripheralJoin()Z
.end method

.method public abstract getAllowSpectatorJoin()Z
.end method

.method public abstract getAvatar()Ljava/lang/String;
.end method

.method public abstract getAvatarBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
.end method

.method public abstract getBattleAreaValue()I
.end method

.method public abstract getBattleTitle()Ljava/lang/String;
.end method

.method public abstract getBattleTitleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBattleTitleColor()Ljava/lang/String;
.end method

.method public abstract getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getChallengeCoins()I
.end method

.method public abstract getCollectionId()I
.end method

.method public abstract getCopper()I
.end method

.method public abstract getCreateAt()J
.end method

.method public abstract getElite()Z
.end method

.method public abstract getGameId()J
.end method

.method public abstract getGameName()Ljava/lang/String;
.end method

.method public abstract getGameNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHasJoinPassword()Z
.end method

.method public abstract getHasPeripheralPlayer()Z
.end method

.method public abstract getLeaderId()I
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getNicknameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPlaySeconds()I
.end method

.method public abstract getPlayTimestamp()J
.end method

.method public abstract getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;
.end method

.method public abstract getPlayerListCount()I
.end method

.method public abstract getPlayerListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
.end method

.method public abstract getRoomCategoryValue()I
.end method

.method public abstract getRoomId()I
.end method

.method public abstract getSeatsNumber()I
.end method

.method public abstract getSitDownloadNumber()I
.end method

.method public abstract getSpectatorNumber()I
.end method

.method public abstract getState()Lcom/papa91/battle/protocol/RoomState;
.end method

.method public abstract getStateValue()I
.end method

.method public abstract getTitle()Lcom/papa91/battle/protocol/BattleTitle;
.end method

.method public abstract getVip()Z
.end method

.method public abstract hasTitle()Z
.end method
