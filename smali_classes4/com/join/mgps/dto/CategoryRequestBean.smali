.class public Lcom/join/mgps/dto/CategoryRequestBean;
.super Ljava/lang/Object;
.source "CategoryRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private deviceid:Ljava/lang/String;

.field private messages:Lcom/join/mgps/dto/CategoryRequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/CategoryRequestMessage<",
            "TE;>;"
        }
    .end annotation
.end field

.field private requesttype:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CategoryRequestMessage;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->version:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CategoryRequestBean;->deviceid:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/CategoryRequestBean;->requesttype:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/CategoryRequestBean;->sign:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/CategoryRequestBean;->messages:Lcom/join/mgps/dto/CategoryRequestMessage;

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryRequestBean;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Lcom/join/mgps/dto/CategoryRequestMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryRequestBean;->messages:Lcom/join/mgps/dto/CategoryRequestMessage;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryRequestBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryRequestBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/CategoryRequestMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->messages:Lcom/join/mgps/dto/CategoryRequestMessage;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryRequestBean;->version:Ljava/lang/String;

    return-void
.end method
