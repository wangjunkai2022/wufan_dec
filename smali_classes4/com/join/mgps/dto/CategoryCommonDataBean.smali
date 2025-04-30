.class public Lcom/join/mgps/dto/CategoryCommonDataBean;
.super Ljava/lang/Object;
.source "CategoryCommonDataBean.java"


# instance fields
.field private game_count:Ljava/lang/String;

.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->tpl_type:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->game_count:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->info:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->info:Ljava/util/List;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->info:Ljava/util/List;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CategoryCommonDataBean;->tpl_type:Ljava/lang/String;

    return-void
.end method
