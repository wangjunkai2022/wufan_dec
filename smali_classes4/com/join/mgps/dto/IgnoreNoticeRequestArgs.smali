.class public Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;
.super Ljava/lang/Object;
.source "IgnoreNoticeRequestArgs.java"


# instance fields
.field private message_id:I

.field private message_type:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

    return v0
.end method

.method public getMessage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

    return v0
.end method

.method public setMessage_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

    return-void
.end method

.method public setMessage_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

    return-void
.end method
