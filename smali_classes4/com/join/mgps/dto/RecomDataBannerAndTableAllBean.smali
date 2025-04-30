.class public Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;
.super Ljava/lang/Object;
.source "RecomDataBannerAndTableAllBean.java"


# instance fields
.field private code:I

.field private flag:I

.field private messages:Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;

.field private requesttype:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->flag:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->code:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->version:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->requesttype:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->code:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->flag:I

    return v0
.end method

.method public getMessages()Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->code:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->flag:I

    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->messages:Lcom/join/mgps/dto/RecomDataMessageBannerAndTableBean;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTableAllBean;->version:Ljava/lang/String;

    return-void
.end method
