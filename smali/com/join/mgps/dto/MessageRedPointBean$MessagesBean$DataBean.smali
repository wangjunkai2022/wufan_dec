.class public Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;
.super Ljava/lang/Object;
.source "MessageRedPointBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private community_praise_surplus_number:I

.field private community_surplus_number:I

.field private notice_surplus_number:I

.field private praise_surplus_number:I

.field private replay_surplus_number:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommunity_praise_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->community_praise_surplus_number:I

    return v0
.end method

.method public getCommunity_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->community_surplus_number:I

    return v0
.end method

.method public getNotice_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->notice_surplus_number:I

    return v0
.end method

.method public getPraise_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->praise_surplus_number:I

    return v0
.end method

.method public getReplay_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->replay_surplus_number:I

    return v0
.end method

.method public setCommunity_praise_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->community_praise_surplus_number:I

    return-void
.end method

.method public setCommunity_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->community_surplus_number:I

    return-void
.end method

.method public setNotice_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->notice_surplus_number:I

    return-void
.end method

.method public setPraise_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->praise_surplus_number:I

    return-void
.end method

.method public setReplay_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->replay_surplus_number:I

    return-void
.end method
