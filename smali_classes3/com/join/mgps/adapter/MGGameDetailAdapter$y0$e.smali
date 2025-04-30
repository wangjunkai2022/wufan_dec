.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->b:J

    .line 3
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->e:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->a:Ljava/lang/String;

    return-void
.end method
