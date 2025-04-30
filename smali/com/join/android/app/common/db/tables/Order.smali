.class public Lcom/join/android/app/common/db/tables/Order;
.super Ljava/lang/Object;
.source "Order.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "t_order"
.end annotation


# instance fields
.field private account:Lcom/join/android/app/common/db/tables/Account;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "account_id"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field public date:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
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


# virtual methods
.method public getAccount()Lcom/join/android/app/common/db/tables/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Order;->account:Lcom/join/android/app/common/db/tables/Account;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Order;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Order;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Order;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Lcom/join/android/app/common/db/tables/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Order;->account:Lcom/join/android/app/common/db/tables/Account;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Order;->date:Ljava/util/Date;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Order;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Order;->name:Ljava/lang/String;

    return-void
.end method
