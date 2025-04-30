.class public Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;
.super Ljava/lang/Object;
.source "GamePaiWeiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;->a:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    return-void
.end method
