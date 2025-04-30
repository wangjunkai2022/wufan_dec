.class public Lcom/join/mgps/dto/PaOpenBean;
.super Ljava/lang/Object;
.source "PaOpenBean.java"


# instance fields
.field private paOpenuid:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/PaOpenBean;->paOpenuid:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PaOpenBean;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPaOpenuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaOpenBean;->paOpenuid:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaOpenBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setPaOpenuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaOpenBean;->paOpenuid:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaOpenBean;->token:Ljava/lang/String;

    return-void
.end method
