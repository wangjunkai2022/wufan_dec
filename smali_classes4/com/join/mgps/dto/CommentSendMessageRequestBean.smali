.class public Lcom/join/mgps/dto/CommentSendMessageRequestBean;
.super Ljava/lang/Object;
.source "CommentSendMessageRequestBean.java"


# instance fields
.field private content:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private is_reply:I

.field private member_id:I

.field private member_name:Ljava/lang/String;

.field private mobile_model:Ljava/lang/String;

.field private score:F

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->game_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->content:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->score:F

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->member_id:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->member_name:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->token:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->mobile_model:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->ip_address:Ljava/lang/String;

    .line 11
    iput p9, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->is_reply:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSendMessageRequestBean;->token:Ljava/lang/String;

    return-void
.end method
