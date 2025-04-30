.class public Lcom/join/mgps/dto/GameinterestingBean;
.super Ljava/lang/Object;
.source "GameinterestingBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;
    }
.end annotation


# instance fields
.field private bottom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private dynamic_module_tpl_type:I

.field private jump_type:Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;

.field private middle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private more:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private top:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
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

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->top:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameinterestingBean;->middle:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameinterestingBean;->bottom:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GameinterestingBean;->more:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBottom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->bottom:Ljava/util/List;

    return-object v0
.end method

.method public getDynamic_module_tpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->dynamic_module_tpl_type:I

    return v0
.end method

.method public getJump_type()Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->jump_type:Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;

    return-object v0
.end method

.method public getMiddle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->middle:Ljava/util/List;

    return-object v0
.end method

.method public getMore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->more:Ljava/util/List;

    return-object v0
.end method

.method public getTop()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameinterestingBean;->top:Ljava/util/List;

    return-object v0
.end method

.method public setBottom(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->bottom:Ljava/util/List;

    return-void
.end method

.method public setDynamic_module_tpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->dynamic_module_tpl_type:I

    return-void
.end method

.method public setJump_type(Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->jump_type:Lcom/join/mgps/dto/GameinterestingBean$ClassfyNewTag;

    return-void
.end method

.method public setMiddle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->middle:Ljava/util/List;

    return-void
.end method

.method public setMore(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->more:Ljava/util/List;

    return-void
.end method

.method public setTop(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameinterestingBean;->top:Ljava/util/List;

    return-void
.end method
