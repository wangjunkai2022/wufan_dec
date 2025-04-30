.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/GameDetialStrategyItem;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/GameDetialStrategyItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->b:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/GameDetialStrategyItem;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->b:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->b:Z

    return-void
.end method
