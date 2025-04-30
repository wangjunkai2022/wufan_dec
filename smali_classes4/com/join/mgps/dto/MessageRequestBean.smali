.class public Lcom/join/mgps/dto/MessageRequestBean;
.super Ljava/lang/Object;
.source "MessageRequestBean.java"


# static fields
.field public static IS_GLOBAL:I = 0x1

.field public static IS_NOT_GLOBAL:I = 0x0

.field public static SLIDE_DOWN:Ljava/lang/String; = "down"

.field public static SLIDE_UP:Ljava/lang/String; = "up"


# instance fields
.field private game_id:J

.field private is_global:I

.field private message_id:J

.field private slide:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlideDown()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/MessageRequestBean;->SLIDE_DOWN:Ljava/lang/String;

    return-object v0
.end method

.method public static getSlideUp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/MessageRequestBean;->SLIDE_UP:Ljava/lang/String;

    return-object v0
.end method

.method public static setSlideDown(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/dto/MessageRequestBean;->SLIDE_DOWN:Ljava/lang/String;

    return-void
.end method

.method public static setSlideUp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/dto/MessageRequestBean;->SLIDE_UP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->game_id:J

    return-wide v0
.end method

.method public getIs_global()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->is_global:I

    return v0
.end method

.method public getMessage_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->message_id:J

    return-wide v0
.end method

.method public getParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/join/mgps/dto/MessageRequestBean;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/MessageRequestBean;->is_global:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_global"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/dto/MessageRequestBean;->game_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "game_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/dto/MessageRequestBean;->message_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/MessageRequestBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Lcom/join/mgps/dto/MessageRequestBean;->SLIDE_DOWN:Ljava/lang/String;

    const-string v2, "slide"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSlide()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->slide:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageRequestBean;->uid:J

    return-wide v0
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->game_id:J

    return-void
.end method

.method public setIs_global(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->is_global:I

    return-void
.end method

.method public setMessage_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->message_id:J

    return-void
.end method

.method public setSlide(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->slide:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageRequestBean;->uid:J

    return-void
.end method
