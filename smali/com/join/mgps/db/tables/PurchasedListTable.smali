.class public Lcom/join/mgps/db/tables/PurchasedListTable;
.super Ljava/lang/Object;
.source "PurchasedListTable.java"


# instance fields
.field private appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "appbeanmain"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_app_key:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private pay_game_amount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/AppBean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->crc_sign_id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->down_status:I

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_id:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->pay_game_amount:I

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getGame_app_key()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_app_key:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAppBeanMainTable()Lcom/join/mgps/db/tables/AppBeanMainTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->down_status:I

    return v0
.end method

.method public getGame_app_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->id:I

    return v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->pay_game_amount:I

    return v0
.end method

.method public setAppBeanMainTable(Lcom/join/mgps/db/tables/AppBeanMainTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->down_status:I

    return-void
.end method

.method public setGame_app_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_app_key:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->id:I

    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/PurchasedListTable;->pay_game_amount:I

    return-void
.end method
