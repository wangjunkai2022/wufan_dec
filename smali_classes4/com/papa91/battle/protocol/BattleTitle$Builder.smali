.class public final Lcom/papa91/battle/protocol/BattleTitle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BattleTitle.java"

# interfaces
.implements Lcom/papa91/battle/protocol/BattleTitleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/BattleTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/BattleTitle;",
        "Lcom/papa91/battle/protocol/BattleTitle$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/BattleTitleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->access$000()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/BattleTitle$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/BattleTitle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBackgroudColor()Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->access$500(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public clearTitle()Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->access$200(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public getBackgroudColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->getBackgroudColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroudColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->getBackgroudColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroudColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle;->access$400(Lcom/papa91/battle/protocol/BattleTitle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroudColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle;->access$600(Lcom/papa91/battle/protocol/BattleTitle;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle;->access$100(Lcom/papa91/battle/protocol/BattleTitle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle;->access$300(Lcom/papa91/battle/protocol/BattleTitle;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
