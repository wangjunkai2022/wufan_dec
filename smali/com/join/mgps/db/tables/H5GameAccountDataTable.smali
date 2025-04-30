.class public Lcom/join/mgps/db/tables/H5GameAccountDataTable;
.super Ljava/lang/Object;
.source "H5GameAccountDataTable.java"


# instance fields
.field private account_data:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private appkey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
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
.method public getAccount_data()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->account_data:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->id:I

    return v0
.end method

.method public setAccount_data(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->account_data:Ljava/lang/String;

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;->id:I

    return-void
.end method
