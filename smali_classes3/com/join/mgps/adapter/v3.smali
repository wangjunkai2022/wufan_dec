.class public final synthetic Lcom/join/mgps/adapter/v3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$g;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/h4;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/v3;->a:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/v3;->b:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/adapter/v3;->c:I

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/join/mgps/adapter/v3;->a:Lcom/join/mgps/adapter/h4;

    iget-object v1, p0, Lcom/join/mgps/adapter/v3;->b:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/adapter/v3;->c:I

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/adapter/h4;->l(Lcom/join/mgps/adapter/h4;Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
