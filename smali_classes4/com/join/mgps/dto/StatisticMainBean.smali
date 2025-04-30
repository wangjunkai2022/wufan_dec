.class public Lcom/join/mgps/dto/StatisticMainBean;
.super Ljava/lang/Object;
.source "StatisticMainBean.java"


# instance fields
.field private val:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StatisticMainBean;->val:Ljava/lang/String;

    return-object v0
.end method

.method public setVal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StatisticMainBean;->val:Ljava/lang/String;

    return-void
.end method
