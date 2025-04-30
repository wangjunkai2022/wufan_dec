.class public final Lcom/wufan/friend/chat/protocol/z$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FriendDeleteSuccessNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/z;",
        "Lcom/wufan/friend/chat/protocol/z$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/a0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/z;->S2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/z$b;-><init>()V

    return-void
.end method


# virtual methods
.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/z;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/z;->E()I

    move-result v0

    return v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/z$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/z;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/z;->U2(Lcom/wufan/friend/chat/protocol/z;)V

    return-object p0
.end method

.method public T2(I)Lcom/wufan/friend/chat/protocol/z$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/z;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/z;->T2(Lcom/wufan/friend/chat/protocol/z;I)V

    return-object p0
.end method
