.class public Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfilePostUserInfoBean"
.end annotation


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private is_sign:Z

.field private nickname:Ljava/lang/String;

.field private papa_money:I

.field private uid:I

.field private unread_message:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->papa_money:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->uid:I

    return v0
.end method

.method public getUnread_message()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->unread_message:I

    return v0
.end method

.method public is_sign()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->is_sign:Z

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setIs_sign(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->is_sign:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPapa_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->papa_money:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->uid:I

    return-void
.end method

.method public setUnread_message(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->unread_message:I

    return-void
.end method
