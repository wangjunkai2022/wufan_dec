.class public Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;
.super Ljava/lang/Object;
.source "HomeGameCarefullyRequestArgs.java"


# instance fields
.field private first:I

.field private game_id:Ljava/lang/String;

.field private pn:I


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
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->pn:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->first:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->game_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirst()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->first:I

    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->pn:I

    return v0
.end method

.method public setFirst(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->first:I

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;->pn:I

    return-void
.end method
