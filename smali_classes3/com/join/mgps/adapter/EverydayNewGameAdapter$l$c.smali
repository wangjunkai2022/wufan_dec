.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;
.super Ljava/lang/Object;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;->b:Ljava/util/List;

    return-void
.end method
