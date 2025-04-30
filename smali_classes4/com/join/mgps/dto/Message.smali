.class public Lcom/join/mgps/dto/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private is_success:Z

.field private msg_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MessageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Message;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MessageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Message;->msg_info:Ljava/util/List;

    return-object v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/Message;->is_success:Z

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Message;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/Message;->is_success:Z

    return-void
.end method

.method public setMsg_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Message;->msg_info:Ljava/util/List;

    return-void
.end method
