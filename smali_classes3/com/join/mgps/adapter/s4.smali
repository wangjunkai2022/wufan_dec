.class public final synthetic Lcom/join/mgps/adapter/s4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$i;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/t4;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/s4;->a:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/s4;->a:Lcom/join/mgps/adapter/t4;

    iget-object v1, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/mgps/adapter/t4;->b(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
