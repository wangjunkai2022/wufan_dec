.class public Lcom/join/mgps/dto/CollectionBean;
.super Ljava/lang/Object;
.source "CollectionBean.java"


# instance fields
.field private code:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private messages:Lcom/join/mgps/dto/CollectionMessageBean;

.field private requesttype:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionMessageBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->flag:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CollectionBean;->code:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/CollectionBean;->version:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/CollectionBean;->requesttype:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/CollectionBean;->messages:Lcom/join/mgps/dto/CollectionMessageBean;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBean;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Lcom/join/mgps/dto/CollectionMessageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBean;->messages:Lcom/join/mgps/dto/CollectionMessageBean;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->flag:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/CollectionMessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->messages:Lcom/join/mgps/dto/CollectionMessageBean;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBean;->version:Ljava/lang/String;

    return-void
.end method
