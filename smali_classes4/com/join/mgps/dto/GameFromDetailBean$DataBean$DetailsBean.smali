.class public Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;
.super Ljava/lang/Object;
.source "GameFromDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromDetailBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsBean"
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private book_count:Ljava/lang/String;

.field private book_state:Ljava/lang/String;

.field private game_count:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_self:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private portrait:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tv_btn:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->tv_btn:I

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getBook_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->book_count:Ljava/lang/String;

    return-object v0
.end method

.method public getBook_state()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->book_state:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_self()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->is_self:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTv_btn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->tv_btn:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->uid:I

    return v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setBook_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->book_count:Ljava/lang/String;

    return-void
.end method

.method public setBook_state(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->book_state:Ljava/lang/String;

    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_self(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->is_self:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setPortrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->portrait:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTv_btn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->tv_btn:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$DetailsBean;->uid:I

    return-void
.end method
