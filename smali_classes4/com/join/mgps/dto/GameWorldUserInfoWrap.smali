.class public Lcom/join/mgps/dto/GameWorldUserInfoWrap;
.super Ljava/lang/Object;
.source "GameWorldUserInfoWrap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private user_info:Lcom/join/mgps/dto/GameWorldUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser_info()Lcom/join/mgps/dto/GameWorldUserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfoWrap;->user_info:Lcom/join/mgps/dto/GameWorldUserInfo;

    return-object v0
.end method

.method public setUser_info(Lcom/join/mgps/dto/GameWorldUserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfoWrap;->user_info:Lcom/join/mgps/dto/GameWorldUserInfo;

    return-void
.end method
