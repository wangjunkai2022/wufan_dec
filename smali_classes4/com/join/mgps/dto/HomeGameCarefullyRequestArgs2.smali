.class public Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;
.super Ljava/lang/Object;
.source "HomeGameCarefullyRequestArgs2.java"


# instance fields
.field private pn:I

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->uid:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->pn:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->uid:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->pn:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->uid:I

    return v0
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->pn:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;->uid:I

    return-void
.end method
