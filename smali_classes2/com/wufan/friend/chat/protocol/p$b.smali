.class public final Lcom/wufan/friend/chat/protocol/p$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialogNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/p;",
        "Lcom/wufan/friend/chat/protocol/p$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/q;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p;->S2()Lcom/wufan/friend/chat/protocol/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/p$b;-><init>()V

    return-void
.end method
