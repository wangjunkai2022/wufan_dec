.class Lcom/join/mgps/customview/GameTransferHistoryListItem$a;
.super Ljava/lang/Object;
.source "GameTransferHistoryListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GameTransferHistoryListItem;->b(Lcom/join/mgps/dto/GameTransferBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/GameTransferHistoryListItem;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GameTransferHistoryListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->a:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->a:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    iget-object v0, p1, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/join/mgps/dto/GameTransferBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->a:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
