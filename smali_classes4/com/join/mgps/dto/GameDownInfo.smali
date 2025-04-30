.class public Lcom/join/mgps/dto/GameDownInfo;
.super Ljava/lang/Object;
.source "GameDownInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;
    }
.end annotation


# instance fields
.field private down_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;",
            ">;"
        }
    .end annotation
.end field

.field private game_id:Ljava/lang/String;

.field private lv_type:I

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDown_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDownInfo;->down_url:Ljava/util/List;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDownInfo;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLv_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDownInfo;->lv_type:I

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDownInfo;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDownInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDown_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDownInfo;->down_url:Ljava/util/List;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDownInfo;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setLv_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDownInfo;->lv_type:I

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDownInfo;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDownInfo;->title:Ljava/lang/String;

    return-void
.end method
