.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->c:Ljava/util/ArrayList;

    .line 5
    iput p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->d:I

    .line 6
    iput p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->e:I

    .line 7
    iput-object p6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->j:I

    .line 10
    iput p9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->k:I

    .line 11
    iput-object p10, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    .line 13
    iput p12, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    return-void
.end method
