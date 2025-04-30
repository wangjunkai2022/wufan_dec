.class Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;
.super Ljava/lang/Object;
.source "GamePaiWeiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

.field final synthetic c:Lcom/join/mgps/adapter/GamePaiWeiAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter;ILcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->c:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->c:Lcom/join/mgps/adapter/GamePaiWeiAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a(Lcom/join/mgps/adapter/GamePaiWeiAdapter;)Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->a:I

    iget-object v1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getVideo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;->a(ILjava/lang/String;)V

    return-void
.end method
