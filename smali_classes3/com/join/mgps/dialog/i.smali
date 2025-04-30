.class public final synthetic Lcom/join/mgps/dialog/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dialog/j;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dialog/j;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/i;->a:Lcom/join/mgps/dialog/j;

    iput-object p2, p0, Lcom/join/mgps/dialog/i;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/join/mgps/dialog/i;->a:Lcom/join/mgps/dialog/j;

    iget-object v1, p0, Lcom/join/mgps/dialog/i;->b:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/join/mgps/dialog/j;->b(Lcom/join/mgps/dialog/j;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
