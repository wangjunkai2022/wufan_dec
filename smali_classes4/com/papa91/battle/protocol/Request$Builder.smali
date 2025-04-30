.class public final Lcom/papa91/battle/protocol/Request$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Request.java"

# interfaces
.implements Lcom/papa91/battle/protocol/RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Request;",
        "Lcom/papa91/battle/protocol/Request$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/RequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->access$000()Lcom/papa91/battle/protocol/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Request$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccount()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request;->access$1500(Lcom/papa91/battle/protocol/Request;)V

    return-object p0
.end method

.method public clearParams()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request;->access$1100(Lcom/papa91/battle/protocol/Request;)V

    return-object p0
.end method

.method public clearRequestId()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request;->access$700(Lcom/papa91/battle/protocol/Request;)V

    return-object p0
.end method

.method public clearType()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request;->access$500(Lcom/papa91/battle/protocol/Request;)V

    return-object p0
.end method

.method public clearVersion()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request;->access$200(Lcom/papa91/battle/protocol/Request;)V

    return-object p0
.end method

.method public getAccount()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getAccount()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getParams()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getType()Lcom/papa91/battle/protocol/Request$ProtoType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->hasAccount()Z

    move-result v0

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeAccount(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$1400(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public mergeParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$1000(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public setAccount(Lcom/papa91/battle/protocol/Account$Builder;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$1300(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account$Builder;)V

    return-object p0
.end method

.method public setAccount(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$1200(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account;)V

    return-object p0
.end method

.method public setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$900(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params$Builder;)V

    return-object p0
.end method

.method public setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$800(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Request;->access$600(Lcom/papa91/battle/protocol/Request;J)V

    return-object p0
.end method

.method public setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$400(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Request$ProtoType;)V

    return-object p0
.end method

.method public setTypeValue(I)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$300(Lcom/papa91/battle/protocol/Request;I)V

    return-object p0
.end method

.method public setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Request;->access$100(Lcom/papa91/battle/protocol/Request;I)V

    return-object p0
.end method
