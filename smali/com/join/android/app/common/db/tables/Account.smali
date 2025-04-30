.class public Lcom/join/android/app/common/db/tables/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field orders:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Order;",
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
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Account;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrders()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Order;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Account;->orders:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Account;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Account;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrders(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Order;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Account;->orders:Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method
