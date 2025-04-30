.class public Lcom/join/mgps/dto/FavoritesCenterData;
.super Ljava/lang/Object;
.source "FavoritesCenterData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;
    }
.end annotation


# instance fields
.field private book_group_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private create_group_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private member_info:Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook_group_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData;->book_group_list:Ljava/util/List;

    return-object v0
.end method

.method public getCreate_group_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData;->create_group_list:Ljava/util/List;

    return-object v0
.end method

.method public getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FavoritesCenterData;->member_info:Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    return-object v0
.end method

.method public setBook_group_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData;->book_group_list:Ljava/util/List;

    return-void
.end method

.method public setCreate_group_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData;->create_group_list:Ljava/util/List;

    return-void
.end method

.method public setMember_info(Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FavoritesCenterData;->member_info:Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    return-void
.end method
