.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->b:Ljava/util/List;

    return-void
.end method
