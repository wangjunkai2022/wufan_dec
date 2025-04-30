.class public final Lcom/wufan/friend/chat/protocol/h1$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PopWindowNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/i1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/h1;",
        "Lcom/wufan/friend/chat/protocol/h1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/i1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/h1;->S2()Lcom/wufan/friend/chat/protocol/h1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/h1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/h1$b;-><init>()V

    return-void
.end method
