.class public Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;
.super Ljava/lang/Object;
.source "PaiWeiDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/PaiWeiDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonthBestBean"
.end annotation


# instance fields
.field private cost_coin:Ljava/lang/String;

.field private rank:I

.field private role:Ljava/lang/String;

.field private use_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCost_coin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->cost_coin:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->rank:I

    return v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->use_time:Ljava/lang/String;

    return-object v0
.end method

.method public setCost_coin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->cost_coin:Ljava/lang/String;

    return-void
.end method

.method public setRank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->rank:I

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->role:Ljava/lang/String;

    return-void
.end method

.method public setUse_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;->use_time:Ljava/lang/String;

    return-void
.end method
