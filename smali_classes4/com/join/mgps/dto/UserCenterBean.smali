.class public Lcom/join/mgps/dto/UserCenterBean;
.super Ljava/lang/Object;
.source "UserCenterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;,
        Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;
    }
.end annotation


# instance fields
.field private detail_entrance:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

.field private first_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private join_member:Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

.field private member_func:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private module_entrance_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private second_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private third_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail_entrance()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->detail_entrance:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    return-object v0
.end method

.method public getFirst_group()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->first_group:Ljava/util/List;

    return-object v0
.end method

.method public getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->join_member:Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    return-object v0
.end method

.method public getMember_func()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->member_func:Ljava/util/List;

    return-object v0
.end method

.method public getModule_entrance_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->module_entrance_list:Ljava/util/List;

    return-object v0
.end method

.method public getSecond_group()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->second_group:Ljava/util/List;

    return-object v0
.end method

.method public getThird_group()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean;->third_group:Ljava/util/List;

    return-object v0
.end method

.method public setDetail_entrance(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->detail_entrance:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    return-void
.end method

.method public setFirst_group(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->first_group:Ljava/util/List;

    return-void
.end method

.method public setJoin_member(Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->join_member:Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    return-void
.end method

.method public setMember_func(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->member_func:Ljava/util/List;

    return-void
.end method

.method public setModule_entrance_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->module_entrance_list:Ljava/util/List;

    return-void
.end method

.method public setSecond_group(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->second_group:Ljava/util/List;

    return-void
.end method

.method public setThird_group(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean;->third_group:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCenterBean{first_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/UserCenterBean;->first_group:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", second_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/UserCenterBean;->second_group:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
