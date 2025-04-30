.class public Lcom/join/mgps/dto/RequestKeywordArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestKeywordArgs.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field lang_id:I

.field private pc:I

.field plugin_num:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->keyword:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pn:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->keyword:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pn:I

    .line 9
    iput p3, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pc:I

    .line 10
    iput p4, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->plugin_num:I

    .line 11
    iput p5, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->lang_id:I

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLang_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->lang_id:I

    return v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pc:I

    return v0
.end method

.method public getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->plugin_num:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pn:I

    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLang_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->lang_id:I

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pc:I

    return-void
.end method

.method public setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->plugin_num:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestKeywordArgs;->pn:I

    return-void
.end method
