.class public final Lcom/papa91/battle/protocol/Notification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"

# interfaces
.implements Lcom/papa91/battle/protocol/NotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Notification;",
        "Lcom/papa91/battle/protocol/Notification$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/NotificationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->access$000()Lcom/papa91/battle/protocol/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Notification$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Notification$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearJumpJSON()Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Notification;->access$500(Lcom/papa91/battle/protocol/Notification;)V

    return-object p0
.end method

.method public clearMessage()Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Notification;->access$200(Lcom/papa91/battle/protocol/Notification;)V

    return-object p0
.end method

.method public getJumpJSON()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Notification;->getJumpJSON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJumpJSONBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Notification;->getJumpJSONBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Notification;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Notification;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setJumpJSON(Ljava/lang/String;)Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Notification;->access$400(Lcom/papa91/battle/protocol/Notification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJumpJSONBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Notification;->access$600(Lcom/papa91/battle/protocol/Notification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Notification;->access$100(Lcom/papa91/battle/protocol/Notification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Notification;->access$300(Lcom/papa91/battle/protocol/Notification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
